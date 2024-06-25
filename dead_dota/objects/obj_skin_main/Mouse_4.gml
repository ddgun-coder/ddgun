if (hat_button_main.windows != 5)
{
	hat_button_main.windows = 5;
}
else
{
	hat_button_main.windows = 0;
}
switch(shop_UI.windows)
{
	case true:
		shop_UI.windows = false;
	break;
	case false:
		shop_UI.windows = false;
	break;
}
audio_play_sound(Click_sound,1,false);
audio_play_sound(Click_sound,1,false);