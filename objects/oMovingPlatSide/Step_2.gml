/// @description Insert description here
// You can write your code in this editor

if(canMove) {
	repeat(abs(vx)) {
	
		if(place_meeting(x + 1, y, oPlayer) or place_meeting(x - 1, y, oPlayer) or place_meeting(x, y - 1, oPlayer)) {
			with(oPlayer) {
				x += sign(other.vx);
			}
		}
	
		x += sign(vx);
	
		if(!place_meeting(x, y, oRail)) {
			invert = true;
			break;
		}
	
	
	}
}