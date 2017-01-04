/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("P"))) {
	global.pause = true;
	instance_create(0, 0, oPause);
	
}