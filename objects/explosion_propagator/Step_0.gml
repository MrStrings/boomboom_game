/// @description Instantiates explosion pieces

rx = x-x0;
ry = y-y0;
current_distance = sqrt(rx*rx + ry*ry);

if (current_distance > last_distance + dist_between_spawns) {
	instance_create(x,y, explosion);
	last_distance = current_distance;
	
	if (instance_exists(id_master)) {
		id_master.explosion_size_left--;
		if (id_master.explosion_size_left <= 0) {
			instance_destroy();
			id_master.living_propagators--;
		}
	} else {
		instance_destroy();
	}
}