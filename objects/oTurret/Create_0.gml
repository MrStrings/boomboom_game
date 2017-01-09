/// @description Insert description here
// You can write your code in this editor

dir = 0;

if(place_meeting(x + 1, y, oParSolid))
	dir = 180;
else if(place_meeting(x, y + 1, oParSolid))
	dir = 90;
else if(place_meeting(x, y - 1, oParSolid))
	dir = 270;
	
	
reloadTime = 1 * room_speed;
alarm[0] = reloadTime;