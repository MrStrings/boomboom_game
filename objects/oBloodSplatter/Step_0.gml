
image_xscale -= sizeChange;
image_yscale = image_xscale;

if(movSpd > 0)
	image_alpha -= random_range(0.05, 0.1);

movSpd = Approach(movSpd, 0, fric);


if(image_xscale <= 0)
	instance_destroy();