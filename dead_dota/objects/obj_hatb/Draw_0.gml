depth = -5000;
if (hat_button_main.windows == 1)
{
	if (global.hat_num == num) {
		draw_sprite_ext(sprite_index, num, xstart -6, ystart -5,1.2,1.2
	,1,c_white,1);
	}
	else {
		draw_sprite_ext(sprite_index, num, xstart, ystart,1,1
	,1,c_white,0.2);
	}
}

