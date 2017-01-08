/// SaveGame()

ini_open("savedata.ini");

ini_write_real("save", "level_progression", global.current_level_prog);
show_debug_message("Level Progression: " + string(ini_read_real("save", "level_progression", -1)));

for(var i = 1; i <= global.number_of_levels; i++ ) {
	ini_write_real("save", "level" + string(i), global.collected[i]);
	show_debug_message("Collected " + string(i) + ": " + string(ini_read_real("save",  "level" + string(i), -1)))
}

ini_close();