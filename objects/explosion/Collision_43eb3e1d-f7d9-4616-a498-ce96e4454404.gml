/// @description destroys enemyd


with (oParEnemy) {
	instance_destroy();
	alarm[1] = 20*room_speed;
}