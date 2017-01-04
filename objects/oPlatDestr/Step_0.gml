/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y-1, oPlayer)) {
	timer++;
	
	if(timer >= maxTime) {
		image_index++;
		if(image_index >= image_number) instance_destroy();
		timer = 0;
	}
}