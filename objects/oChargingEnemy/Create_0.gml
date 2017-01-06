/// @description Insert description here
// You can write your code in this editor

// Movement //

vx			= 0;
vy			= 0;
accel		= 0.5;
vxMaxWond	= 3.0;
vxMaxCharge = 8.0;
fricGround	= 0.5;
maxFall		= 8.0;
grav		= 8.0;

// States //

WONDERING	= 0;
CHARGING	= 1;

state = WONDERING;


// Misc //

centerX = x + 1;
centerY = y;
gotToPoint = true;
point = 0;