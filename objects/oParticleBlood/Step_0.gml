/// @description Insert description here
// You can write your code in this editor

part_type_direction(partBlood, dir - 30, dir + 30, 0, 0);
part_emitter_region(global.partBlood_sys, partBlood_emit, x - 4, x + 4, y - 4, y + 4, ps_shape_ellipse, ps_distr_gaussian);

if (canEmit) {
	part_emitter_stream(global.partBlood_sys, partBlood_emit, partBlood, 1);
	canEmit = false;
	emitDelay = random_range(0.007, 0.1) * room_speed
	alarm[0] = emitDelay;
}
else {
	part_emitter_stream(global.partBlood_sys, partBlood_emit, partBlood, 0);
}