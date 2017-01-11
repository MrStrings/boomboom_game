/// @description Insert description here
// You can write your code in this editor

if(canMove) {
	if(!back)
		vy = Approach(vy, vyMax, accel);
	else {
		vy = Approach(vy, -vyMax, accel);
	}
}