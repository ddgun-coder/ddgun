/// @description Insert description here
// You can write your code in this editor
if (back) {
	anim_clock = max(0, anim_clock - 0.03);
}
else {
	anim_clock = min(1, anim_clock + 0.05);		
}
if (back) {
	if (anim_clock == 0) instance_destroy();
}
else {
	if (anim_clock == 1) {
		back = true;
		if (cid_id == global.my_cid_id) {
			with(testing) {
				normal_play(it_hing)
			}
			audio_play_sound(snd_babo1, 1, false);
		}
	}
}

var ace = animcurve_channel_evaluate(channel , anim_clock);

x = cid_id.x;
y = cid_id.y;
image_xscale = (1 - ace) * 3 + 1;
image_yscale = (1 - ace) * 3 + 1;
image_alpha = ace;












