/// @description Destroys itself

if (instance_exists(id_master)) {
	id_master.living_propagators--;
}

instance_destroy();