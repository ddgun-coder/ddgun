if(hat_button_main.windows == 5) {
	for(var i = 0; i < 15; i++) {
		if (i < floor(sprite_get_number(global.hat) / 4)) {
			draw_sprite(select, 0, x + 64 * i, y);
			draw_sprite(global.hat, i * 4, x + 64 * i, y);
		}
	}
}