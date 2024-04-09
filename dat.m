function dat = dat(eda, mpt, k_mp, v_dat, k_dat)

    dat = (v_dat * eda) / (1 + mpt/k_mp) * (k_dat + eda);

end
