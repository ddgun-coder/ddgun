/// @description Insert description here
// You can write your code in this editor
if (instance_exists(hat_button_main)) {
	if (hat_button_main.windows != 8) {
		exit;	
	}
}
if (global.sound_effect) {
	global.sound_effect = 0;
	image_index = 0;
	audio_group_set_gain(audiogroup_default, 0, 0);
	obj_soundui.sound_x = 0;
}
else {
	global.sound_effect = 1;
	image_index = 1;
	audio_group_set_gain(audiogroup_default, 1, 0);
	obj_soundui.sound_x = 1;
}