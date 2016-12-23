/// @handle movement


// Update velocity: Apply gravity and friction
vy = Approach(vy, maxFall, grav);

if(place_meeting(x, y + 1, oParSolid))
	vx = Approach(vx, 0, fricGround);
else
	vx = Approach(vx, 0, fricAir);
	

// Collision handling

repeat(abs(vx)) {
	if(!place_meeting(x + sign(vx), y, oParSolid)) {
		x += sign(vx);
		hCol = false;
		hjustCollided = false;
	}
	else {
		if(!hCol) {hjustCollided = true; collideCount++;}
		else hjustCollided = false;
		hCol = true;
		vx *= - 0.75;	// Bounce
		break;
	}
}

repeat(abs(vy)) {
	if(!place_meeting(x , y + sign(vy), oParSolid)) {
		y += sign(vy);
		vCol = false;
		vjustCollided = false;
	}
	else {
		if(!vCol) {vjustCollided = true; collideCount++;}
		else vjustCollided = false;
		vCol = true;
		vy *= - 0.75;	// Bounce
		break;
	}
	
}

// Draw blood splatter
if(vjustCollided or hjustCollided){
	var count = irandom_range(4, 20 - 5*collideCount);
	for(var i = 0; i < count; i++) {
		instance_create(x + random_range(-4, 4), y + random_range(-4, 4), oBloodSplatter); 
	}
}

// Particle Emitter following object

if(instance_exists(blood)) {
	blood.x = x;
	blood.y = y;
	blood.dir = dir;
}