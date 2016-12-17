
with(oPlayer) {
	var sine = sin(degtorad(floor(other.image_angle))), cosine = cos(degtorad(floor(other.image_angle)));
    if(place_meeting(x, y, other.id)) {
        other.launch = true;
        other.sprite_index = sSpringJump;
		other.image_index = 0;
        
		vx *= 0.5;
		vy *= 0.5;
        
        vy += - 2 * jumpHeight * cosine;
		vx += - 2 * jumpHeight * sine;
    }
}

if(launch) {
    if(image_index >= 11) {
        launch = false;
        sprite_index = sSpringIdle
    }
}

show_debug_message(string(cos(image_angle)) + " " + string(sin(image_angle)));

