if(hat_button_main.windows == 8) {
	draw_self();
	draw_set_font(font2)
	draw_set_color(c_black);
	var bold_color = make_color_rgb(159, 162, 169);
	switch(global.sub_setting) {
		case 0 :
			draw_text_bold(x + 272, y + 110, "해상도 설정" );
			draw_set_color(bold_color);
			draw_text(x + 272 , y + 110 , "해상도 설정" );
			
			var num = array_length(setting_name);
			var draw_x = 325;
			var draw_y = 162;
			var dy = 49;
			var str = "";
			for (var i = 0; i < num; i++) {
				str = setting_name[i];
				draw_set_color(c_black);
				draw_text_bold(x + draw_x, y + draw_y + dy * i, str);
				draw_set_color(bold_color);
				draw_text(x + draw_x , y + draw_y + dy * i , str);
			}
			break;
		case 1 :
			draw_text_bold(x + 272, y + 152, "BGM 설정" );
			draw_set_color(bold_color);
			draw_text(x + 272 , y + 152 , "BGM 설정" );
	
			draw_set_color(c_black);
			draw_text_bold(x + 272, y + 216, "효과음 표시" );
			draw_set_color(bold_color);
			draw_text(x + 272 , y + 216 , "효과음 표시" );
			break;
	}	
}