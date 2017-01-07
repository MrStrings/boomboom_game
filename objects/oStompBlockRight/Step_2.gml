/// @description Insert description here
// You can write your code in this editor

repeat(abs(vx)) {
	x += sign(vx);
	
	if(place_meeting(x, y, oParSolid)) {
		back = true;
		x -= sign(vx);
		break;
	}
		
	if(place_meeting(x, y, oPlayer)) {
		var player = instance_place(x, y, oPlayer);
		with(player) {
			x += sign(other.vx);
			if(place_meeting(x, y, oParSolid))
				instance_destroy();
				
		}
	}
	
	if(x == initX) {
		back = false;
		break;
	}
}