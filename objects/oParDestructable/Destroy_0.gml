/// @description Insert description here
// You can write your code in this editor

var ww = sprite_get_width(sprite_index);
var hh = sprite_get_height(sprite_index);
var chunck = irandom_range(sprite_width / 4, sprite_width * 3 / 4);


for(i = 0; i < ww; i += chunck) {
	for(j = 0; j < hh; j += chunck) {
		particle = instance_create(x+i, y+j, oParticleDestroy);
		particle.spr = sprite_index;
		particle.size = chunck;
		particle.xx = i;
		particle.yy = j;
	}
}