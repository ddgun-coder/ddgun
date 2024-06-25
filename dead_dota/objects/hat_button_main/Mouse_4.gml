if (windows != 1)
{
	windows = 1;
}
else
{
	windows = 0;
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
/*
hat_button.alarm[0] = 2;
hat_button2.alarm[0] = 2;
hat_button3.alarm[0] = 2;
hat_button4.alarm[0] = 2;
hat_button5.alarm[0] = 2;