/// @description Insert description here
// You can write your code in this editor
if !(place_meeting(x, y, obj_ballbox)) {
	if (time < 0) {
		time = 2400;	
	}
}
else {
	time = 10;	
}
if (time == 0) {
	instance_create_depth(x, y, depth, obj_ballbox);
}
time--;
