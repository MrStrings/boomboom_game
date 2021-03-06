/// Variables

Singleton();

// Inherit oParEntity variables
event_inherited();

facing = 1;

// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1.00;
groundFric  = 2.00;
fastFric	= 0.75;
airAccel    = 0.75;
airFric     = 0.03;
vxMax       = 5.50;
vyMax       = 10.0;
jumpHeight  = 9.00;
gravNorm    = 1;
gravSlide   = 0.15; 
gun_kickback = 15;
reloadTime = 0.85;

clingTime   = 2.0;
airFricForGravity = 0.01;
dir = 0;

vx_aux = 0;
vy_aux = 0;

// Misc ///////////////////////////////////////////////////////////////////////

canShoot = true;
bazooka = instance_create(x, y, oBazooka);

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

angleSnap = 45;
_x = x + 1;
_y = y;

//fallTime = 0;
//fallMax  = 28;


