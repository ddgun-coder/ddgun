/// @description Insert description here
// You can write your code in this editor
x = camera_get_view_x(view_camera[view_current]);
y = camera_get_view_y(view_camera[view_current]);
if (!surface_exists(surf)) {
	surf = surface_create(3000, 2000);
}
else {
	surface_set_target(surf);
	draw_clear(c_black);
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	draw_circle(testing.x - x, testing.y - y, rad, false);
	for (var i  = 0; i < instance_number(obj_light); i++) {
		var temp_id = instance_find(obj_light, i);
		var temp_x = temp_id.x - x;
		var temp_y = temp_id.y - y;
		draw_circle(temp_x, temp_y, 75, false);
	}
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
	draw_surface(surf, x, y);
	gpu_set_blendmode(bm_subtract);
	draw_circle_color(testing.x, testing.y, rad, c_black, c_white, false);
	gpu_set_blendmode(bm_normal);
}