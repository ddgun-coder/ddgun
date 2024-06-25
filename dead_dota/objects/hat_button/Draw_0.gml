if(hat_button_main.windows == 1) {
	surf_made();
	var draw_y1 = my_layer * 78;
	var draw_y2 = 78 * 4;
	draw_surface_part(surf, 0, draw_y1, weight * 78, draw_y2, x - 32, y - 32);
	draw_sprite(spr_hat_rand, 0, x + 340, y - 184);
}