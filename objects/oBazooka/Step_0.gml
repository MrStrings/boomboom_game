/// @description Insert description here
// You can write your code in this editor

if(sprite_index == sBazookaShooting and image_index > image_number - 1) {
	sprite_index = sBazookaIdle;
}

if(image_angle % 360 > 90 && image_angle % 360 < 270)
	image_yscale = -image_xscale;
else
	image_yscale = image_xscale;