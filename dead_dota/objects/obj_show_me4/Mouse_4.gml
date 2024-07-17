if(hat_button_main.windows == 8){
if (gpu_get_texfilter()) {
	gpu_set_texfilter(false);
	display_reset(8, true);
}
else {
	gpu_set_texfilter(true);
	display_reset(0, true);
}
	audio_play_sound(Click_sound,1,false);
	audio_play_sound(Click_sound,1,false);
}