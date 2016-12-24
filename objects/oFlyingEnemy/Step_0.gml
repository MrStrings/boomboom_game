/// @description Insert description here
// You can write your code in this editor



if(movState == IDLE) {
	vx = Approach(vx, 0, fric);
	vy = Approach(vy, 0, fric);
		
	x += vx;
	y += vy;
}
else if(movState == FOLLOW) {
	if(instance_exists(oPlayer)) {
		var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
		dir = degtorad(dir);
		vx = Approach(vx, vxMax * cos(dir), accel);
		vy = Approach(vy, -vyMax * sin(dir), accel);
			
		repeat(abs(vy)) {
			if (place_meeting(x, y - 1, oParEntity) and !place_meeting(x, y, oParEntity)) {
				if(vy < 0) {
					oPlayer.vy -= oPlayer.jumpHeight * 1.3;
					vy = 8;
					break;
				}
				
			} 
		    
			y += sign(vy);
		}
			
		x += vx;
	}
}