/// @description Insert description here
// You can write your code in this editor

onGround = place_meeting(x, y+1, oParSolid);

if(!onGround)
	vy = Approach(vy, vyMax, 0.5);
vx = Approach(vx, 0, 0.05);

repeat(abs(vx)) {
	if(!place_meeting(x + sign(vx), y, oParSolid)) {
		x += sign(vx);
	}
	else {
		vx *= - 0.5;	// Bounce
		break;
	}
}

repeat(abs(vy)) {
	if(!place_meeting(x , y + sign(vy), oParSolid)) {
		y += sign(vy);
	}
	else {
		vy *= - 0.5;	// Bounce
		break;
	}
	
}