/// @description Insert description here
// You can write your code in this editor

var bul = instance_create(x + 9 * cos(degtorad(dir)), y  - 9 * sin(degtorad(dir)), oBullet);

with(bul) {
	dir = other.dir;
}

alarm[0] = reloadTime;