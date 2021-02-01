if(instance_exists(shop_UI)) {
	if(shop_UI.windows == true and shop_UI.windows_index == 0)
	{
		var cx = camera_get_view_x(view_camera[0]);
		var cy = camera_get_view_y(view_camera[0]);
		x = xstart + cx;
		y = ystart + cy;
		for(var j = 0; j < jj; j++) {
			for (var i = 0; i < 9; i++) {
				var number = j * 9 + i;
				if (global.item_show == item[number].what or global.item_show == 0) {
					draw_set_alpha(0.8);
				}
				else {
					draw_set_alpha(0);
				}
				draw_set_color(c_black)
				draw_set_halign(fa_center);
				draw_sprite_ext(select, 0, x + i * 64,  y + j * 64, 1, 1, 0, -1, 0.75)
				draw_sprite(spr_book, number, x + i * 64, y + j * 64);
				draw_text(x + i * 64, y + 14 + j * 64, string(item[number].price));
				draw_set_alpha(1);
			}
		}
	}
}