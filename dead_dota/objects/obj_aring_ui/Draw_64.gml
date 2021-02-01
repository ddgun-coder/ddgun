/// @description Insert description here
// You can write your code in this editor
if (instance_exists(testing)) {
	if (global.hat == spr_hat22) {
		draw_set_alpha(0.5);
		draw_sprite(spr_bigsaw, 0, xstart - camera_get_view_x(view_camera[view_current]), ystart - camera_get_view_y(view_camera[view_current]));
		draw_set_alpha(1);
		draw_sprite_part(spr_bigsaw, 0, 0, 0, 60, 76 * (testing.aring_amount / 3), xstart - camera_get_view_x(view_camera[view_current]) - 27, ystart - camera_get_view_y(view_camera[view_current]) - 9);
	}
}