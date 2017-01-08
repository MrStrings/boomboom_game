/// LoadGame()

ini_open("savedata.ini");

global.current_level_prog = ini_read_real("save", "level_progression", 1);
show_debug_message("Load Level Prog: " + string(global.current_level_prog));

for(var i = 1; i <= global.number_of_levels; i++ ) {
	global.collected[i] = ini_read_real("save", "level" + string(i), 0);
	show_debug_message("Load Collected" + string(i) + ": " + string(global.collected[i]));
}

ini_close();