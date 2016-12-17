/// @description destroys enemyd

enemy = instance_place(x, y, oParEnemy);
with (enemy) {
	instance_destroy();
	alarm[1] = 20*room_speed;
}