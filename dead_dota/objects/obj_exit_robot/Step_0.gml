/// @description Insert description here
// You can write your code in this editor
if (pull_up == false) {
	delta_x++;
	if (delta_x == time_max / 2) pull_up = true;
}
else {
	delta_x--;	
}

curve_val = animcurve_channel_evaluate(channel, delta_x / time_max);
var len = max(point_distance(x, y, cid_id.x, cid_id.y) * curve_val, 0);
if (cid_id == global.my_cid_id) {
	if (pull_up) {
		testing.x = x + lengthdir_x(len, dir);
		testing.y = y + lengthdir_y(len, dir);
	}
}