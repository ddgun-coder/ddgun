function item_draw(argument0) {
	var where = argument0;
	var xx = camera_get_view_x(view_camera[view_current]);
	var yy = camera_get_view_y(view_camera[view_current]);

	draw_sprite(spr_itemz, where, xstart + xx, ystart + yy)
	if (global.item[where] != spr_none) {
		draw_sprite_ext(spr_book, global.item[where], xstart + xx + 16, ystart + yy + 16, 0.5, 0.5, 0, -1, 1)
	}
	draw_sprite_part_ext(spr_item_layer, 0, 0, 0, 30, 30 * (1 - global.item_time[where]/ global.item_time_max[where]),
	                     xstart + xx, ystart + yy,
						 1, 1, -1, 0.5);
	if (global.item_time_max[where] - global.item_time[where] < 200 and global.item_time_max[where] - global.item_time[where] > 0) {
		draw_sprite_ext(spr_item_layer, global.item[where], xstart + xx, ystart + yy, 1, 1, 0, c_red, 0.4)
	}


}
