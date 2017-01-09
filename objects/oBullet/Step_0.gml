/// @description Insert description here
// You can write your code in this editor

image_angle = dir;

			
vx = spd * cos(degtorad(dir));
vy = - spd * sin(degtorad(dir));

repeat(abs(vx)) {
	if(place_meeting(x, y, oPlayer)) {
		with(oPlayer) { instance_destroy(); }
		instance_destroy();
	}
	
	if(place_meeting(x + sign(vx), y, oParSolid)) {
		instance_destroy();
		show_debug_message("got here");
	}
	x += sign(vx);
}


repeat(abs(vy)) {
	if(place_meeting(x, y, oPlayer)) {
		with(oPlayer) { instance_destroy(); }
		instance_destroy();
	}
	
	if(place_meeting(x , y + sign(vy), oParSolid)) {
		instance_destroy();
		show_debug_message("got here");
	}
	y += sign(vy);
}