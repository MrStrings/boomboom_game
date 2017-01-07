/// @description Insert description here
// You can write your code in this editor

alarm[0] = smokeDelay;

var smoke = instance_create(x, y, oSmokePart)

with(smoke) {
	image_angle = other.direction + 90
}