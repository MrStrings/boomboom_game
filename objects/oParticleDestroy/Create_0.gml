/// @description Insert description here
// You can write your code in this editor

alarm[0] = random_range(0.3, 0.5) * room_speed;

grav = 0.5;
maxFall = 10.0;

dir = degtorad(random_range(40, 140));


var initSpeed = random_range(7, 10);

vy = -initSpeed * sin(dir);
vx = initSpeed * cos(dir);


fric = 0.5;