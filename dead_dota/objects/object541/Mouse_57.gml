/// @description Insert description here
// You can write your code in this editor
if (act) {
	act = false;
	show_debug_message(dis_x - dis_x2);
	show_debug_message(dis_y - dis_y2);
	window_set_size(window_get_width() + dis_x - dis_x2, window_get_height() + dis_y - dis_y2);
}