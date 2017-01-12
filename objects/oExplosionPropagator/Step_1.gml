/// @description destroys itself (for real)


if (collision_line(x, y, xprevious, yprevious, oParSurfaceSolid, false, true)) {
	if (instance_exists(id_master)) {
	id_master.explosion_size_left -= (0.75 *
		id_master.explosion_size_left/id_master.living_propagators);
	id_master.living_propagators--;
	
	}

	instance_destroy();

}