if keyboard_check_pressed(ord("1")) { xp = mouse_x; yp = mouse_y; explode01 = true; }
if keyboard_check_pressed(ord("2")) { xp = mouse_x; yp = mouse_y; explode02 = true; }
if keyboard_check_pressed(ord("3")) { xp = mouse_x; yp = mouse_y; explode03 = true; }
if keyboard_check_pressed(ord("4")) { xp = mouse_x; yp = mouse_y; explode04 = true; }
if keyboard_check_pressed(ord("5")) { xp = mouse_x; yp = mouse_y; explode05 = true; }

if explode01 == true {
	explode01 = false;
	part_emitter_region(ps, pe_Effect4, xp+0, xp+0, yp+0, yp+0, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect4, pt_Effect4, 6);
	part_emitter_region(ps, pe_Effect3, xp-2, xp+2, yp-2, yp+2, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(ps, pe_Effect3, pt_Effect3, 12);
	part_emitter_region(ps, pe_Effect2, xp-8, xp+8, yp-8, yp+8, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(ps, pe_Effect2, pt_Effect2, 32);
	part_emitter_region(ps, pe_Effect1, xp-1, xp+1, yp-1, yp+1, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect1, pt_Effect1, 1);
}

if explode02 == true {
	explode02 = false;
	part_emitter_region(ps, pe_Effect4, xp+0, xp+0, yp+0, yp+0, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect4, pt_Effect4, 6);
	part_emitter_region(ps, pe_Effect3, xp-2, xp+2, yp-2, yp+2, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(ps, pe_Effect3, pt_Effect3, 12);
	part_emitter_region(ps, pe_Effect2, xp-8, xp+8, yp-8, yp+8, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(ps, pe_Effect2, pt_Effect2, 32);
	part_emitter_region(ps, pe_Effect1, xp-1, xp+1, yp-1, yp+1, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect1, pt_Effect1a, 1);
}

if explode03 == true {
	explode03 = false;
	part_emitter_region(ps, pe_Effect4, xp+0, xp+0, yp+0, yp+0, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect4, pt_Effect4, 6);
	part_emitter_region(ps, pe_Effect3, xp-2, xp+2, yp-2, yp+2, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(ps, pe_Effect3, pt_Effect3, 12);
	part_emitter_region(ps, pe_Effect2, xp-8, xp+8, yp-8, yp+8, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(ps, pe_Effect2, pt_Effect2, 32);
	part_emitter_region(ps, pe_Effect1, xp-1, xp+1, yp-1, yp+1, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect1, pt_Effect1b, 1);
}

if explode04 == true {
	explode04 = false;
	part_emitter_region(ps, pe_Effect4, xp+0, xp+0, yp+0, yp+0, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect4, pt_Effect4, 6);
	part_emitter_region(ps, pe_Effect3, xp-2, xp+2, yp-2, yp+2, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(ps, pe_Effect3, pt_Effect3, 12);
	part_emitter_region(ps, pe_Effect2, xp-8, xp+8, yp-8, yp+8, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(ps, pe_Effect2, pt_Effect2, 32);
	part_emitter_region(ps, pe_Effect1, xp-1, xp+1, yp-1, yp+1, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect1, pt_Effect1c, 1);
}

if explode05 == true {
	explode05 = false;
	part_emitter_region(ps, pe_Effect4, xp+0, xp+0, yp+0, yp+0, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect4, pt_Effect4, 6);
	part_emitter_region(ps, pe_Effect3, xp-2, xp+2, yp-2, yp+2, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(ps, pe_Effect3, pt_Effect3, 12);
	part_emitter_region(ps, pe_Effect2, xp-8, xp+8, yp-8, yp+8, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(ps, pe_Effect2, pt_Effect2, 32);
	part_emitter_region(ps, pe_Effect1, xp-1, xp+1, yp-1, yp+1, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(ps, pe_Effect1, pt_Effect1d, 1);
}