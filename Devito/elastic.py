import numpy as np

from devito import VectorTimeFunction, TensorTimeFunction, Eq, grad, diag, div, Operator, solve
from examples.seismic import setup_geometry, SeismicModel
from examples.seismic.elastic import src_rec


dim = 512
shape = (dim+1,  dim+1)
spacing = (1024/dim, 1024/dim)
origin = (0., 0.)
space_order = 4
t0 = 0.
tn = 1000.
vp = 1.5
vs = 0.5 * vp
nbl = 10
b = 1.0
kernel='OT2'
dtype = np.float32
save = False



#demo_model output

model = SeismicModel(space_order=space_order, vp=vp, vs=vs, b=b,
                    origin=origin, shape=shape, dtype=dtype, spacing=spacing,
                    nbl=nbl)



# Source and receiver geometries
geometry = setup_geometry(model, tn)


#elasticwavesolver forward output

# Source term is read-only, so re-use the default
src = geometry.src
# Create a new receiver object to store the result
rec1 = geometry.new_rec(name='rec1')
rec2 = geometry.new_rec(name='rec2')

save_t = src.nt


#op_fwd/forward operator output

v = VectorTimeFunction(name='v', grid=model.grid,
                        save=geometry.nt if save else None,
                        space_order=space_order, time_order=1)
tau = TensorTimeFunction(name='tau', grid=model.grid,
                            save=geometry.nt if save else None,
                            space_order=space_order, time_order=1)

lam, mu, b = model.lam, model.mu, model.b

# Particle velocity
eq_v = v.dt - b * div(tau)
# Stress
e = (grad(v.forward) + grad(v.forward).transpose(inner=False))
eq_tau = tau.dt - lam * diag(div(v.forward)) - mu * e

u_v = Eq(v.forward, model.damp * solve(eq_v, v.forward))
u_t = Eq(tau.forward, model.damp * solve(eq_tau, tau.forward))

srcrec = src_rec(v, tau, model, geometry)
op = Operator([u_v] + [u_t] + srcrec, subs=model.spacing_map, shape=shape, spacing=spacing, nbl=nbl, tn=tn,space_order=space_order, dtype=dtype, name="ForwardElastic", save=save)
#opt=('advanced', {'openmp': True})
fim = op.apply(src=src, rec1=rec1, rec2=rec2, dt=model.critical_dt)
