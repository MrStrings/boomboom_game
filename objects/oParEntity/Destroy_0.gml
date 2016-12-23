var ww = sprite_get_width(sprite_index);
var hh = sprite_get_height(sprite_index);
var chunck = irandom_range(6, 10);


for(i = - sprite_width / 2; i < ww; i += chunck) {
	for(j = - sprite_height / 2; j < hh; j += chunck) {
		particle = instance_create(x+i, y+j, oParticleDeath);
		particle.spr = sprite_index;
		particle.size = chunck;
		particle.xx = i;
		particle.yy = j;
	}
}