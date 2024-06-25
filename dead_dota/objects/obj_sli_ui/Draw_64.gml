if (instance_exists(testing)) {
	if (global.hat == spr_hat75) {
		var draw_x = global.window_width - (1024 - xstart);
		if (testing.combo = 0 and testing.heal_stack = 0) {
			draw_sprite(sprite_index, image_index, draw_x, ystart);
			image_index = 0
		}
		else {
			 if (testing.combo > 0) {
				 draw_sprite(sprite_index, image_index, draw_x, ystart);
				 image_index = 1
			 }
			 if (testing.heal_stack > 0) {
				 draw_sprite(sprite_index, image_index, draw_x, ystart);
				 image_index = 2
			 }
		}
	}
}