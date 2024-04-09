function f0 = f0(P,I)
    %{
    Protein sequestration
    Inputs: 
        P  protein
        I  inhibitor
    Output:
        f  available protein
    %}
    
    if P-I>0
        f0 = P-I;
    else
        f0 = 0;
    end
            
    end
