x = camera_get_view_x(view_camera[0]) + global.window_width - (1024 - xstart);
y = camera_get_view_y(view_camera[0]) + global.window_height - (768 - ystart);
;
if (room == room_tuto or room == room_in) {
	draw_sprite(sprite_index, 0, x, y);
	exit;
}
if (instance_exists(testing)) {
	if (testing.live = 1) {
		if (testing.hp > 80) {
			draw_sprite(sprite_index, 0, x, y);
		}
		else {
			if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
				draw_sprite(spr_exit_ui_exp, 0, mouse_x, mouse_y);
				draw_set_color(c_red);
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_text(mouse_x - 120, mouse_y - 50, "체력 80이하는 못나감");
			}
			draw_sprite(sprite_index, 1, x, y);
		}
	}
}