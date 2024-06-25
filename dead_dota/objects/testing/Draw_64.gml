/// @description Insert description here
// You can write your code in this editor
var draw_x, draw_y;
var xoffset = 34, yoffset = 18;
if (global.hat == spr_hat77) {
	draw_x = global.window_width - 256;
	draw_y = global.window_height / 2 - 150;
	
	if (babo_change) {
		draw_sprite(spr_babo_ui_active, 0, draw_x, draw_y);
		draw_sprite_part(spr_babo_ui_active, 1, xoffset, 0, (213 - xoffset) * (babo_gage / 100), 50, draw_x + xoffset, draw_y);	
	}
	else {
		draw_sprite(spr_babo_ui, 0, draw_x, draw_y);
		draw_sprite_part(spr_babo_ui, 1, xoffset, 0, (213 - xoffset) * (babo_gage / 100), 50, draw_x + xoffset, draw_y);	
	}
}













