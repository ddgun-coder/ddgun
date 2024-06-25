var path = "setting.txt";
if (!file_exists(path)) {
	file = file_text_open_write(path);
	file_text_close(file);
}
var file = file_text_open_write(path);
file_text_write_real(file, global.back_index);
file_text_writeln(file);
global.back_index += 1
audio_play_sound(Click_sound,1,false);
audio_play_sound(Click_sound,1,false);