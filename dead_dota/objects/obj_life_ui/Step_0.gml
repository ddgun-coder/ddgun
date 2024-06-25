/// @description Insert description here
// You can write your code in this editor
if (back) {
	if (time > 0) {
		time--;
	}
	else if (time == 0) {
		instance_destroy();	
	}
}
else {
	if (time < time_max) {
		time++;
	}	
}

target = floor(testing.YA - 90) / 360 * 8;

if (target < 0) {
	target += 8;	
}

if (keyboard_check_released(global.ctrl)) {
	back = true;
}