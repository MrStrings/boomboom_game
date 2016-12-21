/// @description Spawn enemy


if (instance_exists(oPlayer)) {
	with (oPlayer) {
		x_target = random_range(750, 1200);
		y_target = random_range(840, 1100);
		
		while (abs(x_target-x) < 40 || abs(y_target-y) < 40) {
			x_target = random_range(750, 1200);
			y_target = random_range(840, 1100);
		}
		
		instance_create(x_target, y_target, oFlyingEnemy);
	}
	
	alarm[0] = time_between_spawns * room_speed;
}