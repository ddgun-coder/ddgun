/// @description Insert description here
// You can write your code in this editor
if (instance_exists(hat_button_main)) {
	if (hat_button_main.windows != 8) {
		exit;	
	}
}
sound_x = (mouse_x - x) / 64;
audio_group_set_gain(audiogroup_default, sound_x, 100);