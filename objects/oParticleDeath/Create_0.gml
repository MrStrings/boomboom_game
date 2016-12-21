/// @description Insert description here
// You can write your code in this editor

alarm[0] = random_range(3, 4) * room_speed;

grav = 1.0;
maxFall = 5.0;

dir = degtorad(random(360));


var initSpeed = random_range(10, 20);

vy = initSpeed * sin(dir);
vx = initSpeed * cos(dir);


fric = 0.3;

blood = instance_create(x, y, oParticleBlood);