if(hat_button_main.windows == 5) {
	for(var i = 0; i < 5; i++) {
	for(var j = 0; j < 2; j++) {
		var num = i + j * 5
		if (num < floor(sprite_get_number(global.hat) / 4)) {
			draw_sprite(select, 0, x + 78 * i, y + 78 * j);
			draw_sprite(global.hat, num * 4, x + 78 * i, y + 78 * j);
		}
	}
}
}
/*
if(hat_button_main.windows == 5) {
	for(var i = 0; i < 5; i++) {
	    for(var j = 0; j < 1; j++) {
			var draw_x = x + i * 64
			var draw_y = y + i * 64
		    if (i < floor(sprite_get_number(global.hat) / 4)) {
			    draw_sprite(select, 0, draw_x, draw_y);
			    draw_sprite(global.hat, j + i * 4, draw_x, draw_y);
		    }
	    }    
    }
}