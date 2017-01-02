/// @description Moves accordingly

relative_position = (level_num - controller.current_level)
					* controller.level_offset

x = relative_position + controller.x;

if (relative_position == 0) {
	image_xscale = 1.4;
	image_yscale = 1.4;
} else {
	image_xscale = 1;
	image_yscale = 1;
}