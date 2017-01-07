/// @description init variables

Singleton();

stretch = false;

window_set_size(global.resolution_width, global.resolution_height);

if(instance_exists(oPlayer)) {
	x = oPlayer.x - 20;
	y = oPlayer.y - 20;
}