/// @description Insert description here
// You can write your code in this editor
var file;
if (!file_exists(file_path)) {
	file = file_text_open_write(file_path);
	file_text_close(file);
	exit;
}
file = file_text_open_write(file_path);
if (image_index < ip_num) {
	global.ips[image_index] = get_string("저장할 ip", "");
	save_ip();
}