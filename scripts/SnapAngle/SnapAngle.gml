/// SnapAngle(angle, interval)

for(var i = 0; i <= 360; i += argument[1]) {
	if(argument[0] > i - argument[1]/2 and argument[0] <= i + argument[1]/2)
		return i;
}

return argument[0];