/// @description Collision

collided = false;
while (place_meeting(x,y, oParSolid) ||
	place_meeting(x,y, oParEnemy)) {
	collided = true;
	x = x - speed/abs(speed) * cos(degtorad(direction))
	y = y + speed/abs(speed) * sin(degtorad(direction))
	
}