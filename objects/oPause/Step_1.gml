/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("P"))) {
	global.pause = false;
	instance_activate_all();
	instance_destroy();
}