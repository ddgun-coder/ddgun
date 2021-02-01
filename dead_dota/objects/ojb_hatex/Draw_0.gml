draw_self();
if (mouse_x > room_width / 2) {
	image_xscale = -1;
	draw_set_halign(fa_right);
}
else {
	image_xscale = 1;
	draw_set_halign(fa_left);
}
draw_text(x , y + 10, "이름:" + name );
draw_text(x , y + 30, "설명:" + explain);
draw_set_halign(fa_left);