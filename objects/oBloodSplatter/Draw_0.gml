if(instance_exists(oControllerSurface)) {
	surface_set_target(oControllerSurface.surf);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);
	draw_sprite_ext(sBlood, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
}
