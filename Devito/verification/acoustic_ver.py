import numpy as np

from devito import TimeFunction, Operator
from examples.seismic import setup_geometry, SeismicModel, plot_velocity, plot_shotrecord
from examples.seismic.acoustic import iso_stencil

from scipy.special import hankel2
from examples.seismic import Model, RickerSource, Receiver, TimeAxis, AcquisitionGeometry
from devito import set_log_level

import matplotlib.pyplot as plt
from matplotlib import cm


dim = 256
shape = (dim+1,  dim+1)
spacing = (1024.0/dim,  1024.0/dim)
origin = (0., 0., 0.)
t0 = 0.
tn = 1000.
vp = 1.5
space_order=4
nbl=10
kernel='OT2'
preset='constant-isotropic'
bcs = 'damp'
dtype = np.float32
fs = False
save = False

# vp = np.empty(shape, dtype=np.float32)
# vp[:,:128] = 1.5
# vp[:,128:] = 2.5


model = SeismicModel(origin=origin, vp=vp, preset=preset, space_order=space_order, shape=shape, nbl=nbl,
                       dtype=dtype, spacing=spacing,
                       fs=fs, bcs=bcs)

geometry = setup_geometry(model, tn)

m = model.m

# Create symbols for forward wavefield, source and receivers
u = TimeFunction(name='u', grid=model.grid,
                    save=geometry.nt if save else None,
                    time_order=2, space_order=space_order)
src = geometry.src
rec = geometry.rec

s = model.grid.stepping_dim.spacing
eqn = iso_stencil(u, model, kernel)

# Construct expression to inject source values
src_term = src.inject(field=u.forward, expr=src * s**2 / m)

# Create interpolation expression for receivers
rec_term = rec.interpolate(expr=u)

# Substitute spacing terms to reduce flops
op = Operator(eqn + src_term + rec_term, subs=model.spacing_map,
                name='Forward', opt=('advanced', {'openmp': True}))

summary = op.apply(src=src, rec=rec, u=u, dt=model.critical_dt)

# plot_velocity(model=model, source=src.coordinates_data, receiver=rec.coordinates_data)
# plot_shotrecord(rec.data, model, t0, tn)

print('hey')

#timesteps:



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

nt = rec.data.shape[0]
time = np.linspace(t0, tn, nt)
print("t0, tn, dt, nt; %.4f %.4f %.4f %d" % (t0, tn, model.critical_dt, nt))

model1 = ModelBench(vp=vp, origin=origin, spacing=spacing, bcs="damp",
                   shape=shape, space_order=space_order, nbl=nbl, dtype=dtype)


# Source and receiver geometries
src_coordinates = np.empty((1, 2))
src_coordinates[0, :] = (dim/2.)

# Single receiver offset 100 m from source
rec_coordinates = np.empty((1, 2))
rec_coordinates[:, :] = 0.

print("The computational Grid has (%s, %s) grid points "
       "and a physical extent of (%sm, %sm)" % (*model1.grid.shape, *model1.grid.extent))
print("Source is at the center with coordinates (%sm, %sm)" % tuple(src_coordinates[0]))
print("Receiver (single receiver) is located at (%sm, %sm) " %  tuple(rec_coordinates[0]))



f0 = 0.01

sx, sz = src_coordinates[0, :]
rx, rz = rec_coordinates[0, :]

def ricker(f, T, dt, t0):
    t = np.linspace(-t0, T-t0, int(T/dt))
    tt = (np.pi**2) * (f**2) * (t**2)
    y = (1.0 - 2.0 * tt) * np.exp(- tt)
    return y

def analytical(nt, model1, time, **kwargs):
    dt = kwargs.get('dt', model1.critical_dt)
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
        k = 2 * np.pi * faxis[a] / vp
        tmp = k * np.sqrt(((rx - sx))**2 + ((rz - sz))**2)
        U_a[a] = -1j * np.pi * hankel2(0.0, tmp) * R[a]

    # Do inverse fft on 0:dt:T and you have analytical solution
    U_t = 1.0/(2.0 * np.pi) * np.real(np.fft.ifft(U_a[:], nt))
    
    # The analytic solution needs be scaled by dx^2 to convert to pressure
    return np.real(U_t) * (model.spacing[0]**2)

tsteps = rec.shape[0]

nt = int(tsteps*20)+1

time1 = np.linspace(0.0, (tsteps*2), nt)
U_t = analytical(nt, model1, time1, dt=time1[1] - time1[0])
#U_t = U_t[0:tsteps]

#NBVAL_IGNORE_OUTPUT
print("Numerical data min,max,abs; %+.6e %+.6e %+.6e" % 
      (np.min(rec.data), np.max(rec.data), np.max(np.abs(rec.data)) ))
print("Analytic  data min,max,abs; %+.6e %+.6e %+.6e" % 
      (np.min(U_t), np.max(U_t), (np.max(np.abs(U_t)))))


#NBVAL_IGNORE_OUTPUT
# Plot wavefield and source/rec position
plt.figure(figsize=(8,8))
amax = np.max(np.abs(u.data[1,:,:]))
plt.imshow(u.data[1,:,:], vmin=-1.0 * amax, vmax=+1.0 * amax, cmap="seismic")
plt.plot(2*sx+40, 2*sz+40, 'r*', markersize=11, label='source')   # plot position of the source in model, add nbl for correct position
plt.plot(2*rx+40, 2*rz+40, 'k^', markersize=8, label='receiver')  # plot position of the receiver in model, add nbl for correct position
plt.legend()
plt.xlabel('x position (m)')
plt.ylabel('z position (m)')
plt.savefig('wavefieldperf.pdf')


# plt.figure(figsize=(12,8))
# plt.subplot(2,1,1)
# plt.plot(time, rec.data[:, 0], '-b', label='numerical')
# plt.plot(time, U_t[:], '--r', label='analytical')
# plt.xlim([0,1000])
# plt.ylim([-0.1, 0.1])
# #plt.ylim([1.15*np.min(U_t[:]), 1.15*np.max(U_t[:])])
# plt.xlabel('time (ms)')
# plt.ylabel('amplitude')
# plt.legend()
# plt.subplot(2,1,2)
# plt.plot(time, 100 *(rec.data[:, 0] - U_t[:]), '-b', label='difference x100')
# plt.xlim([0,1000])
# plt.ylim([-10, 10])
# #plt.ylim([1.15*np.min(U_t[:]), 1.15*np.max(U_t[:])])
# plt.xlabel('time (ms)')
# plt.ylabel('amplitude x100')
# plt.legend()
# plt.savefig('ref.pdf')
# plt.show()


plt.figure(figsize=(12,8))
plt.plot(time1, U_t[:], '--r')
plt.show()