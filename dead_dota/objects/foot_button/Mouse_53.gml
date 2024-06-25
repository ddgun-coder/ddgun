if (hat_button_main.windows == 3)
{
	if (mouse_x > x - 32 and mouse_x < x + 78 * 5 - 32) {
		if (mouse_y > y - 32 and mouse_y < y + 78 * 6 - 32) {
			var w = floor((mouse_x + 32 - x) / 78);
			var h = floor((mouse_y + 32 - y) / 78);
			var number = w + h * 6
			//show_debug_message(number)
			if(number < max_num) {
			   global.foot = foot_array[number];
			   global.foot_index = number;
			   only_main.do_effect = true;
			   hat_button_main.windows = 0;
			}
		}
	}
}