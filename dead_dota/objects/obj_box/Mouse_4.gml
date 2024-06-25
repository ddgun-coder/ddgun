if (room == room_main) {
switch(shop_UI.windows)
{
	case true:
		shop_UI.windows = false;
	break;
	case false:
		shop_UI.windows = true;
	break;
}


switch(hat_button_main.windows) 
{
default:
hat_button_main.windows = 0
}


if (Skill_UI.windows = true)
{
	Skill_UI.windows = false;
}
else
{
	Skill_UI.windows = false;
}
}

else {
	switch(shop_UI.windows)
{
	case true:
		shop_UI.windows = false;
	break;
	case false:
		shop_UI.windows = true;
	break;
}
}
audio_play_sound(Click_sound,1,false);
audio_play_sound(Click_sound,1,false);