/// @description Insert description here
// You can write your code in this editor
if (hat_button_main.windows == 0) {
	if (hat_button_main.windows != 10) {
		hat_button_main.windows = 10;
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	}
	else {
		hat_button_main.windows = 0;	
	}
}










