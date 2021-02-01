function draw_text_bold(argument0, argument1, argument2) {
	var d_x = argument0
	var d_y = argument1
	var str = argument2
	draw_text(d_x, d_y + 1, str);
	draw_text(d_x + 1, d_y, str);
	draw_text(d_x, d_y - 1, str);
	draw_text(d_x - 1, d_y, str);


}
