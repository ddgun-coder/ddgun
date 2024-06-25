/// @description Insert description here
// You can write your code in this editor
image_xscale = global.window_width / 1024;
if (act) { 
	dis_x = display_mouse_get_x() - this_x;
	dis_y = display_mouse_get_y() - this_y;
	window_set_position(dis_x, dis_y)
}
var de_mouse_y = device_mouse_y_to_gui(0);
if (0 <= de_mouse_y and de_mouse_y <= 18 and mouse_check_button(mb_left)) {
	act = true;
	this_x = display_mouse_get_x() - window_get_x();
	this_y = display_mouse_get_y() - window_get_y();
}