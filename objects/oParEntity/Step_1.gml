onGround = OnGround();

cLeft  = place_meeting(x - 1, y, oParSurfaceSolid); 
cRight = place_meeting(x + 1, y, oParSurfaceSolid);

if (cLeft) 
    wallTarget = instance_place(x - 1, y, oParSurfaceSolid);

if (cRight) 
    wallTarget = instance_place(x + 1, y, oParSurfaceSolid);


