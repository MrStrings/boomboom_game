/// @description Insert description here
// You can write your code in this editor

// Current level that player won
global.current_level_prog = 1;

//file_delete(working_directory + "save.txt");

// Reads file to see if there's something in it
file = file_text_open_read(working_directory + "save.txt");

if(file == -1) {
	show_debug_message("File failed to open for reading or it doesn't exist");
	show_debug_message("creating save file ...");
	
	file = file_text_open_append(working_directory + "save.txt");
	
	
	// Writes level save file
	file_text_write_real(file, 1);
	
	for(var i = 1; i <= global.number_of_levels; i++) {
		file_text_write_real(file, 0)
	}
}
else {
	global.current_level_prog = file_text_read_real(file);
	
	for(var i = 1; i <= global.number_of_levels; i++) {
		// Reads file to get which collectables have been collected
		global.collected[i] = file_text_read_real(file) == 0 ? false : true;
	}
}

file_text_close(file)

//for(var i = 0; i < global.number_of_levels; i++){
//	show_debug_message(file_text_read_real(file));
//	show_debug_message(file_text_read_real(file));
//}

//file_text_close(file);