/// @description Insert description here
// You can write your code in this editor

dir++;
part_type_direction(partBlood, dir - 30, dir + 30, 0, 0);
part_emitter_region(global.partBlood_sys, partBlood_emit, x - 4, x + 4, y - 4, y + 4, ps_shape_ellipse, ps_distr_gaussian);