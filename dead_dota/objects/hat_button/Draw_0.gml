if(hat_button_main.windows == 1) {
	for(var i = 0; i < 15; i++) {
		for(var j = 0; j < 5; j++) {
			var index = i + j * 15
			if (index < 72) {
				draw_sprite(select, 0, x + 64 * i, y + 64 * j);
				draw_sprite(global.hat_array[index + 1], 0, x + 64 * i, y + 64 * j);
				if (global.ban_list[index + 1]) {
					draw_sprite(spr_x, 0, x + 64 * i, y + 64 * j);
				}
			}
		}
	}
}
/*
if(hat_button_main.windows == 1)
{
	draw_self();
	draw_sprite(spr_hat1 + number, 0, x, y);
}