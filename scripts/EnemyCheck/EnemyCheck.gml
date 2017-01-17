/// EnemyCheck();

if(sign(vy) > 0) {
	if(place_meeting(x, y + 1, oParEnemy) and !place_meeting(x, y, oParEnemy)) {
		if (vy > vyMax + 1) {
			instance_destroy(instance_place(x, y+1, oParEnemy))
		}
		return true;
	}
}

return false;