if(hat_button_main.windows = 2 or hat_button_main.windows = 3 or hat_button_main.windows = 4 or hat_button_main.windows = 5) {
switch(num){
	case 3:
		hat_button_main.windows = 2
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	break;
	case 4:
		hat_button_main.windows = 3
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	break;
	case 5:
		hat_button_main.windows = 4
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	break;
	case 6:
		hat_button_main.windows = 5
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	break;
}
}