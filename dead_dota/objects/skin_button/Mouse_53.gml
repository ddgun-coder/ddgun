if (hat_button_main.windows == 5)
{
	if (mouse_x > x - 32 and mouse_x < x + 78 * 5 - 32) {
		if (mouse_y > y - 32 and mouse_y < y + 78 * 2 - 32) {
			var w = floor((mouse_x + 32 - x) / 78);
	        var h = floor((mouse_y + 32 - y) / 78);
			var num = w + h * 5
		if (num < floor(sprite_get_number(global.hat) / 4)) {
			global.skin = num;
			only_main.do_effect = true;
		}
	}
}
}