/// @description Insert description here
// You can write your code in this editor

Singleton();

global.shake = 0;
global.partBlood_sys = part_system_create();
part_system_depth(global.partBlood_sys, 0);

pauseScreen = noone;

global.keyboard = 0
global.gamepad = 1;

global.input_device = global.keyboard;
