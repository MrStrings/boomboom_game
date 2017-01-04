/// @description Insert description here
// You can write your code in this editor



if (currentLevel > 1 && (keyboard_check_pressed(vk_left)
	|| keyboard_check_pressed(ord("A")))) {
	currentLevel--;
}

if (currentLevel < number_of_levels &&
	(keyboard_check_pressed(vk_right)
	|| keyboard_check_pressed(ord("D")))) {
	currentLevel++;
}

//Por enquanto, isso ta comentado pra facilitar os testes
//if(current_level > global.current_level_prog)
//	current_level = global.current_level_prog;


if (keyboard_check_pressed(vk_space) ||
	keyboard_check_pressed(vk_return)) {
	global.current_level = currentLevel;
	show_debug_message("Level: " + string(global.current_level))
	room_goto(currentLevel);	
}