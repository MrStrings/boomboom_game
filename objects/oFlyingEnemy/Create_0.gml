/// @description Insert description here
// You can write your code in this editor


// Movement //

vx		= 0;
vy		= 0;
vxMax	= 4.0;
vyMax	= 4.0;
fric	= 0.2;
accel	= 1.0;

image_xscale = 2;
image_yscale = 2;

FOLLOW = 1;
IDLE = 2;

movState = FOLLOW;

target = noone;