if(hat_button_main.windows == 8) {
	draw_self();
	draw_set_font(font1)
	draw_set_color(c_black);
	var bold_color = make_color_rgb(159, 162, 169);
	switch(global.sub_setting) {
		case 0 :
			draw_text_bold(x + 277, y + 115, "해상도 설정" );
			draw_set_color(bold_color);
			draw_text(x + 277 , y + 115 , "해상도 설정" );
			
			var num = array_length(setting_name);
			var draw_x = 335;
			var draw_y = 167;
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
			draw_text_bold(x + 287, y + 162, "BGM 설정" );
			draw_set_color(bold_color);
			draw_text(x + 287 , y + 162 , "BGM 설정" );
	
			draw_set_color(c_black);
			draw_text_bold(x + 287, y + 226, "효과음 표시" );
			draw_set_color(bold_color);
			draw_text(x + 287 , y + 226 , "효과음 표시" );
			break;
	}	
}