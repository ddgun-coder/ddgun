/// @description Insert description here
// You can write your code in this editor
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
if (!surface_exists(surf)) {
	surf = surface_create(global.window_width, global.window_height);
	surface_set_target(surf);
	draw_clear(c_black);
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	draw_circle(testing.x - x, testing.y - y, 150, false);
	surface_reset_target();
}
else {
	surface_set_target(surf);
	draw_clear(c_black);
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	draw_circle(testing.x - x, testing.y - y, 150, false);
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
	draw_surface(surf, x, y);
	gpu_set_blendmode(bm_subtract);
	draw_circle_color(testing.x, testing.y, 150, c_black, c_white, false);
	gpu_set_blendmode(bm_normal);
}