/// @description Init variables

explosion_size_left = 300;
//current_left = 800;


// Propagates explosion

//---------------------------- 2nd test ------------------------------ //

living_propagators = 100;

for (i = 0; i < living_propagators; i++) {
	now = instance_create(x, y, oExplosionPropagator );
	
	with (now) {
		direction = other.i*360/other.living_propagators;
		id_master = other.id;
	}
}

//---------------------------- 2nd test ------------------------------ //


//explosion_list = ds_list_create();



//ds_list_add(explosion_list, instance_create(x, y, explosion));
