if(instance_number(object_index) <= 1) {
	event_inherited();
	instance_create(x, y, oFxRoomRestart);
	instance_destroy(bazooka);
}
