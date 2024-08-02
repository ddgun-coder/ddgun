if(hat_button_main.windows == 1) {
	surf_made();
	var draw_y1 = my_layer * 78;
	var draw_y2 = 78 * 4;
	draw_surface_part(surf, 0, draw_y1, weight * 78, draw_y2, x - 32, y - 32);
	draw_sprite(spr_hat_rand, 0, x + 305, y - 184);
}

if (hat_button_main.windows > 0 and hat_button_main.windows < 8) {
	draw_sprite(spr_hat_rand, 1, x + 350, y - 184);
}	