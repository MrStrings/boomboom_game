//draw_self();
if(instance_exists(oBloodSurface)) {
	
	surface_set_target(oBloodSurface.surf);
	
	gpu_set_blendmode_ext(bm_inv_dest_alpha, bm_src_alpha);
	draw_self();
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
	
}