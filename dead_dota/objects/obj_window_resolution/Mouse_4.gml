if(hat_button_main.windows == 8) {
if (image_index == 3) {
	scr_set_full();
	audio_play_sound(Click_sound,1,false);
	audio_play_sound(Click_sound,1,false);
	exit;
}	
global.window_width = width;
global.window_height = height;

window_set_size(global.window_width, global.window_height + 18);
surface_resize(application_surface, global.window_width, global.window_height + 18);
instance_deactivate_object(object_index);
obj_window_resolution_main.click_w = 0

}
