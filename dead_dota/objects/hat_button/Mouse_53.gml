if (hat_button_main.windows == 1)
{
	if (mouse_x > x - 32 and mouse_x < x + 64 * 15 - 32) {
		if (mouse_y > y - 32 and mouse_y < y + 64 * 5 - 32) {
			var w = floor((mouse_x + 32 - x) / 64);
			var h = floor((mouse_y + 32 - y) / 64);
			scr_hat_change(w + h * 15 + 1);
			only_main.do_effect = true;
			global.skin = 0;
		}
	}
}