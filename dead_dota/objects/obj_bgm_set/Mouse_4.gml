/// @description Insert description here
// You can write your code in this editor
if (room == room_main) {
	if (hat_button_main.windows != 8) {
		exit;	
	}
}
if (global.BGM) {
	global.BGM = 0;	
	audio_stop_all();
	image_index = 0;
	obj_BGMui.sound_x = 0;
}
else {
	global.BGM = 1;
	image_index = 1;
	BMG_play();
	obj_BGMui.sound_x = 1;
}