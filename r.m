function r = r(TH, REV, rho_th, k_th, epsilon_th, n_th) 
    %{
    Inputs: 
        TH: Concentration of Tyrosine Hydroxylase
        REV: Concentration of REV-ERB
        rho_th: trength of TH repression as a function of percent TH bound to REV
        k_th: Coefficient in TH repression term as a function of percent TH bound to REV
        epsilon_th: Dissociation constant between TH and REV
        n_th: Exponent in TH repression term as a function of percent TH bound to REV
    %}
   
    r = rho_th / ((1 + k_th * (1 - (f(TH,REV, epsilon_th) / epsilon_th)))^n_th);
end