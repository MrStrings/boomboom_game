/// @description Insert description here
// You can write your code in this editor

vx = 0;
vy = 0;

spd = 8;

image_xscale = 1.5;
image_yscale = image_xscale;

if (instance_exists(oPlayer)) {
	var dir = point_direction(oPlayer.x, oPlayer.y, x, y)
	image_angle = dir;
	dir = degtorad(dir);
			
	vx = - spd * cos(dir);
	vy = spd * sin(dir);
}
else
	instance_destroy();
