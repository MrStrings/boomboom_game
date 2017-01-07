/// @description Insert description here
// You can write your code in this editor

repeat(abs(vy)) {
	y += sign(vy);
	
	if(place_meeting(x, y, oParSolid)) {
		back = true;
		y -= sign(vy);
		break;
	}
		
	if(place_meeting(x, y, oPlayer)) {
		var player = instance_place(x, y, oPlayer);
		with(player) {
			y += sign(other.vy);
			if(place_meeting(x, y, oParSolid))
				instance_destroy();
				
		}
	}
	
	if(y == initY) {
		back = false;
		break;
	}
}