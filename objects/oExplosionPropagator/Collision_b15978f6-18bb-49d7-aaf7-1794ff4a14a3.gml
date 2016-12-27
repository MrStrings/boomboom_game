/// @description destroys itself



//if (place_meeting(x+1, y, oParSolid) ||place_meeting(x-1, y, oParSolid)) {
//   x*=-1;
//} else {
//   y*=-1;    
//}


if (instance_exists(id_master)) {
	id_master.explosion_size_left -= (0.75 *
		id_master.explosion_size_left/id_master.living_propagators);
	id_master.living_propagators--;
	
}

instance_destroy();