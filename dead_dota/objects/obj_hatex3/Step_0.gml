x = mouse_x + 5;
y = mouse_y + 5;

visible = false;
for (var i = 0; i < array_num; i++) {
	if (place_meeting(mouse_x, mouse_y, button_array[i])) {
		switch(button_array[i]) {
			case hat_button_main :
				name = "모자(전투)";
			break;
			case arm_button_main :
				name = "팔(커스텀)";
			break;
			case foot_button_main :
				name = "발(커스텀)";
			break;
			case face_button_main :
				name = "얼굴(커스텀)";
			break;
			case obj_box :
				name = "아이템(전투)";
			break;
			case obj_skin_main :
				name = "스킨(커스텀)";
			break;
			case stats_button_main :
				name = "특성(전투)";
			break;
			case name_window :
				name = "이름 변경";
			break;
			case obj_skillbox :
				name = "모자 정보";
			break;
			case obj_back_main :
				name = "배경 설정";
			break;
			case object515 :
				name = "플공카";
			break;
			case obj_achievement_button :
				name = "업적";
			break;
			case obj_setting_main :
				name = "환경설정";
			break;
		}
		visible = true;
	}
}