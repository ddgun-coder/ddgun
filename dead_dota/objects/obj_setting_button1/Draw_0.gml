if(hat_button_main.windows == 8) {
	draw_self()		
	draw_set_font(font1)
	draw_set_color(c_black);
	draw_text_bold(x + 70, y + 66,"그래픽")
	draw_set_color(make_color_rgb(219, 223, 234));
	draw_text(x	+ 70, y + 66, "그래픽")
	
	draw_set_color(c_black);
	draw_text_bold(x + 70, y + 115,"사운드")
	draw_set_color(make_color_rgb(219, 223, 234));
	draw_text(x	+ 70, y + 115, "사운드")
	
	draw_set_color(c_black);
	draw_text_bold(x + 70, y + 164,"키설정")
	draw_set_color(make_color_rgb(219, 223, 234));
	draw_text(x	+ 70, y + 164, "키설정")
	
	draw_set_halign(fa_left);
}	