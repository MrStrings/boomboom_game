// Input variables for debug room traversal
var kRestart, kExit, kPrev, kNext;

kRestart = keyboard_check_pressed(ord("R"));
kExit    = keyboard_check_pressed(vk_escape);
kPrev    = keyboard_check_pressed(vk_subtract) || keyboard_check_pressed(ord("N"));
kNext    = keyboard_check_pressed(vk_add) || keyboard_check_pressed(ord("M"));

if (kRestart)
    room_restart();
if (kExit)
    game_end();
    
// Iterate through rooms backward
if (kPrev) {
    if (room == room_first)
        room_goto(room_last);
    else
        room_goto_previous();
}

// Iterate through rooms forwards
if (kNext) {
    if (room == room_last)
        room_goto(room_first);
    else
        room_goto_next();
}


if(keyboard_check(vk_anykey))
	global.input_device = global.keyboard;
else if(GamepadCheckInput())
	global.input_device = global.gamepad
