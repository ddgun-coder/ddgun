/// @description Insert description here
// You can write your code in this editor
var cx = mouse_x - camera_get_view_x(view_camera[0]);
r = (cx - xstart) / 64 * 255;
obj_show_rgb.g = r;