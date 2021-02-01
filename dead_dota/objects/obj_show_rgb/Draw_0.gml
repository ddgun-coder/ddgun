/// @description Insert description here
// You can write your code in this editor
if (global.hat == spr_secret) {
	x = xstart + camera_get_view_x(view_camera[view_current]);
	y = ystart + camera_get_view_y(view_camera[view_current]);
	draw_self();
	draw_set_color(make_color_rgb(r, g, b));
	draw_rectangle(x + 10, y + 10, x + 55, y + 55, false);
	draw_set_color(c_white);
}