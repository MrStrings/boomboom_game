/// @description Insert description here
// You can write your code in this editor

// Control Varables //

dir = 270;

// Particle System //



// Particle Itself //

partBlood = part_type_create();
part_type_shape(partBlood, pt_shape_disk);
part_type_scale(partBlood, 1, 1);
part_type_size(partBlood, 0.1, 0.2, -0.005, 0);
part_type_color1(partBlood, c_red);
part_type_alpha2(partBlood,  1, 0.5);
part_type_speed(partBlood, 1, 2, 0, 0);
part_type_direction(partBlood, dir - 30, dir + 30, 0, 0);
part_type_gravity(partBlood, 0.1, 270);
part_type_life(partBlood, room_speed * 2, room_speed * 4);


// Particle Emitter //

partBlood_emit = part_emitter_create(global.partBlood_sys);
part_emitter_region(global.partBlood_sys, partBlood_emit, x - 4, x + 4, y - 4, y + 4, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(global.partBlood_sys, partBlood_emit, partBlood, 1);

// Alarm to Destroy //

//alarm[0] = 1 * room_speed;