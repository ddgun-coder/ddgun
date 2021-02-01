var camera_x = camera_get_view_x(view_camera[view_current]);
var camera_y = camera_get_view_y(view_camera[view_current]);
left_n=0;
draw_set_halign(fa_left);
while(true) {
	for (j = 1 ; j<= 24 ; j++) {
		if(team[j] == 0)
			{
				if (instance_exists(score_0_team)) {
					if (serve_name[j] != "") {
						draw_set_color(c_black);
						draw_text_bold(camera_x + score_0_team.x, camera_y + score_0_team.y + 12 * left_n, "[" + string(pow[j]) + "]" + serve_name[j]);
						draw_set_color(c_red);
						draw_text(camera_x + score_0_team.x, camera_y + score_0_team.y + 12 * left_n, "[" + string(pow[j]) + "]" + serve_name[j]);
						left_n++;
					}
				}
		}
	}	
	if(j == 25) or (j < 24){
		break;
	}
}
draw_set_halign(fa_right);
right_n=0;
while(true) {
	for (j = 1 ; j<= 24 ; j++) {
		if(team[j] == 1)
			{
			if (instance_exists(score_1_team)) {
				if (serve_name[j] != "") {
					draw_set_color(c_black)
					draw_text_bold(camera_x + score_1_team.x + score_1_team.sprite_width, camera_y + score_1_team.y + 12 * right_n, serve_name[j] + "[" + string(pow[j]) + "]");
					draw_set_color(c_yellow)
					draw_text(camera_x + score_1_team.x + score_1_team.sprite_width, camera_y + score_1_team.y + 12 * right_n, serve_name[j] + "[" + string(pow[j]) + "]");
					right_n++;
				}
			}
		}
	}	
	if(j == 25) or (j < 24){
		break;
	}
}
num_client = right_n + left_n;
draw_set_halign(fa_center);
for (j = 0 ; j<=3 ; ++j) {
	draw_set_color(c_black)
	draw_text_ext_transformed(camera_x + 512, camera_y + 151 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0)
	draw_text_ext_transformed(camera_x + 513, camera_y + 150 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0)
	draw_text_ext_transformed(camera_x + 511, camera_y + 150 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0)
	draw_text_ext_transformed(camera_x + 512, camera_y + 149 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0)
	draw_set_color(c_lime);
	draw_text_ext_transformed(camera_x + 512, camera_y + 150 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0)
}   
if (nu_time > 0) {
	nu_time -= 1;
	draw_set_color(c_white);
	draw_sprite_ext(spr_nutitle, 0, camera_x + 70, camera_y + 25, 1.8, 1, 0, 0, 0.4)
	draw_sprite_ext(spr_score, 0, camera_x + 100, camera_y + 150, 2, 2, 0, 0, 0.4);
	draw_sprite_ext(spr_score, 0, camera_x + 700, camera_y + 150, 2, 2, 0, 0, 0.4);
	draw_text_ext_transformed(camera_x + 550, camera_y + 450, "고인의 명복에 액션빔.", 1, 300, 1, 1, 0)
	draw_set_color(c_red)
	for (j = 0 ; j<= 24; ++j) {
		draw_text_ext_transformed(camera_x + 150, camera_y + 150 + 20 * j, nu_name_left[j], 1, 300, 1.2, 1.2, 0)
	}   
	draw_set_color(c_yellow)
	for (j = 0 ; j<= 24; ++j) {
		draw_text_ext_transformed(camera_x + 750, camera_y + 150 + 20 * j, nu_name_right[j], 1, 300, 1.2, 1.2, 0)
	}
	draw_set_color(c_white);
}
draw_set_color(c_white);
if (last_time > 0) {
	if (win == 0) {
		var wherel = "우파";
		var wherew = "좌파";
	}
	else {
		var wherew = "우파";
		var wherel = "좌파";
	}
}
if (room == room_rock_bridge) {
	if (last_time > 0) {
		draw_text_ext_transformed(camera_x + 512, camera_y
		, wherel + "는 양팔다리가 벌려진체 \n 바닥에 눌러졌습니다. \n 빌리는 따뜻한 미소를 지으며 \n 그들에게 한걸을 한걸음 걸어갔습니다. \n 아주 따.뜻.한 미소를 지으며. \n (잠시 뒤 게임이 재시작 됩니다.)",
		15, 300, 3, 3, 0);
	}
}
if (room == room_night_forest) {
	if (last_time > 0) {
		draw_text_ext_transformed(camera_x + 512, camera_y
		, wherew + "가 이겼습니다. \n " + wherel + "는" + wherew + "앞에 무릎을 꿇고 \n" + wherew + "의 코딱지를 먹었습니다. \n" + "잠시 뒤 게임이 재시작 됩니다.",
		15, 300, 3, 3, 0);
	}
}
if (room == room_ant) {
	if (last_time > 0) {
		draw_text_ext_transformed(camera_x + 512, camera_y
		, wherew + "가 이겼습니다. \n " + wherel + "는" + wherew + "앞에 무릎을 꿇고 \n" + wherew + "의 발톱때를 먹었습니다. \n" + "잠시 뒤 게임이 재시작 됩니다.",
		15, 300, 3, 3, 0);
	}
}
if (room == room_dragon) {
	if (last_time > 0) {
		draw_text_ext_transformed(camera_x + 512, camera_y
		, wherel + "의 불은 꺼지고. \n " + wherew + "의 깃발이 드레곤에 꽃혔도다. \n" 
		+ wherel + "는 " + wherew + "앞에 꿇어 앉아. \n 반성문 200장을 썼으며 \n 도타신께서 흐뭇한 미소로 그들을 바라보노라. \n" 
		+ "잠시 뒤 게임이 재시작 됩니다.",
		15, 300, 3, 3, 0);
	}
}
if (room == room_soccer) {
	if (last_time > 0) {
		draw_text_ext_transformed(camera_x + 512, camera_y
		, wherew + "가 이겼습니다. \n " + wherel + "는" + wherew + "앞에 무릎을 꿇고 \n" + wherew + "의 코딱지를 발바닥떼에 찍어 먹었습니다. \n" + "잠시 뒤 게임이 재시작 됩니다.",
		15, 300, 3, 3, 0);
	}
}