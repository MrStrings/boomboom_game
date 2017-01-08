/// @description Insert description here
// You can write your code in this editor

// Resolution Settings

global.resolution_width = 1024;
global.resolution_height = 576;

global.camera_width = 640;
global.camera_height = 360;


// Level Settings
global.pause = false;

global.number_of_levels = 12;

global.current_level_prog = 1;
global.current_level	  = 1;

for(var i = 1; i <= global.number_of_levels; i++) {
	global.collected[i] = false;
}

LoadGame();