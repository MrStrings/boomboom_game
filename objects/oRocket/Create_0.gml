/// @description init variables

var _x = gamepad_axis_value(0, gp_axisrh) + x, _y = gamepad_axis_value(0, gp_axisrv) + y;

if(global.input_device = global.keyboard) {
	_x = mouse_x;
	_y = mouse_y;
}

direction = point_direction(x, y, _x, _y);



speed = 2;
image_angle = -90 + direction;

image_xscale = 1;
image_yscale = 1;

i = 0;

collided = false;

image_speed = 0.5;
image_xscale = 2;
image_yscale = image_xscale;


smokeDelay = random_range(0.15, 0.25)*room_speed
alarm[0] = smokeDelay;