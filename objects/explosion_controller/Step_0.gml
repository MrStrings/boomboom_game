/// @description controls explosion


/// Propagates explosion

did_not_hit = false;

while (explosion_size_left > 0 && !did_not_hit) {

    var size = ds_list_size (explosion_list);
    
    did_not_hit = true;
    
    for (var i = 0; i < size; i++) {
        value = ds_list_find_value(explosion_list, i);
		
		if (collision_point(value.x+16, value.y, explosion, false, true) &&
		!collision_point(value.x+16, value.y, oParSolid, false, true)) {
            new = instance_create(value.x+16, value.y, explosion);
            ds_list_add(explosion_list, new);
            explosion_size_left -= 1;
            did_not_hit = false;
        }

		
		
        if (!collision_point(value.x-16, value.y, explosion, false, true) &&
		!collision_point(value.x-16, value.y, oParSolid, false, true)) {
            new = instance_create(value.x-16, value.y, explosion);
            ds_list_add(explosion_list, new);
            explosion_size_left -= 1;
            did_not_hit = false;
        }

        
         if (!collision_point(value.x, value.y-16, explosion, false, true) &&
		 !collision_point(value.x, value.y-16, oParSolid, false, true)) {
            new = instance_create( value.x,  value.y-16, explosion);
            ds_list_add(explosion_list, new);
            explosion_size_left -= 1;
            did_not_hit = false;
        }
        
        if (collision_point(value.x, value.y+16, explosion, false, true) &&
		!collision_point(value.x, value.y+16, oParSolid, false, true)) {
            new =  instance_create( value.x,  value.y+16, explosion);
            ds_list_add(explosion_list, new);
            explosion_size_left -= 1;
            did_not_hit = false;
        }
    }

}