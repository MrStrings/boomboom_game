/// @description Insert description here
// You can write your code in this editor

repeat(vx) {
	if(place_meeting(x + sign(vx), y, oParSolid))
		break;
	x += sign(vx);
}

repeat(vy) {
	if(place_meeting(x, y + sign(vy), oParSolid))
		break;
	y += sign(vy);
}