/// @description Insert description here
// You can write your code in this editor


draw_self();
draw_set_color(c_white);
draw_text(x, y, level_num);

if(global.collected[level_num]) {
	draw_sprite(sCoin, 0, x, y - 50)
}
