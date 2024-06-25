alarm[1] = 30;
if (team == global.team) {
	testing.big_val_time = 40;
	testing.go_to_scale = 1;
}
else {
	testing.big_val_time = 800;
	testing.go_to_scale = 0.5;
}
audio_play_sound(bwiza_3_sound,9,false);