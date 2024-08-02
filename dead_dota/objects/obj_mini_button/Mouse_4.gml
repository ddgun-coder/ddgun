if(hat_button_main.windows = 1 or hat_button_main.windows = 6) {
switch(num){
	case 0:
		hat_button_main.windows = 1
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	break;
	case 1:
		hat_button_main.windows = 6
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	break;
	case 2:
		shop_UI.windows = true
		hat_button_main.windows = 0
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
	break;
}
}