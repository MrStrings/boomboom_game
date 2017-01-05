/// @description Follow stuff

// Activate camera mode
stretch = keyboard_check(vk_shift) ? true : false;

//var xTo, yTo;
move_towards_point(mouse_x, mouse_y, 0);

if(instance_exists(oPlayer)) {
	xTo = oPlayer.x + lengthdir_x(min(150, distance_to_point(mouse_x, mouse_y)), direction);
	yTo = oPlayer.y + lengthdir_y(min(150, distance_to_point(mouse_x, mouse_y)), direction);

	if(stretch) {
		x += (xTo - x) / 10;
		y += (yTo - y) / 10;
	}
	else {
		x += (oPlayer.x - x) * 0.08;
		y += (oPlayer.y - y) * 0.08;
	}
	
	if(global.shake > 0) {
		camera_set_view_pos(
						view_camera[0], 
						-(camera_get_view_width(view_camera[0]) / 2) + x +  irandom_range(-5 - global.shake/2, 5 + global.shake/2), 
						-(camera_get_view_height(view_camera[0]) / 2) + y +  irandom_range(-5 - global.shake/2, 5 + global.shake/2));
		global.shake--;
		
		if(global.input_device = global.gamepad) 
			gamepad_set_vibration(0, 0.5, 0.5);
		
	}
	else {
		camera_set_view_pos(
						view_camera[0], 
						-(camera_get_view_width(view_camera[0]) / 2) + x, 
						-(camera_get_view_height(view_camera[0]) / 2) + y);
		
		gamepad_set_vibration(0, 0, 0);
	}

}  
