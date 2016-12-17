/// @description Init variables

explosion_size_left = 1000;
current_left = 1000;


// Propagates explosion

//---------------------------- 2nd test ------------------------------ //

living_propagators = 120;

for (i = 0; i < living_propagators; i++) {
	now = instance_create(x, y, explosion_propagator);
	
	with (now) {
		direction = other.i*360/other.living_propagators;
		id_master = other.id;
	}
}

//---------------------------- 2nd test ------------------------------ //


//explosion_list = ds_list_create();



//ds_list_add(explosion_list, instance_create(x, y, explosion));
