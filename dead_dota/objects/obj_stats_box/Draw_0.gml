if (room != room_main) {
	if (global.stats!= spr_stats1 or global.stats!= spr_stats5) {
		var xx = camera_get_view_x(view_camera[0]) + global.window_width / 2 - (1024 / 2 - xstart);
		var yy = camera_get_view_y(view_camera[0]);
			draw_sprite(spr_stats_box, image_index, xx, ystart + yy)
			draw_sprite_part_ext(spr_stats_box, image_index, 16, 16, 32, 32, xx , ystart + yy + 32, 1, -1, c_black, 0.5);
			draw_sprite_part_ext(spr_stats_layer, image_index, 16, 16, 32, 32 * (1 - testing.b_cooltime /b_cooltime_max),xx , ystart + yy + 32, 1, -1, c_white, 1);
			/*draw_sprite_ext(spr_stats_box, image_index, xstart + xx, ystart + yy, 1, 1, 0, c_red, 0.4)*/
	}
}
else {
	draw_self()
}