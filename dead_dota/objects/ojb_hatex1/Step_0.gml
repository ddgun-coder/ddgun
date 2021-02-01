x = mouse_x;
y = mouse_y;
if (instance_exists(shop_UI) and mouse_x > shop_button1.x - 32 and mouse_x < shop_button1.x + 64 * 8 + 32 and mouse_y > shop_button1.y - 32 and mouse_y < shop_button1.y + 64 * (jj - 1) + 32) {
	if (shop_UI.windows == true and shop_UI.windows_index == 0) {
		visible = true;
		var w = floor((mouse_x + 32 - shop_button1.x) / 64);
		var h = floor((mouse_y + 32 - shop_button1.y) / 64);
		time = shop_button1.item[h * 9 + w].max_time;
		explain = shop_button1.item[h * 9 + w].expl;
	}
}
else {
	visible = false;
	time = 0;
	explain = "";
}