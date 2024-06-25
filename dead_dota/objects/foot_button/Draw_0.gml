if(hat_button_main.windows == 3) {
	for(var i = 0; i < 5; i++) {
		for(var j = 0; j < 6; j++) {
			var index = i + j * 6
			if (index < max_num) {
				var draw_x = x + 78 * i;
				var draw_y = y + 78 * j;
				draw_sprite(select, 0, draw_x, draw_y);
				draw_sprite(foot_array[index], 0, draw_x, draw_y);
				var _ind = array_get_index(foot_array, global.foot);
				if (index == _ind) {
					draw_sprite(sprite_index, 1, draw_x, draw_y);	
				}
			}
		}
	}
}	