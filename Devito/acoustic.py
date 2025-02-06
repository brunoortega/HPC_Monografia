import numpy as np

from devito import TimeFunction, Operator
from examples.seismic import setup_geometry, SeismicModel, plot_velocity, plot_shotrecord, AcquisitionGeometry, Model
from examples.seismic.acoustic import iso_stencil
from examples.seismic.acoustic import AcousticWaveSolver

dim = 512
shape = (dim+1, dim+1)
spacing = (1024/dim,  1024/dim)
origin = (0., 0.)
t0 = 0.
tn = 1500.
vp = 1.5
space_order=20
nbl=40
kernel='OT2'
bcs = 'damp'
dtype = np.float32
fs = False
save = False

# vp = np.empty(shape, dtype=np.float32)
# vp[:,:1+int(shape[0]/2)] = 1.5
# vp[:,1+int(shape[0]/2):] = 2.5


model = SeismicModel(origin=origin, vp=vp, space_order=space_order, shape=shape, nbl=nbl,
                       dtype=dtype, spacing=spacing,
                       fs=fs, bcs=bcs)

geometry = setup_geometry(model, tn)

print(model.critical_dt)

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

