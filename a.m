function a = a(TH, REV, ROR, alpha_th, epsilon_th, kappa_th)
    %{
    Inputs: 
        TH: Concentration of Tyrosine Hydroxylase
        REV: Concentration of REV-ERB
        ROR: Concentration of ROR
        alpha_th: Strength of activation of free TH (not bound to REV) by ROR
        epsilon_th: Dissociation constant between TH and REV
        kappa_th: Constant TH activation term 
    %}
   
    a = alpha_th * (f(TH, REV, epsilon_th) / TH) * (ROR / (ROR + kappa_th));
end