/// @description Insert description here
// You can write your code in this editor
if (show) {
	var draw_y;
	var n = array_length(free_set_array);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	for (var i = 0; i < n; i++) {
		
		draw_y = dy + 64 * (i + 1);
		draw_sprite(spr_freeset_UI, 0, draw_x - 32, draw_y);
		var n2 = array_length(free_set_array[i]);
		for (var j = 0; j < n2; j++) {
			var val = free_set_array[i][j];
			if (val != -1) {
				var spr = shop_button1.item[val].sprite;
				var sub = shop_button1.item[val].sprite_ind;
				draw_sprite(spr, sub, draw_x + 64 * j + 3, draw_y + 32);	
			}
		}
		draw_text_bold_color(draw_x + 15, draw_y + 15, files[i], c_black, c_white);
	}
}







