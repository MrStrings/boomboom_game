/// @description Insert description here
// You can write your code in this editor

vx = 0;
vy = 0;

spd = 5;


if (instance_exists(oPlayer)) {
	var dir = point_direction(oPlayer.x, oPlayer.y, x, y)
	dir = degtorad(dir);
			
	vx = - spd * cos(dir);
	vy = spd * sin(dir);
}
else
	instance_destroy();
