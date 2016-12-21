/// @description destroys player


with (oPlayer) {
	instance_destroy();
	alarm[1] = 20*room_speed;
}