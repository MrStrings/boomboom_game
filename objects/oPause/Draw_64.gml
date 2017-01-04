/// @description Insert description here
// You can write your code in this editor

if(global.pause) {
	 
	draw_set_halign(fa_center);

	for(var i = 0; i < array_length_1d(options); i++) {
		draw_text_transformed(global.resolution_width / 2 , global.resolution_height / 2 + i * space, options[i], xscale[i], xscale[i], 0);
	}
}