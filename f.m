function f = f(P,I,D)
    %{
    Protein sequestration
    Inputs: 
        P  protein
        I  inhibitor
        D  dissociation constant
    Output:
        f  available protein
    %}

    f = 1/2 * (P - I - D + sqrt((P - I - D)^2 - 4*D*P));
    
end    
