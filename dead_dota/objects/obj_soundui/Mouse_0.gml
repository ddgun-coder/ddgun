/// @description Insert description here
// You can write your code in this editor
var cx = mouse_x - camera_get_view_x(view_camera[0]);
sound_x = (cx - xstart) / 64;
audio_group_set_gain(audiogroup_default, sound_x, 100);