/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = special;
for (var i = 0; i < 4; i++){
	if (x_array[i]) {
		question_time[i] += 0.02;	
	}
}
if (drop) {
	image_alpha = max(0, image_alpha - 0.01);
	anim_clock = min(1, anim_clock + 0.01);
	if (image_alpha <= 0) {
		instance_destroy();
	}	
}
if (reverse_time_start) {
	if (reverse_time > 0) {
		reverse_time--;
	}
	else {
		reverse = true;	
	}
}
if (reverse) {
	image_alpha = max(0, image_alpha - 0.02);
	anim_clock = max(0, anim_clock - 0.02);
	if (image_alpha <= 0) {
		instance_destroy();
	}
}
else {
	anim_clock = min(1, anim_clock + 0.02);
}
if (drop) {
	y = floor(ystart + 600 * animcurve_channel_evaluate(channel , anim_clock));
	x = xstart;
}
else {
	x = floor(xstart + sprite_width * animcurve_channel_evaluate(channel , anim_clock));
}







