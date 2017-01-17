/// @description Accelerate and Collision

image_angle = -90 + direction;
if (speed < 25)
    speed *= (1 + delta_time/1000000 * 5)
	
	
if (collided) {
	instance_create(x,y, oExplosionController);
	instance_destroy();
	global.shake = 20;
}

i++;