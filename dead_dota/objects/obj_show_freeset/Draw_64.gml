/// @description Insert description here
// You can write your code in this editor
if (show) {
	var n = array_length(free_set_array);
	for (var i = 0; i < n; i++) {
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_bottom);

		draw_sprite(spr_freeset_UI, 0, draw_x - 32, y + 64 * (i + 1));
		draw_text(draw_x, y + 64 * (i) - 10, files[i]);
		var n2 = array_length(free_set_array[i]);
		for (var j = 0; j < n2; j++) {
			var val = free_set_array[i][j];
			if (val != -1) {
				var spr = shop_button1.item[val].sprite;
				var sub = shop_button1.item[val].sprite_ind;
				draw_sprite(spr, sub, draw_x + 64 * j, y + 64 * (i + 1) + 32);	
			}
		}
	}
}







