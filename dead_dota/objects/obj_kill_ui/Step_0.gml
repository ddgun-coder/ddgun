/// @description Insert description here
// You can write your code in this editor
if (hat_button_main.windows == 10) {
	if (point_in_rectangle(mouse_x, mouse_y, x, y + 253, x + 512, y + 253 + 64) and mouse_check_button_pressed(mb_left)) {
		index = floor((mouse_x - x + layer_height) / 64);
		hat = global.hat_array[index];
	}
}




