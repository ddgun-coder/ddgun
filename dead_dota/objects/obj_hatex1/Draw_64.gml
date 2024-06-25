draw_self();
draw_set_halign(fa_center);
draw_set_font(Font3)

switch (room) {
case room_main :
    draw_set_color(c_white);
    draw_text(x- 130, y + 15, "쿨타임:  " + string(time / 40) + "초");
	
	draw_set_font(font0)
    draw_set_color(make_color_rgb(254, 215, 100));
    draw_text_ext(x- 130, y + 40, "" + name, 14, 300);
	
    draw_set_font(font1)
    draw_set_color(c_white);
    draw_text_ext(x- 130, y + 65, "" + explain, 14, 300);
break;
default :
    draw_set_color(c_white);
    draw_text(x- 130, y+ 15 , "쿨타임:  " + string(time / 40) + "초");
	
	draw_set_font(font0)
	draw_set_color(make_color_rgb(254, 215, 100));
    draw_text_ext(x- 130, y + 50, "" + name, 14, 300);
	
	draw_set_font(font1)
	draw_set_color(c_white);
    draw_text_ext(x- 130, y + 85, "" + explain, 14, 300);
break;
}

depth = -5100




