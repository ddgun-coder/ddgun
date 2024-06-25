depth = -5000;
if (hat_button_main.windows == 1)
{
	if (global.hat_num == num) {
		draw_set_alpha(1);
	}
	else {
		draw_set_alpha(0.2);
	}
	draw_sprite(sprite_index, num, xstart, ystart);
	draw_set_alpha(1);
}

