/// Variables

// Inherit oParEntity variables
event_inherited();

facing = 1;

// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1.00;
groundFric  = 2.00;
airAccel    = 0.75;
airFric     = 0.01;
vxMax       = 5.50;
vyMax       = 10.0;
jumpHeight  = 8.00;
gravNorm    = 1;
gravSlide   = 0.25; 
gun_kickback = 12;
reloadTime = 0.5;

clingTime   = 2.0;
airFricForGravity = 0.01;

vx_aux = 0;
vy_aux = 0;

// Misc ///////////////////////////////////////////////////////////////////////

canShoot = true;

// States
IDLE     = 10;
RUN      = 11;
JUMP     = 12;
ROLL     = 13;

// Initialize properties
state  = IDLE;
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = 1;
yscale = 1;

///////////////////////////////////////////////////////////////////////////////

attacking = false;
blocking  = false;

//fallTime = 0;
//fallMax  = 28;


