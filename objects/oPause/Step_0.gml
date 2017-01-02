/// @description Insert description here
// You can write your code in this editor

if(global.pause) {
	instance_deactivate_all(true);
	
	
	for(var i = 0; i < array_length_1d(options); i++) {
		if(i = selected)
			xscale[i] = Approach(xscale[i], 1.4, 0.1);
		else
			xscale[i] = Approach(xscale[i], 1, 0.1);
	}
	
	if(keyboard_check_pressed(vk_up)) selected--;
	if(keyboard_check_pressed(vk_down)) selected++;
	
	if(selected < 0) selected = 0;
	if(selected > array_length_1d(options) - 1) selected = array_length_1d(options) - 1;
}
else {
	instance_activate_all();
}