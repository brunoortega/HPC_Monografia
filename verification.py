import numpy as np
from scipy.special import hankel2
from examples.seismic.acoustic import AcousticWaveSolver
from examples.seismic import Model, RickerSource, Receiver, TimeAxis, AcquisitionGeometry
from devito import set_log_level

import matplotlib.pyplot as plt
from matplotlib import cm


from devito import configuration
configuration['log-level'] = 'ERROR'

# Model with fixed time step value
class ModelBench(Model):
    """
    Physical model used for accuracy benchmarking.
    The critical dt is made small enough to ignore
    time discretization errors
    """

    @property
    def critical_dt(self):
        """Critical computational time step value."""
        return .1

# Number of time steps
nt = 1501
# Time axis
dt = 0.1
t0 = 0.
tn = dt * (nt-1)
time = np.linspace(t0, tn, nt)
print("t0, tn, dt, nt; %.4f %.4f %.4f %d" % (t0, tn, dt, nt))

# Source peak frequency in KHz
f0 = .09

# Fine grid model
c0 = 1.5
model = ModelBench(vp=vp, origin=(0., 0.), spacing=spacing, bcs="damp",
                   shape=shape, space_order=space_order, nbl=nbl, dtype=dtype)

# Source and receiver geometries
src_coordinates = np.empty((1, 2))
src_coordinates[0, :] = 200.

# Single receiver offset 100 m from source
rec_coordinates = np.empty((1, 2))
rec_coordinates[:, :] = 260.

print("The computational Grid has (%s, %s) grid points "
       "and a physical extent of (%sm, %sm)" % (*model.grid.shape, *model.grid.extent))
print("Source is at the center with coordinates (%sm, %sm)" % tuple(src_coordinates[0]))
print("Receiver (single receiver) is located at (%sm, %sm) " %  tuple(rec_coordinates[0]))
    
# Note: gets time sampling from model.critical_dt
geometry = AcquisitionGeometry(model, rec_coordinates, src_coordinates, 
                               t0=t0, tn=tn, src_type='Ricker', f0=f0, t0w=1.5/f0)

solver = AcousticWaveSolver(model, geometry, kernel='OT2', space_order=8)
ref_rec, ref_u, _ = solver.forward()

# Source and receiver coordinates
sx, sz = src_coordinates[0, :]
rx, rz = rec_coordinates[0, :]

# Define a Ricker wavelet shifted to zero lag for the Fourier transform
def ricker(f, T, dt, t0):
    t = np.linspace(-t0, T-t0, int(T/dt))
    tt = (np.pi**2) * (f**2) * (t**2)
    y = (1.0 - 2.0 * tt) * np.exp(- tt)
    return y

def analytical(nt, model, time, **kwargs):
    dt = kwargs.get('dt', model.critical_dt)
    # Fourier constants
    nf = int(nt/2 + 1)
    fnyq = 1. / (2 * dt)
    df = 1.0 / time[-1]
    faxis = df * np.arange(nf)

    wavelet = ricker(f0, time[-1], dt, 1.5/f0)

    # Take the Fourier transform of the source time-function
    R = np.fft.fft(wavelet)
    R = R[0:nf]
    nf = len(R)

    # Compute the Hankel function and multiply by the source spectrum
    U_a = np.zeros((nf), dtype=complex)
    for a in range(1, nf-1):
        k = 2 * np.pi * faxis[a] / c0
        tmp = k * np.sqrt(((rx - sx))**2 + ((rz - sz))**2)
        U_a[a] = -1j * np.pi * hankel2(0.0, tmp) * R[a]

    # Do inverse fft on 0:dt:T and you have analytical solution
    U_t = 1.0/(2.0 * np.pi) * np.real(np.fft.ifft(U_a[:], nt))
    
    # The analytic solution needs be scaled by dx^2 to convert to pressure
    return np.real(U_t) * (model.spacing[0]**2)

time1 = np.linspace(0.0, 3000., 30001)
U_t = analytical(30001, model, time1, dt=time1[1] - time1[0])
U_t = U_t[0:1501]

#NBVAL_IGNORE_OUTPUT
print("Numerical data min,max,abs; %+.6e %+.6e %+.6e" % 
      (np.min(ref_rec.data), np.max(ref_rec.data), np.max(np.abs(ref_rec.data)) ))
print("Analytic  data min,max,abs; %+.6e %+.6e %+.6e" % 
      (np.min(U_t), np.max(U_t), (np.max(np.abs(U_t)))))

#NBVAL_IGNORE_OUTPUT
# Plot wavefield and source/rec position
plt.figure(figsize=(8,8))
amax = np.max(np.abs(ref_u.data[1,:,:]))
plt.imshow(ref_u.data[1,:,:], vmin=-1.0 * amax, vmax=+1.0 * amax, cmap="seismic")
plt.plot(2*sx+40, 2*sz+40, 'r*', markersize=11, label='source')   # plot position of the source in model, add nbl for correct position
plt.plot(2*rx+40, 2*rz+40, 'k^', markersize=8, label='receiver')  # plot position of the receiver in model, add nbl for correct position
plt.legend()
plt.xlabel('x position (m)')
plt.ylabel('z position (m)')
plt.savefig('wavefieldperf.pdf')

# Plot trace
plt.figure(figsize=(12,8))
plt.subplot(2,1,1)
plt.plot(time, ref_rec.data[:, 0], '-b', label='numerical')
plt.plot(time, U_t[:], '--r', label='analytical')
plt.xlim([0,150])
plt.ylim([1.15*np.min(U_t[:]), 1.15*np.max(U_t[:])])
plt.xlabel('time (ms)')
plt.ylabel('amplitude')
plt.legend()
plt.subplot(2,1,2)
plt.plot(time, 100 *(ref_rec.data[:, 0] - U_t[:]), '-b', label='difference x100')
plt.xlim([0,150])
plt.ylim([1.15*np.min(U_t[:]), 1.15*np.max(U_t[:])])
plt.xlabel('time (ms)')
plt.ylabel('amplitude x100')
plt.legend()
plt.savefig('ref.pdf')
plt.show()

#NBVAL_IGNORE_OUTPUT
error_time = np.zeros(5)
error_time[0] = np.linalg.norm(U_t[:-1] - ref_rec.data[:-1, 0], 2) / np.sqrt(nt)
errors_plot = [(time, U_t[:-1] - ref_rec.data[:-1, 0])]
print(error_time[0])


