/// @description Insert description here
// You can write your code in this editor

if(canMove) {
	if(!back)
		vx = Approach(vx, vxMax, accel);
	else {
		vx = Approach(vx, -vxMax, accel);
	}
}