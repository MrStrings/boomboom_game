/// @description Insert description here
// You can write your code in this editor

target = oPlayer;

if(movState == IDLE) {
	vx = Approach(vx, 0, fric);
	vy = Approach(vy, 0, fric);
}
else if(movState == FOLLOW) {
	if(target != noone) {
		var dir = point_direction(x, y, target.x, target.y);
		dir = degtorad(dir);
		vx = Approach(vx, vxMax * cos(dir), accel);
		vy = Approach(vy, -vyMax * sin(dir), accel);
	}
}

x += vx;
y += vy;