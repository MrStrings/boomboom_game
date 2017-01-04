/// @description Insert description here
// You can write your code in this editor

Singleton();

sprApp = sprite_create_from_surface(application_surface,
									 0,
									 0,
									 camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),
									 camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),
									 false, false, 0, 0);
sprSurf = -1
if(instance_exists(oControllerSurface)) {
	sprSurf = sprite_create_from_surface(oControllerSurface.surf,
									 0,
									 0,
									 camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),
									 camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),
									 false, false, 0, 0);
	if(sprSurf == -1) show_debug_message("Failed to create spr from Blood Surface!");
}

if(sprApp == -1) show_debug_message("Failed to create spr from app_surf!");
 
 
options[0] = " Resume "
options[1] = " Resolution Settings "
options[2] = " Back to Main Menu "

for(var i = 0; i < array_length_1d(options); i++) {
	xscale[i] = 1;
	yscale[i] = 1;
}

space = 40

selected = 0;