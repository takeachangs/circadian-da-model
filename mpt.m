function mpt = mpt(t, mp0, k_el, t_d)
    if t >= t_d
        mpt = mp0 * exp(-k_el * (t - t_d));
    else
        mpt = 0;
    end
end
