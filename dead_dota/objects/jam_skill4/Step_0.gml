image_angle = cid_id.YA;
if (cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}

if (cid_id.cancle_able == 2) {
	dmg = 18;
	if (!audio_played) {
		audio_play_sound(snd_jamED, 0, false);	
		audio_played = true;
	}
	image_xscale += 0.4;
	image_yscale += 0.4;
	image_alpha -= 0.1;
	if (alarm[0] > 10) {
		alarm[0] = 10;
	}
}
x = cid_id.x;
y = cid_id.y;
depth = 100;