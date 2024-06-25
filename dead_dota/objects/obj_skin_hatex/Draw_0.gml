draw_set_font(font1);
draw_self()
if (mouse_x > room_width / 2) {
	image_xscale = -1;
	image_yscale = 1;
	draw_set_halign(fa_center);
}
draw_set_color(c_black);
draw_text_bold(x - 105 , y + 25, "이름: " + name );
draw_set_color(c_white);
draw_text(x - 105 , y + 25, "이름: " + name );
draw_set_color(c_lime);
draw_text(x - 105 , y + 50, "" + explain);
draw_set_color(c_teal);
draw_text_bold(x - 105 , y + 100, "MADE  BY  " + made);
draw_set_color(c_white);
draw_text(x - 105 , y + 100, "MADE  BY  " + made);
draw_set_halign(fa_left);