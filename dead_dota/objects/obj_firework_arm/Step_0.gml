/// @description Insert description here
// You can write your code in this editor
var max_num = 80;
if (time > max_num) {
	instance_destroy();
}
else {
	time++;
}
var _ac = animcurve_channel_evaluate(channel, time / max_num);
image_yscale = _ac * 2 * scale;
image_xscale = _ac * 2 * scale;
image_alpha = 1 - time / max_num;
x = xstart + lengthdir_x(_ac / 2, image_angle);
y = ystart + lengthdir_y(_ac / 2, image_angle);