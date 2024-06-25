/// @description Insert description here
// You can write your code in this editor
if (hat_button_main.windows == 9) {
	var draw_y;
	with(obj_achievement) {
		draw_y = other.y + (layer_height / limit_height) * other.sprite_height;
	}
	draw_sprite(spr_wheel2, 1, x + 1, draw_y);
	
}





