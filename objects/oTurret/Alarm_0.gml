/// @description Insert description here
// You can write your code in this editor

var bul = instance_create(x + 20 * cos(degtorad(dir)), y  - 20 * sin(degtorad(dir)), oBullet);

with(bul) {
	dir = other.dir;
}

alarm[0] = reloadTime;