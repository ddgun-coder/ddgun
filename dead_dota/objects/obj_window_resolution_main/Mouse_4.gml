/// @description Insert description here
// You can write your code in this editor
if(hat_button_main.windows == 8) {
	if(click_w = 0) {
		instance_activate_object(obj_window_resolution);
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
		click_w = 1
	}	
	else {
		instance_deactivate_object(obj_window_resolution)
		audio_play_sound(Click_sound,1,false);
		audio_play_sound(Click_sound,1,false);
		click_w = 0
	}
}



