/// @description Accelerate and Collision


if (speed < 25)
    speed *= (1 + delta_time/1000000 * 5)
	
	
if (collided) {
	instance_create(x,y, oExplosionController);
	instance_destroy();
	global.shake = 20;
}

i++;