draw_set_font(font1);

draw_self();
if (mouse_x > room_width / 2) {
	image_xscale = -1;
	image_yscale = 1.6;
	draw_set_halign(fa_center);
}	
draw_set_font(Font3)
/*draw_text_bold(x - 105, y + 32, name);*/
draw_set_color(c_white);
draw_text(x - 105, y + 32, name);

draw_set_font(font0)
draw_set_color(make_color_rgb(32, 23, 79));
draw_text_bold(x - 105, y + 55, type);
draw_set_color(make_color_rgb(136, 223, 249));
draw_text(x - 105, y + 55, type);

draw_set_font(font1)
draw_set_color(make_color_rgb(254, 215, 100));
draw_text_ext(x - 105, y + 100, "" + skill, 14, 300);

draw_set_color(make_color_rgb(219, 223, 234));
draw_text_ext(x - 105 , y + 150, "" + explain, 14, 300);

draw_set_font(font2)
draw_set_color(make_color_rgb(159, 162, 169));
draw_text_ext(x - 105, y + 195, "" + story, 14, 300);
draw_set_font(font1)
draw_set_halign(fa_left)