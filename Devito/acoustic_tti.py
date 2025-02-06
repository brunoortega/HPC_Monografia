import numpy as np
import sympy

from devito import TimeFunction, Operator
from devito.finite_differences import diffify
from examples.seismic import setup_geometry, SeismicModel, plot_velocity, plot_shotrecord
from examples.seismic.tti import kernel_centered

dim = 256
shape = (dim+1, dim+1)
spacing = (1024/dim,  1024/dim)
origin = (0., 0.)
space_order=4
t0 = 0.
tn = 1000.
vp = 1.5
epsilon = .3
delta = .2
theta = 0.7
phi = .35
nbl=10
kernel='OT2'
bcs = 'damp'
dtype = np.float32
fs = False
save = False



model = SeismicModel(space_order=space_order, vp=vp, origin=origin, shape=shape,
                        dtype=dtype, spacing=spacing, nbl=nbl, epsilon=epsilon,
                        delta=delta, theta=theta, phi=phi, bcs="damp",
                        fs=fs)


geometry = setup_geometry(model, tn)

s = model.grid.stepping_dim.spacing

print('hey')


dt = model.grid.time_dim.spacing
m = model.m

# Create symbols for forward wavefield, source and receivers
u = TimeFunction(name='u', grid=model.grid, staggered=None,
                    save=geometry.nt if save else None,
                    time_order=2,
                    space_order=space_order)
v = TimeFunction(name='v', grid=model.grid, staggered=None,
                    save=geometry.nt if save else None,
                    time_order=2,
                    space_order=space_order)
src = geometry.src
rec = geometry.rec

forward = True

def sqrt(x):
    return diffify(sympy.sqrt(x))

delta, epsilon = model.delta, model.epsilon
epsilon = 1 + 2*epsilon
delta = sqrt(1 + 2*delta)

# Get source
qu = 0
qv = 0



# FD kernels of the PDE
stencils = kernel_centered(model, u, v)

# Source and receivers
expr = src * dt**2 / m
stencils += src.inject(field=(u.forward, v.forward), expr=expr)
stencils += rec.interpolate(expr=u + v)

# Construct expression to inject source values
src_term = src.inject(field=u.forward, expr=src * s**2 / m)

# Create interpolation expression for receivers
rec_term = rec.interpolate(expr=u)

# Substitute spacing terms to reduce flops
op = Operator(stencils, subs=model.spacing_map, name='ForwardTTI')

summary = op.apply(src=src, rec=rec, u=u, v=v, dt=model.critical_dt)

# plot_velocity(model=model, source=src.coordinates_data, receiver=rec.coordinates_data)
plot_shotrecord(rec.data, model, t0, tn)
