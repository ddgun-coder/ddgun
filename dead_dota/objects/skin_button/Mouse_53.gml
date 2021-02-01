if (hat_button_main.windows == 5)
{
	if (mouse_x > x - 32 and mouse_x < x + 64 * floor(sprite_get_number(global.hat) / 4) - 32) {
		if (mouse_y > y - 32 and mouse_y < y + 32) {
			var w = floor((mouse_x + 32 - x) / 64);
			global.skin = w;
			show_debug_message(w);
			only_main.do_effect = true;
		}
	}
}