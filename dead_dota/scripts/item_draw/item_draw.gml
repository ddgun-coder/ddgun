function item_draw(argument0) {
	var where = argument0;
	var xx, yy;
	if (room == room_main) {
		xx = xstart;
		yy = ystart;
	}
	else {
		xx = global.window_width / 2 - (1024 / 2 - xstart);
		yy = global.window_height - (768 - ystart);
	}
	x = xx + camera_get_view_x(view_camera[0]);
	y = yy + camera_get_view_y(view_camera[0]);
	
	yy += view_get_yport(0)
	var ind = global.item[where];

	draw_sprite(spr_itemz, where, xx, yy)
	if (global.item[where] != spr_none and shop_button1.item[ind].sprite != noone) {
		var spr = shop_button1.item[ind].sprite;
		draw_sprite_ext(spr, shop_button1.item[ind].sprite_ind, xx + 16, yy + 16, 0.5, 0.5, 0, c_white, 1);		
	}
	
	var time_max = 1;
	if (global.item[where] != spr_none) {
		time_max = shop_button1.item[global.item[where]].max_time;
	}
	draw_sprite_part_ext(spr_item_layer, 0, 0, 0, 30, 30 * (1 - global.item_time[where]/ time_max),
	                     xx, yy,
						 1, 1, c_white, 0.5);
						
	if (time_max - global.item_time[where] < 200 and time_max - global.item_time[where] > 0) {
		draw_sprite_ext(spr_item_layer, global.item[where], xx, yy, 1, 1, 0, c_red, 0.4)
	}
	draw_sprite(spr_item_num,where,xx,yy);
}
