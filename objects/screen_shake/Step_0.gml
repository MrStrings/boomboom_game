/// @description shake!

cam = instance_find(camera_obj, instance_number(camera_obj));

camera_set_view_pos(view_camera[0],
				cam + random_range(-5,5),
				cam + random_range(-5,5));

