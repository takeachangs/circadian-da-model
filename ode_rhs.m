function dy = ode_rhs(t,y,p,v)

dy = zeros(11,1);

% parameters 
% core circadian clock 
x = p.val(p.x);
r1 = p.val(p.r1);
r2 = p.val(p.r2);
r3 = p.val(p.r3);
r4 = p.val(p.r4);
d4 = p.val(p.d4); 
beta_bc = p.val(p.beta_bc);
d_bc = p.val(p.d_bc);

% secondary-feedback loop
beta = p.val(p.beta);
alpha = p.val(p.alpha);
d_s = p.val(p.d_s);
r_rev = p.val(p.r_rev);
d_rev = p.val(p.d_rev);
r_ror = p.val(p.r_ror);
d_ror = p.val(p.d_ror);

% down-stream influences
b_th = p.val(p.b_th);
d_th = p.val(p.d_th);
% R(TH, REV) 
rho_th = p.val(p.rho_th);
k_th = p.val(p.k_th);
epsilon_th = p.val(p.epsilon_th);
n_th = p.val(p.n_th);
gamma = p.val(p.gamma);
% A(TH,REV,ROR)
alpha_th = p.val(p.alpha_th);
kappa_th = p.val(p.kappa_th);
r_m = p.val(p.r_m);
d_m = p.val(p.d_m);

% DA synthesis-clearance 
v_th = p.val(p.v_th);
k_eda = p.val(p.k_eda);
v_mao = p.val(p.v_mao);
% V_DAT rate of DA reuptake
v_dat = p.val(p.v_dat);
k_mp = p.val(p.k_mp);
k_dat = p.val(p.k_dat);
% MP(t) concentration decay function
mp0 = p.val(p.mp0);
t_d = p.val(p.t_d);
k_el = p.val(p.k_el);


% variables
p1 = y(v.p1);
p2 = y(v.p2);
p3 = y(v.p3);
p4 = y(v.p4);
s = y(v.s);
rev = y(v.rev);
ror = y(v.ror);
bc = y(v.bc);
th = y(v.th);
mao = y(v.mao);
eda = y(v.eda);

% equations
L = lightx(t,x);
vdat = dat(eda, mpt(t,mp0,k_el, t_d), k_mp, v_dat, k_dat);
dy(v.p1) = r1*L*f0(bc,p4) - r2*p1;
dy(v.p2) = r2*p1 - r3*p2;
dy(v.p3) = r3*p2 - r4*p3;
dy(v.p4) = r4*p3 - d4*p4;
dy(v.bc) = beta_bc*s - d_bc*bc;
dy(v.s) = beta + alpha*f0(s,rev)*ror - d_s*s;
dy(v.rev) = r_rev*f0(bc,p4) - d_rev*rev;
dy(v.ror) = r_ror*f0(bc,p4) - d_ror*ror;
dy(v.th) = b_th + r(th, rev, rho_th, k_th, epsilon_th, n_th) + a(th,rev,ror,alpha_th,epsilon_th,kappa_th)- d_th*th - gamma*(eda / (eda + k_eda))*th;
dy(v.mao) = r_m*f0(bc,p4) - d_m*mao;
dy(v.eda) = v_th*th - v_mao*mao - vdat;  
    
end

