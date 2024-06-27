if(instance_exists(shop_UI)) {
	if(shop_UI.windows == true and shop_UI.windows_index == 1)
	{
		var cx = camera_get_view_x(view_camera[0]);
		var cy = camera_get_view_y(view_camera[0]);
		x = xstart + cx;
		y = ystart + cy;
		x = round(x);
		y = round(y);
		for(var j = 0; j < mj; j++) {
			for (var i = 0; i < 9; i++) {
				var number = j * 9 + i;
				draw_set_color(c_black)
				draw_set_halign(fa_center);
				draw_sprite_ext(select, 0, x + i * 70,  y + j * 70, 1, 1, 0, -1, 0)
				draw_sprite(spr_pickaxe1 + number, 0, x + i * 70, y + j * 70);
				draw_text(x + i * 70, y + 14 + j * 70, string(item[number].price));
				draw_set_alpha(1);
			}
		}
	}
}