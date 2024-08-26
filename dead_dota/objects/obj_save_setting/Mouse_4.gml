/// @description Insert description here
// You can write your code in this editor
if(hat_button_main.windows == 8 and image_index == 0) {
	var path = "setting.txt";
	if (!file_exists(path)) {
		file = file_text_open_write(path);
		file_text_close(file);
	}
	var file = file_text_open_write(path);
	file_text_write_real(file, audio_group_get_gain(audiogroup_default));
	file_text_writeln(file);
	file_text_write_real(file, audio_group_get_gain(audio_bgm));
	file_text_writeln(file);
	file_text_write_real(file, global.window_height);
	file_text_writeln(file);
	file_text_write_real(file, global.window_width);
	file_text_writeln(file);
	file_text_write_real(file, global.show_hitbox);
	file_text_writeln(file);
	file_text_write_real(file, global.show_skin);
	file_text_writeln(file);
	file_text_write_real(file, global.wild_circle);
	file_text_writeln(file);
	file_text_write_real(file, gpu_get_texfilter());
	file_text_writeln(file);
	file_text_write_real(file, global.show_kill_ui);
	file_text_writeln(file);
	file_text_write_real(file, global.show_toKill_ui);
	file_text_writeln(file);
	
	file_text_close(file);
	image_index = 1;
	alarm[0] = 100;
}







