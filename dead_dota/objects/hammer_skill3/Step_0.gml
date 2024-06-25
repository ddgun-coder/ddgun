image_xscale = cid_id.big_val * big_val;
image_yscale = cid_id.big_val * big_val;
big_val += 0.01;
image_angle = cid_id.YA + YAdelta;
y = cid_id.y ;
x = cid_id.x ;
YAdelta += 16 * big_val;

audio_sound_pitch(snd, 0.1 + big_val);

if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
	audio_stop_sound(kpower_4_sound);
}