/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 716DC864
/// @DnDArgument : "code" "var camera_x = camera_get_view_x(view_current[view_current]);$(13_10)var camera_y = camera_get_view_y(view_current[view_current]);$(13_10)draw_set_color(c_red);$(13_10)var i=0;$(13_10)while(true) {$(13_10)	for (j = 1 ; j<= 24 ; j++) {$(13_10)		if(team[j] == 0)$(13_10)			{$(13_10)				if (instance_exists(score_0_team)) {$(13_10)				draw_text(camera_x + score_0_team.x, camera_y + score_0_team.y + 12 * i, serve_name[j]);$(13_10)				}$(13_10)			i++;$(13_10)		}$(13_10)	}	$(13_10)	if(j == 25) or (j < 24){$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)$(13_10)draw_set_color(c_yellow);$(13_10)var k=0;$(13_10)while(true) {$(13_10)	for (j = 1 ; j<= 24 ; j++) {$(13_10)		if(team[j] == 1)$(13_10)			{$(13_10)			if (instance_exists(score_1_team)) {$(13_10)				draw_text(camera_x + score_1_team.x, camera_y + score_1_team.y + 12 * k, serve_name[j]);$(13_10)			}$(13_10)			k++;$(13_10)		}$(13_10)	}	$(13_10)	if(j == 25) or (j < 24){$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)$(13_10)draw_set_color(c_green);$(13_10)draw_set_halign(fa_center);$(13_10)for (j = 0 ; j<=3 ; ++j) {$(13_10)	draw_text_ext_transformed(camera_x + 512, camera_y + 150 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0)$(13_10)}   $(13_10)if (nu_time > 0) {$(13_10)	nu_time -= 1;$(13_10)	draw_set_color(c_white);$(13_10)	draw_sprite_ext(spr_nutitle, 0, camera_x + 70, camera_y + 25, 1.8, 1, 0, 0, 0.4)$(13_10)	draw_sprite_ext(spr_score, 0, camera_x + 100, camera_y + 150, 2, 2, 0, 0, 0.4);$(13_10)	draw_sprite_ext(spr_score, 0, camera_x + 700, camera_y + 150, 2, 2, 0, 0, 0.4);$(13_10)	draw_text_ext_transformed(camera_x + 550, camera_y + 450, "고인의 명복에 액션빔.", 1, 300, 1, 1, 0)$(13_10)	draw_set_color(c_red)$(13_10)	for (j = 0 ; j<= 24; ++j) {$(13_10)		draw_text_ext_transformed(camera_x + 150, camera_y + 150 + 20 * j, nu_name_left[j], 1, 300, 1.2, 1.2, 0)$(13_10)	}   $(13_10)	draw_set_color(c_yellow)$(13_10)	for (j = 0 ; j<= 24; ++j) {$(13_10)		draw_text_ext_transformed(camera_x + 750, camera_y + 150 + 20 * j, nu_name_right[j], 1, 300, 1.2, 1.2, 0)$(13_10)	}$(13_10)	draw_set_color(c_white);$(13_10)}$(13_10)draw_set_color(c_white);$(13_10)if (last_time > 0) {$(13_10)	if (win == 0) {$(13_10)		var wherel = "우파";$(13_10)		var wherew = "좌파";$(13_10)	}$(13_10)	else {$(13_10)		var wherew = "우파";$(13_10)		var wherel = "좌파";$(13_10)	}$(13_10)}$(13_10)if (room == room_rock_bridge) {$(13_10)	if (last_time > 0) {$(13_10)		draw_text_ext_transformed(camera_x + 512, camera_y$(13_10)		, wherel + "는 양팔다리가 벌려진체 \n 바닥에 눌러졌습니다. \n 빌리는 따뜻한 미소를 지으며 \n 그들에게 한걸을 한걸음 걸어갔습니다. \n 아주 따.뜻.한 미소를 지으며. \n (잠시 뒤 게임이 재시작 됩니다.)",$(13_10)		15, 300, 3, 3, 0);$(13_10)	}$(13_10)}$(13_10)if (room == room_night_forest) {$(13_10)	if (last_time > 0) {$(13_10)		draw_text_ext_transformed(camera_x + 512, camera_y$(13_10)		, wherew + "가 이겼습니다. \n " + wherel + "는" + wherew + "앞에 무릎을 꿇고 \n" + wherew + "의 코딱지를 먹었습니다. \n" + "잠시 뒤 게임이 재시작 됩니다.",$(13_10)		15, 300, 3, 3, 0);$(13_10)	}$(13_10)}$(13_10)if (room == room_ant) {$(13_10)	if (last_time > 0) {$(13_10)		draw_text_ext_transformed(camera_x + 512, camera_y$(13_10)		, wherew + "가 이겼습니다. \n " + wherel + "는" + wherew + "앞에 무릎을 꿇고 \n" + wherew + "의 발톱때를 먹었습니다. \n" + "잠시 뒤 게임이 재시작 됩니다.",$(13_10)		15, 300, 3, 3, 0);$(13_10)	}$(13_10)}"
var camera_x = camera_get_view_x(view_current[view_current]);
var camera_y = camera_get_view_y(view_current[view_current]);
draw_set_color(c_red);
var i=0;
while(true) {
	for (j = 1 ; j<= 24 ; j++) {
		if(team[j] == 0)
			{
				if (instance_exists(score_0_team)) {
				draw_text(camera_x + score_0_team.x, camera_y + score_0_team.y + 12 * i, serve_name[j]);
				}
			i++;
		}
	}	
	if(j == 25) or (j < 24){
		break;
	}
}

draw_set_color(c_yellow);
var k=0;
while(true) {
	for (j = 1 ; j<= 24 ; j++) {
		if(team[j] == 1)
			{
			if (instance_exists(score_1_team)) {
				draw_text(camera_x + score_1_team.x, camera_y + score_1_team.y + 12 * k, serve_name[j]);
			}
			k++;
		}
	}	
	if(j == 25) or (j < 24){
		break;
	}
}

draw_set_color(c_green);
draw_set_halign(fa_center);
for (j = 0 ; j<=3 ; ++j) {
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