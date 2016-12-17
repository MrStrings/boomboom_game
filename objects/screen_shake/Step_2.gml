/// @description shake!

cam = instance_find(oCamera, instance_number(oCamera));

with(cam) {
	camera_set_view_pos(view_camera[0],
				x + random_range(-5,5),
				y + random_range(-5,5));
}

