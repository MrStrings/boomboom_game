/// @description Insert description here
// You can write your code in this editor



if (current_level > 1 && keyboard_check_pressed(vk_left)) {
	current_level--;
}

if (current_level < number_of_levels && keyboard_check_pressed(vk_right)) {
	current_level++;
}


if (keyboard_check_pressed(vk_space) ||
	keyboard_check_pressed(vk_return)) {
	
	room_goto(current_level);	
}