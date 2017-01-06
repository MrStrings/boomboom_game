/// @description Insert description here
// You can write your code in this editor

if(state == WONDERING) {
	
	if(gotToPoint) {
		var dir = sign(centerX - x);
		point = random_range(centerX - x + dir * 100, centerX - x + dir * 200) + x;
		gotToPoint = false;
	}
	else {
		if(abs(centerX - point) <= abs(centerX - x) and sign(centerX - x) != sign(centerX - point)) {
			vx =  0;
			gotToPoint = true;
		}
		else {
			vx = Approach(vx, sign(point - x) * vxMaxWond, accel);
		}
		
	}
	

}
else if(state == CHARGING) {


}

show_debug_message(" point: " + string(point) + "  current pos: "  + string(x) + "  centerX: " + string(centerX))