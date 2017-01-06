if(!instance_exists(oParEnemy)) {
	opened = true;
}

if(opened) {
	if(opening) {
		sprite_index = sDoorOpening;
		image_speed = 0.4;
		if(image_index >= image_number - 1)
			opening = false;
	}
	else {
		sprite_index = sDoorOpened;
		image_speed = 0.4;
	}
}