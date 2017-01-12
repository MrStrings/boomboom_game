/// @description Collision

collided = false;
while (collision_line(x, y, xprevious, yprevious, oParSolid, false, true) ||
	collision_line(x, y, xprevious, yprevious, oParEnemy, false, true)) {
	collided = true;
	x = x - speed/abs(speed) * cos(degtorad(direction))
	y = y + speed/abs(speed) * sin(degtorad(direction))

	xprevious = xprevious - speed/abs(speed) * cos(degtorad(direction))
	yprevious = yprevious + speed/abs(speed) * sin(degtorad(direction))
	
}