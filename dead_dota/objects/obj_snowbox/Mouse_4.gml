switch(room) {
default:
if (instance_exists(testing)) {
if (global.hat =spr_hat72) {
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
switch(obj_snowshop.windows)
{
	case true:
		obj_snowshop.windows = false;
	break;
	case false:
		obj_snowshop.windows = true;
	break;
}
audio_play_sound(Click_sound,1,false);
audio_play_sound(Click_sound,1,false);
}
}
break;
}