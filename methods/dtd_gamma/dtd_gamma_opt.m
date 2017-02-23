function opt = dtd_gamma_opt(opt)
% function opt = dtd_gamma_opt(opt)
%
% Makes sure that all needed fields in the options structure are present

opt.dtd_gamma.present = 1;

opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'tmp', 1); 
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'pa_method', 1); 
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'lsq_opts', ...
    optimoptions('lsqcurvefit', 'display', 'off','MaxFunEvals',1e3));
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'do_plot', 0);
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'do_pa', 0);
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'do_weight', 0);
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'do_pa_weight', 1);
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'weight_sthresh', .07);
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'weight_wthresh', 2);
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'weight_mdthresh', 1e-9);
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'fig_maps', ...
    {'s0','iso','mu2iso','mu2aniso','ufa','ciso','cmu','s0', ...
    'MD', 'Vi', 'Va', 'Vt', 'MKi', 'MKa', 'MKt', 'ufa'});
opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'fig_prefix', 'dtd_gamma');

opt.dtd_gamma = msf_ensure_field(opt.dtd_gamma, 'fit_iters', 1);
