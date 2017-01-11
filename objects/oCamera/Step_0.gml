/// @description Follow stuff

// Activate camera mode
stretch = keyboard_check(vk_shift) ? true : false;

//var xTo, yTo;
move_towards_point(mouse_x, mouse_y, 0);

if(instance_exists(oPlayer)) {
	xTo = oPlayer.x + lengthdir_x(min(150, distance_to_point(mouse_x, mouse_y)), direction);
	yTo = oPlayer.y + lengthdir_y(min(150, distance_to_point(mouse_x, mouse_y)), direction);

	if(stretch) {
		x += (xTo - x) / 4;
		y += (yTo - y) / 4;
	}
	else {
		x += (oPlayer.x - x) * 0.08;
		y += (oPlayer.y - y) * 0.08;
	}
}  

var cameraX = -(camera_get_view_width(view_camera[0]) / 2) + x;
var cameraY = -(camera_get_view_height(view_camera[0]) / 2) + y;

cameraX = clamp(cameraX, 0, room_width - camera_get_view_width(view_camera[0]));
cameraY = clamp(cameraY, 0, room_height - camera_get_view_height(view_camera[0]));

if(global.shake > 0) {
		camera_set_view_pos(
						view_camera[0], 
						cameraX +  irandom_range(-5 - global.shake/2, 5 + global.shake/2), 
						cameraY +  irandom_range(-5 - global.shake/2, 5 + global.shake/2));
		global.shake--;
		
		if(global.input_device = global.gamepad) 
			gamepad_set_vibration(0, 0.5, 0.5);
		
	}
	else {
		camera_set_view_pos(
						view_camera[0], 
						cameraX, 
						cameraY);
		
		gamepad_set_vibration(0, 0, 0);
	}