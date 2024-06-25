x = mouse_x - camera_get_view_x(view_camera[0]);
y = mouse_y - camera_get_view_y(view_camera[0]);
if (instance_exists(shop_UI)) {
	if (point_in_rectangle(mouse_x, mouse_y, shop_button1.x - 40, shop_button1.y - 40, shop_button1.x + 80 * (shop_button1.weight + 1)- 40, shop_button1.y + 80 * 3.9 - 40)){
		if (shop_UI.windows == true and shop_UI.windows_index == 0) {
			var w = floor((mouse_x + 40 - shop_button1.x) / 80);
			var h = floor((mouse_y + 40 - shop_button1.y + shop_button1.surf_y) / 80);
			var index = (h + shop_button1.my_layer) * shop_button1.weight + w;
			if (index >= shop_button1.array_size) exit;
			visible = true;
			time = shop_button1.item_array[index].max_time;
			explain = shop_button1.item_array[index].expl;
			name = shop_button1.item_array[index].name
		}
		else {
			visible = false;	
		}
	}
	else {
		visible = false;
		time = 0;
		explain = "";
	}
}
else {
	visible = false;	
}