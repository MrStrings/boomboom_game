/// EnemyCheck();

if(sign(vy) > 0) {
	if(place_meeting(x, y + 1, oParEnemy) and !place_meeting(x, y, oParEnemy)) {
		return true;
	}
}

return false;