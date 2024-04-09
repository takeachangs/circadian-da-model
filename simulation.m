clear all;

p = parameters;
v = var_indices;

init_y = [ones(1,10), 0]; 
ode_opt = {'RelTol',1e-3,'AbsTol',1e-3};
tspan = [0 24*5];
[~,Y] = model(tspan,init_y,p,v,ode_opt);

init_y = Y(end,:);
tspan = [0 24];
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

figure; % Create a new figure window

% Plot TH concentration against time
plot(T, th, '-b', 'LineWidth', 2);
hold on; % Hold on to plot multiple lines on the same graph

% Plot MAO concentration against time
plot(T, mao, '-r', 'LineWidth', 2);

% Plot EDA concentration against time
plot(T, eda, '-g', 'LineWidth', 2);

xlabel('Time (hours)'); 
ylabel('Concentration'); 
title('Concentration of TH, MAO, and EDA over 24 Hours'); 
legend({'TH', 'MAO', 'EDA'}, 'Location', 'best'); 
grid on; % Add a grid for better readability

hold off; % Release the plot hold
