/// @description init variables

direction = point_direction(x, y, mouse_x, mouse_y);



speed = 2;
image_angle = -90 + point_direction(x, y, mouse_x, mouse_y);

image_xscale = 1;
image_yscale = 1;

i = 0;

collided = false;
