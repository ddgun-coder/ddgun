if (sturn <= 0 and live != 0) {
	hp -= 20;
	sturn = 40;
	audio_play_sound(have_hit ,0 ,false);
}