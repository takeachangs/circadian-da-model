function light = lightx(t,x)
    %{
    Inputs: 
        t   zeitgeber time
        x	amplitude of light-dark cycle
   
    %}
    
    if mod(t,24) < 12
       light = 1.+x;
    else
       light = 1.-x;
    end
    
    end