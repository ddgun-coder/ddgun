if (hat_button_main.windows == 6) {
	if (mouse_x > x and mouse_x < x + 320) {
	if (mouse_y > y and mouse_y < y + 84 * MAX_HEIGHT) {
		
	var w = floor((mouse_x - x) / 320);
    var h = floor((mouse_y - y) / 84) + height;
	var n = array_length(stats_array);
	var number = w + h
	if(number < n and number >= 0 ) {
		global.stats = stats_array[number]
		only_main.do_effect = true;
		//show_debug_message(number);
	}
	
	switch(global.stats) {
		 case spr_stats5:
			if (global.item[7] != spr_none) {
				prt_val_add(0 ,1000);
				global.item[7] = spr_none;
			}
		break;
		default:
			if !(global.stats == spr_stats1 ) {
				if (global.item[6] != spr_none) {
					 prt_val_add(0 ,1000);
					global.item[6] = spr_none;
				}
				 if (global.item[7] != spr_none) {
					 prt_val_add(0 ,1000);
					global.item[7] = spr_none;
				 }
			}
		break;
		}
	}
}
}	