if(shop_UI.windows = false) {
	switch(hat_button_main.windows) {
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
			break;
		default:
		room_goto(room_in)
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
		break;
	}
}