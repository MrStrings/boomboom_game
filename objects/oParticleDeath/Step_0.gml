/// @description Insert description here
// You can write your code in this editor


vy = Approach(vy, maxFall, grav);
vx = Approach(vx, 0, fric);

x += vx;
y += vy;

blood.x = x;
blood.y = y;
blood.dir = dir;