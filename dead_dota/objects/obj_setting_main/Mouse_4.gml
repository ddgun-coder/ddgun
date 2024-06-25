if (hat_button_main.windows != 8)
{
	obj_setting_button1.set_layer_activate(global.sub_setting);
	hat_button_main.windows = 8;
}
else
{
	obj_setting_button1.deactivate_layer_all();
	hat_button_main.windows = 0;
}

shop_UI.windows = false;

audio_play_sound(Click_sound,1,false);
audio_play_sound(Click_sound,1,false);