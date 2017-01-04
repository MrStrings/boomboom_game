/// SaveGame()

file_delete(working_directory + "save.txt");

file = file_text_open_append(working_directory + "save.txt");

file_text_write_real(file, global.current_level_prog);

for(var i = 1; i <= global.number_of_levels; i++ ) {
	file_text_write_real(file, global.collected[i]);
}

file_text_close(file);

file = file_text_open_read(working_directory + "save.txt");

while(!file_text_eof(file)) {
	show_debug_message(string(file_text_read_real(file)));
	
}