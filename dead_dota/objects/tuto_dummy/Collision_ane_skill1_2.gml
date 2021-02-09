if (sturn <= 0 and live != 0) {
	hp -= 10;
	sturn = 30;
	audio_play_sound(have_hit ,0 ,false);
}