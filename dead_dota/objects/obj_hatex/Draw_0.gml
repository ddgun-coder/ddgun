draw_set_font(font1);
draw_self();
/*
if (mouse_x > room_width / 2) {
	image_xscale = -1.2;
	image_yscale = 1.2;
	draw_set_halign(fa_right);
}
/*
else {
	image_xscale = 1.2;
	image_yscale = 1.2;
	draw_set_halign(fa_left);
}
구기술*/
if (mouse_x > room_width / 2) {
	image_xscale = -1.2;
	image_yscale = 1.2;
	draw_set_halign(fa_center);
}

draw_set_font(Font3)
draw_set_color(c_white);
draw_text(x - 130, y + 25, name );

draw_set_font(font1)
draw_set_color(make_color_rgb(254, 215, 100));
draw_text_ext(x - 130, y + 70, "' " + explain + " '", 16, 300);

draw_set_font(font1)
draw_set_color(c_black);
draw_text_bold(x - 130, y + 120, "" + skill);
draw_set_color(make_color_rgb(159, 162, 169));
draw_text(x - 130, y + 120, "" + skill);

draw_set_halign(fa_left);