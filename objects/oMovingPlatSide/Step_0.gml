/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y - 1, oPlayer)) canMove = true;

if(invert) {
	vxMax = -vxMax;
	invert = false; 
}

vx = vxMax//Approach(vy, vyMax, accel);