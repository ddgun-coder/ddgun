/// @description Insert description here
// You can write your code in this editor
if (act) { 
	dis_x = display_mouse_get_x() - this_x;
	dis_y = display_mouse_get_y() - this_y;
	window_set_position(dis_x, dis_y)
}