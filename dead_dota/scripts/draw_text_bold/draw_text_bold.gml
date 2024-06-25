function draw_text_bold(argument0, argument1, argument2) {
	var d_x = argument0
	var d_y = argument1
	var str = argument2
	draw_text(d_x, d_y + 1, str);
	draw_text(d_x + 1, d_y, str);
	draw_text(d_x, d_y - 1, str);
	draw_text(d_x - 1, d_y, str);
}
function draw_text_bold_color(_dx, _dy, _str, _color1, _color2) {
	draw_set_color(_color1);
	draw_text(_dx, _dy + 1, _str);
	draw_text(_dx + 1, _dy, _str);
	draw_text(_dx, _dy - 1, _str);
	draw_text(_dx - 1, _dy, _str);
	draw_set_color(_color2);
	draw_text(_dx, _dy, _str);
}
