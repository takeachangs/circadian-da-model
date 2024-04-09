clear all;

p = parameters;
v = var_indices;

init_y = [ones(1,10), 0]; 
ode_opt = {'RelTol',1e-8,'AbsTol',1e-8};
tspan = [0 24*50];
[~,Y] = model(tspan,init_y,p,v,ode_opt);

init_y = Y(end,:);
tspan = [0 24*5];
[T,Y] = model(tspan,init_y,p,v,ode_opt);

% solutions 
p1 = Y(:,v.p1);
p2 = Y(:,v.p2);
p3 = Y(:,v.p3);
p4 = Y(:,v.p4);
bc = Y(:,v.bc);
s = Y(:,v.s);
rev = Y(:,v.rev);
ror = Y(:,v.ror);
th = Y(:,v.th);
mao = Y(:,v.mao);
eda = Y(:,v.eda);


