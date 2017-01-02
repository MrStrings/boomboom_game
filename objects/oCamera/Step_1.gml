
// Set Resolution

if(keyboard_check_pressed(ord("F"))) {

	if(window_get_fullscreen()) {
		window_set_fullscreen(false);
		window_set_size(global.resolution_width, global.resolution_height);
	}
	else {
		window_set_fullscreen(true);
	}

}
camera_set_view_size(view_camera[0], global. camera_width, global.camera_height);