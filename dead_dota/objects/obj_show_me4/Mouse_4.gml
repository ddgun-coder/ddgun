if(hat_button_main.windows == 8){
if (gpu_get_texfilter()) {
	gpu_set_texfilter(false);
}
else {
	gpu_set_texfilter(true);
}
	audio_play_sound(Click_sound,1,false);
	audio_play_sound(Click_sound,1,false);
}