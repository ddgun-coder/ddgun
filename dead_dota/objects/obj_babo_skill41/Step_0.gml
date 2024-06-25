/// @description Insert description here
// You can write your code in this editor
if (back_real) {
	anim_clock = max(0, anim_clock - 0.06);
}
else {
	anim_clock = min(1, anim_clock + 0.1);		
}

if (back) {
	if (anim_clock == 0) instance_destroy();
}
else {
	if (anim_clock == 1) {
		call_later(20, time_source_units_frames, function() {
			back_real = true;	
		});
		back = true;
		if (cid_id == global.my_cid_id) {
			var snd = audio_play_sound(snd_babo1_fail, 1, false);
			audio_sound_set_track_position(snd, 0.3);
		}
	}
}

var ace = animcurve_channel_evaluate(channel , anim_clock);

x = cid_id.x;
y = cid_id.y;
image_xscale = (1 - ace) * 3 + 1;
image_yscale = (1 - ace) * 3 + 1;
image_alpha = ace;












