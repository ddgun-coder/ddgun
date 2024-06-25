if(hat_button_main.windows == 8) {
	draw_self();
	draw_set_font(font2)
	draw_set_color(c_black);
	switch(global.sub_setting) {
		case 0 :
			draw_text_bold(x + 272, y + 110, "해상도 설정" );
			draw_set_color(make_color_rgb(159, 162, 169));
			draw_text(x + 272 , y + 110 , "해상도 설정" );
	
			draw_set_color(c_black);
			draw_text_bold(x + 325, y + 162, "히트박스 표시" );
			draw_set_color(make_color_rgb(159, 162, 169));
			draw_text(x + 325 , y + 162 , "히트박스 표시" );
	
			draw_set_color(c_black);
			draw_text_bold(x + 325, y + 211, "스킨 표시" );
			draw_set_color(make_color_rgb(159, 162, 169));
			draw_text(x + 325 , y + 211 , "스킨 표시" );
			
			draw_set_color(c_black);
			draw_text_bold(x + 325, y + 260, "서부 원 표시" );
			draw_set_color(make_color_rgb(159, 162, 169));
			draw_text(x + 325 , y + 260 , "서부 원 표시" );
			break;
		case 1 :
			draw_text_bold(x + 272, y + 152, "BGM 설정" );
			draw_set_color(make_color_rgb(159, 162, 169));
			draw_text(x + 272 , y + 152 , "BGM 설정" );
	
			draw_set_color(c_black);
			draw_text_bold(x + 272, y + 216, "효과음 표시" );
			draw_set_color(make_color_rgb(159, 162, 169));
			draw_text(x + 272 , y + 216 , "효과음 표시" );
			break;
	}	
}