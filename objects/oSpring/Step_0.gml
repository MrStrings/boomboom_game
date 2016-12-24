

if(launch) {
    if(image_index >= 11) {
        launch = false;
        sprite_index = sSpringIdle
    }
}


with(oPlayer) {
	var sine = sin(degtorad(floor(other.image_angle))), cosine = cos(degtorad(floor(other.image_angle)));
    if(place_meeting(x, y, other.id)) {
		if (alreadyLauched == false) {
	        other.launch = true;
	        other.sprite_index = sSpringJump;
			other.image_index = 0;
			
			show_debug_message(" vx: "  + string(vx) + " vy: " + string(vy))
			speedAbs = sqrt(abs(power(vx, 2)) + abs(power(vy, 2)));
			
			// it was fucking dividing by zero
			if(speedAbs != 0)
				angle_speed = arctan2(vx/speedAbs, vy/speedAbs);
			else
				angle_speed = 0;
		
			vy_spring_coord =  2 * jumpHeight;
			vx_spring_coord =  speedAbs * sin(angle_speed - other.image_angle);
		
			vy = -vy_spring_coord*cosine - vx_spring_coord * sine;
			vx = -0.9*vy_spring_coord*sine + 0.5 * vx_spring_coord * cosine;
		}
    } else {
		alreadyLauched = false;
	}
}


if(launch) {
    if(image_index >= 11) {
        launch = false;
        sprite_index = sSpringIdle
    }
}

