function p = parameters

    % defining indices for parameters
    % core circadian clock 
    p.x = 1;
    p.r1 = 2;
    p.r2 = 3;
    p.r3 = 4;
    p.r4 = 5;
    p.d4 = 6; 
    p.beta_bc = 7;
    p.d_bc = 8;

    % secondary-feedback loop
    p.beta = 9;
    p.alpha = 10;
    p.d_s = 11;
    p.r_rev = 12;
    p.d_rev = 13;
    p.r_ror = 14;
    p.d_ror = 15;

    % down-stream influences
    p.b_th = 16;
    p.d_th = 17;
    % R(TH, REV) 
    p.rho_th = 18;
    p.k_th = 19;
    p.epsilon_th = 20;
    p.n_th = 21;
    p.gamma = 22;
    % A(TH,REV,ROR)
    p.alpha_th = 23;
    p.kappa_th = 24;
    p.r_m = 25;
    p.d_m = 26;

    % DA synthesis-clearance 
    p.v_th = 27; % Maximum rate of TH
    p.k_eda = 28; % [eda] at which the feedback inhibition is half-maximal
    p.v_mao = 29; % Maximum rate of MAO
    % V_DAT rate of DA reuptake
    p.v_dat = 30; % Maximum rate of DAT
    p.k_mp = 31; % Inhibiotary constant for MP
    p.k_dat = 32; % Michaelis-Menten constant for DAT
    % MP(t) conentration decay function 
    p.mp0 = 33; % administered concentration of MP
    p.t_d = 34; % time of administration of MP
    p.k_el = 35; % rate of elimination of MP
   
    % default parameter values
    p.val(p.x) = 0.3;   
    p.val(p.r1) = 0.3;
    p.val(p.r2) = 0.5;
    p.val(p.r3) = 0.2;
    p.val(p.r4) = 0.2;
    p.val(p.d4) = 0.2; 
    p.val(p.beta_bc) = 0.5;
    p.val(p.d_bc) = 0.3;

    p.val(p.beta) = 0.5;
    p.val(p.alpha) = 0.5;
    p.val(p.d_s) = 0.5;
    p.val(p.r_rev) = 0.3;
    p.val(p.d_rev) = 0.2;
    p.val(p.r_ror) = 0.3;
    p.val(p.d_ror) = 0.2;

    p.val(p.b_th) = 0;
    p.val(p.d_th) = 5.6;
    p.val(p.rho_th) = 1;
    p.val(p.k_th) = 1;
    p.val(p.epsilon_th) = 0.3;
    p.val(p.n_th) = 1;
    p.val(p.alpha_th) = 3.7;
    p.val(p.kappa_th) = 1;
    p.val(p.r_m) = 3;
    p.val(p.d_m) = 0.02;
    
    p.val(p.v_th) = 34.7; % Maximum rate of TH
    p.val(p.k_eda) = 0.5; % [eda] at which the feedback inhibition is half-maximal
    p.val(p.v_mao) = 25.9; % Maximum rate of MAO
    % V_DAT rate of DA reuptake
    p.val(p.v_dat) = 2222.2; % Maximum rate of DAT
    p.val(p.k_mp) = 0.45; % Inhibitory constant for MP
    p.val(p.k_dat) = 200; % Michaelis-Menten constant for DAT
    % MP(t) conentration decay function 
    p.val(p.mp0) = 0.5; % administered concentration of MP 
    p.val(p.t_d) = 0; % time of administration of MP (ZT)
    p.val(p.k_el) = 0.277; % rate of elimination of MP (hr^-1)

end

