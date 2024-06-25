/// @description Insert description here
// You can write your code in this editor
if (hat_button_main.windows == 9) {
	draw_self();

	if (!surface_exists(surf)) {
		ui_surf_set();
	}
	draw_surface_part(surf, 0, layer_height, 256, draw_height, x + 128, y + 194);
}