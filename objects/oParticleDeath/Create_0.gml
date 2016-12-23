

/************
 * Movement *
 ************/
 
grav = 1.5;
maxFall = 7.0;

if(place_meeting(x, y + 1, oParSolid)) {
	y -= 10;
	dir = degtorad(random_range(40, 140));
}
else
	dir = degtorad(random_range(0, 359));

var initSpeed = random_range(10, 20);

vy = -initSpeed * sin(dir);
vx = initSpeed * cos(dir);

fricAir = 0.1;
fricGround = 0.7;


/********
 * Misc *
 ********/

vjustCollided = false;
hjustCollided = false;
vCol = false;
hCol = false;
collideCount = 0;
blood = instance_create(x, y, oParticleBlood);
alarm[0] = random_range(3, 4) * room_speed;