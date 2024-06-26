if(shop_UI.windows == true and shop_UI.windows_index == 0)
{
	if (global.item_show == num) {
		draw_set_alpha(0.9);
	}
	else {
		draw_set_alpha(0.6);
	}
	if (room == room_main) {
		draw_sprite(spr_shopbutton, num, xstart , ystart);
	}
	else {
		draw_sprite(spr_shopbutton, num, xstart + camera_get_view_x(view_camera[0]) , ystart + camera_get_view_y(view_camera[0]));	
	}
	draw_set_alpha(1);
}
depth = - 5000