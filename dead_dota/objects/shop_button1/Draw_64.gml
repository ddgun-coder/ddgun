 if(instance_exists(shop_UI)) {
   if(shop_UI.windows == true and shop_UI.windows_index == 0)
   {
	    if (!surface_exists(surf)) item_surf();
		var cx = camera_get_view_x(view_camera[0]);
        var cy = camera_get_view_y(view_camera[0]);
        x = xstart + cx;	
        y = ystart + cy;
       draw_surface_part(surf, 0, surf_y, 80 * weight, 80 * 3.9, xstart - 40, ystart - 40);
		for (var i = 0; i < weight; i++) {
			for (var j = 0; j < draw_height; j++) {
				var number = (j + my_layer) * weight + i;
				if (number >= array_size) exit;
				if (item_array[number].ban) {
					var draw_x = i * 80 + x;
					var draw_y = j * 80 + y;
					draw_sprite(spr_x, 0, draw_x, draw_y);
				}
			}
		}
	}
}
depth = - 5000



