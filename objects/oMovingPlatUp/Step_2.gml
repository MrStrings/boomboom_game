/// @description Insert description here
// You can write your code in this editor

repeat(abs(vy)) {
	
	if(place_meeting(x, y + 1, oPlayer) or place_meeting(x, y - 1, oPlayer)) {
		with(oPlayer) {
			y += sign(other.vy);
		}
	}
	
	y += sign(vy);
	
	if(!place_meeting(x, y, oRail)) {
		invert = true;
		break;
	}
	
	
}