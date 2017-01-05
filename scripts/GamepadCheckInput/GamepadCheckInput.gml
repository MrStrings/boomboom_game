/// GamepadCheckInput()

for(var i = gp_face1; i <= gp_padr; i++) {
	if(gamepad_button_check(0, i))
		return true;
}

for(var i = gp_axislh; i <= gp_axisrv; i++) {
	if(gamepad_axis_value(0, i) > 0.4)
		return true;
}

return false;