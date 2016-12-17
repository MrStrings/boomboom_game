/// @description Follow stuff

//var xTo, yTo;
//move_towards_point(mouse_x, mouse_y, 0);

//xTo = oPlayer.x + lengthdir_x(min(70, distance_to_point(mouse_x, mouse_y)), direction);
//yTo = oPlayer.x + lengthdir_y(min(70, distance_to_point(mouse_x, mouse_y)), direction);

//x += (xTo - x) / 10;
//y += (yTo - y) / 10;

//x = oPlayer.x;
//y = oPlayer.y;

//if(global.shake > 0) {
//	camera_set_view_pos(
//					view_camera[0], 
//					-(camera_get_view_width(view_camera[0]) / 2) + x + irandom_range(-5, 5), 
//					-(camera_get_view_height(view_camera[0]) / 2) + y + irandom_range(-5, 5));
//	global.shake--;
//}
//else {
//	camera_set_view_pos(
//					view_camera[0], 
//					-(camera_get_view_width(view_camera[0]) / 2) + x, 
//					-(camera_get_view_height(view_camera[0]) / 2) + y);
//}

if(global.shake > 0) {
	camera_set_view_pos(
					view_camera[0], 
					700 + irandom_range(-5 - global.shake/2, 5 + global.shake/2), 
					800 + irandom_range(-5 - global.shake/2, 5 + global.shake/2));
	global.shake--;
}
else {
	camera_set_view_pos(
					view_camera[0], 
					700, 
					800);
}
