/// @description Insert description here
// You can write your code in this editor
if (global.BGM) {
	global.BGM = 0;	
	audio_stop_all();
	image_index = 0;
}
else {
	global.BGM = 1;
	image_index = 1;
	BMG_play();
}