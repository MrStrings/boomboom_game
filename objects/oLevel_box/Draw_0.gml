/// @description Insert description here
// You can write your code in this editor


draw_self();
draw_set_color(c_black);
draw_text(x, y, level_num);

if(global.collected[level_num]) {
	draw_set_color(c_white);
	draw_text(x, y-sprite_get_height(sprite_index), "C");
}
