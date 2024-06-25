if (instance_exists(testing)) {
	if (global.hat == spr_hat22) {
		draw_sprite(sprite_index, testing.aring_amount, global.window_width - (1024 - xstart), ystart);
	}
}
/*
if (instance_exists(testing)) {
	if (global.hat == spr_hat22) {
		draw_set_alpha(0.5);
		draw_sprite(spr_bigsaw, 0, xstart - camera_get_view_x(view_camera[0]), ystart - camera_get_view_y(view_camera[0]));
		draw_set_alpha(1);
		draw_sprite_part(spr_bigsaw, 0, 0, 0, 60, 76 * (testing.aring_amount / 3), xstart - camera_get_view_x(view_camera[0]) - 27, ystart - camera_get_view_y(view_camera[0]) - 9);
	}
}//구 아링기술