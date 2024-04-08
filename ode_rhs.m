function dy = ode_rhs(t,y,p,v)
% ODE right-hand side function for the 2D harmonic oscillator

dy = zeros(12,1);

% parameters 
