@muladd function step_residual!(resid, t, dt, uprev, u, f, p, tmpvar, integrator, cache::DImplicitEulerConstantCache)
  f(resid,(u - uprev)/dt,u,p,t)
end

@muladd function step_residual!(resid, t, dt, uprev, u, f, p, tmpvar, integrator, cache::DImplicitEulerCache)
  f(resid,(u - uprev)/dt,u,p,t)
end
