/// @description generates elements


number_of_levels = room_last;

level_offset = 100;

current_level = 1;


for (i = 1; i <= number_of_levels; i++) {
	inst = instance_create(level_offset * i, 200, oLevel_box);
	
	with (inst) {
		level_num = other.i;
	}
}