/// @description Moves accordingly

relative_position = Approach(relative_position, (level_num - controller.currentLevel)
					* controller.level_offset, vel);

vel = Approach(vel, maxVel, accel)
 
x = relative_position + controller.x;

if (relative_position == 0) {
	image_xscale = Approach(image_xscale, 1.4, 0.1);
	image_yscale = image_xscale;
} else {
	image_xscale = Approach(image_xscale, 1, 0.1);
	image_yscale = image_xscale;
}