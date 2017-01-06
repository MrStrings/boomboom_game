/// @description Insert description here
// You can write your code in this editor



if (currentLevel > 1 && (keyboard_check_pressed(vk_left)
	|| keyboard_check_pressed(ord("A"))
	|| gamepad_button_check_pressed(0, gp_padl))) {
	currentLevel--;
}

if (currentLevel < number_of_levels &&
	(keyboard_check_pressed(vk_right)
	|| keyboard_check_pressed(ord("D"))
	|| gamepad_button_check_pressed(0, gp_padr))) {
	currentLevel++;
}

//Por enquanto, isso ta comentado pra facilitar os testes
//if(currentLevel > global.current_level_prog)
//	currentLevel = global.current_level_prog;


if (keyboard_check_pressed(vk_space) ||
	keyboard_check_pressed(vk_return) ||
	gamepad_button_check_pressed(0, gp_face1)) {
	global.current_level = currentLevel;
	show_debug_message("Level: " + string(global.current_level))
	room_goto(currentLevel);	
}