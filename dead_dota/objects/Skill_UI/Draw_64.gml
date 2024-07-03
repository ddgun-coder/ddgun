draw_set_halign(fa_center);
if(instance_exists(Skill_UI)) {
if(Skill_UI.windows == true) {
	switch (room) {
		case room_main :
		draw_self()
		draw_set_font(font1)
		draw_set_color(c_black);
	    draw_text_bold(x + 300 , y + 15, "■ LV 1 ■ " + Dname );
	    draw_set_color(make_color_rgb(219, 223, 234));
	    draw_text(x + 300 , y + 15, "■ LV 1 ■ " + Dname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 40, "" + Dexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 80, "" + Dskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300 , y + 125, "■ LV 2 ■ " + Qname );
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300 , y + 125, "■ LV 2 ■ " + Qname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 150, "" + Qexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 190, "" + Qskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300 , y + 235, "■ LV 3 ■ " + Wname);
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300 , y + 235, "■ LV 3 ■ " + Wname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 260, "" + Wexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 300, "" + Wskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300, y + 345, "■ LV 4 ■ " + Ename );
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300, y + 345, "■ LV 4 ■ " + Ename );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 370, "" + Eexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 410, "" + Eskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300, y + 455, "" + Pname );
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300, y + 455, "" + Pname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 480, "" + Pexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 525, "" + Pskill);
		break
	
		default :
		draw_self()
		draw_set_font(font1)
		draw_set_color(c_black);
	    draw_text_bold(x + 300 , y + 15, "■ LV 1 ■ " + Dname );
	    draw_set_color(make_color_rgb(219, 223, 234));
	    draw_text(x + 300 , y + 15, "■ LV 1 ■ " + Dname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 40, "" + Dexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 65, "" + Dskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300 , y + 125, "■ LV 2 ■ " + Qname );
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300 , y + 125, "■ LV 2 ■ " + Qname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 150, "" + Qexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 180, "" + Qskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300 , y + 235, "■ LV 3 ■ " + Wname);
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300 , y + 235, "■ LV 3 ■ " + Wname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 260, "" + Wexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 290, "" + Wskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300, y + 345, "■ LV 4 ■ " + Ename );
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300, y + 345, "■ LV 4 ■ " + Ename );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 370, "" + Eexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 410, "" + Eskill);
	
		draw_set_font(font1)
		draw_set_color(c_black);
		draw_text_bold(x + 300, y + 455, "" + Pname );
		draw_set_color(make_color_rgb(219, 223, 234));
		draw_text(x + 300, y + 455, "" + Pname );
	    draw_set_color(make_color_rgb(254, 215, 100));
		draw_set_font(font1)
	    draw_text(x + 300, y + 478, "" + Pexplain);
	    draw_set_color(c_white);
		draw_set_font(font1)
	    draw_text(x + 300, y + 514, "" + Pskill);
	
		break;
	}
	
    }
}