/// @description Insert description here
// You can write your code in this editor

var bboxside;

if (vx > 0) bboxside = bbox_right;
else		bboxside = bbox_left;

var vxTemp = vx;
repeat(abs(vxTemp)) {
	if(collision_point(bboxside, bbox_bottom + 1, oParSolid, false, noone) 
	   and !collision_point(bboxside + sign(vx), bbox_bottom + 1, oParSolid, false, noone)
	    or place_meeting(x + sign(vx), y, oParSolid)) {
		vx *= -1;
		vxTemp = 0;
	}
	x += sign(vxTemp);
}


// Shooting Player //

if(canShoot) {
	canShoot = false;
	alarm[0] = reloadTime * room_speed;
	
	if(instance_exists(oPlayer)) {
		var dist = distance_to_object(oPlayer)
		if(dist < minShootDist) instance_create(x, y, oPistolBullet);
	}
}