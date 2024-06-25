if(hat_button_main.windows == 6) {
	var n = min(array_length(stats_array), MAX_HEIGHT);
	for (var i = 0; i < n; i++) {
		var draw_y = y + i * 84
		stats_list_draw(i + height, draw_y);
	}
}