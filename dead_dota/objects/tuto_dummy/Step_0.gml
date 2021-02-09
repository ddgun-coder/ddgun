/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1336EC0B
/// @DnDArgument : "code" "if(live = 1) {$(13_10)	if (a_cooltime = 0) {$(13_10)		if (arm_type == "ouch" or arm_type == "normal" or arm_type == "attack")$(13_10)		{$(13_10)			arm_type = "normal"$(13_10)			arm_type_more = "none"$(13_10)			foot_frame = 0;$(13_10)			a_cooltime = -1;$(13_10)			all_spin = 0;$(13_10)			go_to_speed = 0;$(13_10)			arm_all_normal();$(13_10)		}$(13_10)	} //공격 정상화$(13_10)	$(13_10)	if (arm_type == "ouch")$(13_10)	{$(13_10)		timeline_running = 0;$(13_10)		all_spin = 0;$(13_10)		go_to_speed = 0;$(13_10)		a_charging = 0;$(13_10)		arm_all_normal();$(13_10)		left_arm_YA = YA + 270;$(13_10)		right_arm_YA = YA + 90;$(13_10)		arm_movement(5, -5, 5, 5);$(13_10)		if (sturn = 0){$(13_10)			a_cooltime = 0;$(13_10)		}$(13_10)	}//공격을 받았다!$(13_10)$(13_10)	if (a_cooltime <0) {$(13_10)		if (only_move_frame = 1) {$(13_10)			if (keyboard_check(vk_shift) and arm_type != "ouch" and arm_type != "caps_lock" and arm_type != "attack") {$(13_10)				arm_type = "shift"$(13_10)				arm_movement(5, -5, 5, 5);$(13_10)				left_arm_YA = YA + 270;$(13_10)				right_arm_YA = YA + 90;$(13_10)			}$(13_10)			else {$(13_10)				if (arm_type == "shift")$(13_10)				{$(13_10)					arm_type = "normal"$(13_10)					arm_all_normal();$(13_10)				}$(13_10)			}//쉬프트 움직임 정상화$(13_10)		$(13_10)			if (keyboard_check(20)) {$(13_10)				if (arm_type != "caps_lock" and arm_type != "shift" and arm_type != "ouch" and arm_type != "attack")$(13_10)				{$(13_10)					left_arm_yscale = -1;$(13_10)					right_arm_yscale = -1;$(13_10)					arm_movement(0, 0, 5, 0);$(13_10)					arm_type = "caps_lock"$(13_10)					if (arm_tabcooltime = -1) {$(13_10)						arm_tabcooltime = 20;$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		else {$(13_10)			if (arm_type == "caps_lock")$(13_10)				{$(13_10)					arm_type = "normal"$(13_10)					arm_all_normal();$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}//caps_lock키 움직임 정상화$(13_10)$(13_10)$(13_10)	if (a_cycle > 0) {$(13_10)		a_cycle -= 1$(13_10)	} // 손 순환을 위한 감소 $(13_10)$(13_10)$(13_10)	if (f_cycle > 0) {$(13_10)		f_cycle -= 1$(13_10)	} // 발 순환을 위한 감소 $(13_10)$(13_10)$(13_10)	if (a_cycle = 0) {$(13_10)		if (arm_type = "normal")$(13_10)		{$(13_10)			switch(arm_type_num) {$(13_10)				case 0 :$(13_10)					arm_type_num = 1$(13_10)					arm_movement(0, 0, 2, -2);$(13_10)				break;$(13_10)				case 1 :$(13_10)					arm_type_num = 0$(13_10)					arm_movement(0, 0, -2, 2);$(13_10)				break;$(13_10)			}$(13_10)			a_cycle = 10;$(13_10)		}$(13_10)		if (arm_type = "attack")$(13_10)		{$(13_10)			switch (arm_type_more) {$(13_10)				case "yellow_2" :$(13_10)						switch(arm_type_num) {$(13_10)					case 0 :$(13_10)						arm_type_num = 1$(13_10)						arm_movement(0, 0, 4, -4);$(13_10)						right_arm_YA = YA + 120$(13_10)						left_arm_YA = YA + 10$(13_10)						a_cycle = 4;$(13_10)					break;$(13_10)					case 1 :$(13_10)						arm_type_num = 0$(13_10)						arm_movement(0, 0, -4, 4);$(13_10)						right_arm_YA = YA - 10$(13_10)						left_arm_YA = YA - 120$(13_10)						a_cycle = 4;$(13_10)					break;$(13_10)					}$(13_10)				break;$(13_10)				case "yellow_3" :$(13_10)						switch(arm_type_num) {$(13_10)					case 0 :$(13_10)						arm_type_num = 1$(13_10)						arm_movement(0, 0, 4, 9);$(13_10)						a_cycle = 4;$(13_10)					break;$(13_10)					case 1 :$(13_10)						arm_type_num = 0$(13_10)						arm_movement(0, 0, 1, 12);$(13_10)						a_cycle = 4;$(13_10)					break;$(13_10)					}$(13_10)				break;$(13_10)				case "studing" :$(13_10)						switch(arm_type_num) {$(13_10)					case 0 :$(13_10)						arm_type_num = 1$(13_10)						arm_movement(0, 2, 0, 0);$(13_10)						aexp += 8;$(13_10)						a_cycle = 5;$(13_10)					break;$(13_10)					case 1 :$(13_10)						arm_type_num = 2$(13_10)						arm_movement(0, 0, 0, 0);$(13_10)						a_cycle = 5;$(13_10)					break;$(13_10)					case 2 :$(13_10)						arm_type_num = 0$(13_10)						arm_movement(0, -2, 0, 0);$(13_10)						a_cycle = 5;$(13_10)					break;$(13_10)					}$(13_10)				break;$(13_10)				case "drinking_red" :$(13_10)						switch(arm_type_num) {$(13_10)					case 0 :$(13_10)						arm_type_num = 1$(13_10)						hp += 1;$(13_10)						a_cycle = 1;$(13_10)					break;$(13_10)					case 1 :$(13_10)						arm_type_num = 0$(13_10)						hp += 1;$(13_10)						a_cycle = 1;$(13_10)					break;$(13_10)					}$(13_10)				break;$(13_10)				case "drinking_blue" :$(13_10)						switch(arm_type_num) {$(13_10)					case 0 :$(13_10)						arm_type_num = 1$(13_10)						mana += 1;$(13_10)						a_cycle = 1;$(13_10)					break;$(13_10)					case 1 :$(13_10)						arm_type_num = 0$(13_10)						mana += 1;$(13_10)						a_cycle = 1;$(13_10)					break;$(13_10)					}$(13_10)				break;$(13_10)				case "temp_YA_async" :$(13_10)					temp_YA = YA;$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)	} //평소 손 바꾸기 $(13_10)$(13_10)	if (a_cooltime < 0){$(13_10)		if (f_cycle = 0) {$(13_10)			f_cycle = 10;$(13_10)			if (foot_type = "normal")$(13_10)			{$(13_10)				switch(foot_type_num) {$(13_10)					case 0 :$(13_10)						foot_type_num = 1$(13_10)						foot_movement(0, 0, 2, -2);$(13_10)					break;$(13_10)					case 1 :$(13_10)						foot_type_num = 0$(13_10)						foot_movement(0, 0, -2, 2);$(13_10)					break;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	} $(13_10)$(13_10)	if (arm_tabcooltime = 0) {$(13_10)		arm_tabcooltime = 10;$(13_10)		if (arm_type = "caps_lock")$(13_10)			switch (arm_type_num) {$(13_10)				case 0: $(13_10)						left_arm_yscale = -1;$(13_10)						right_arm_yscale = -1;$(13_10)						arm_movement(0, 0, 5, 0);$(13_10)						arm_type_num = 1$(13_10)				break;$(13_10)				case 1: $(13_10)						left_arm_yscale = -1;$(13_10)						right_arm_yscale = -1;$(13_10)						arm_movement(0, 0, 0, 5);$(13_10)						arm_type_num = 0$(13_10)				break;$(13_10)				}$(13_10)	}//tab키 손 바꾸기$(13_10)$(13_10)$(13_10)	if (stemina < m_stemina) {$(13_10)		stemina += 1;$(13_10)	} //자동 스테미너 회복$(13_10)$(13_10)$(13_10)	if (mana < 180) {$(13_10)		if(global.hat == spr_hat2 and level == 3 and main_speed != 8)$(13_10)		{$(13_10)			mana += 0.12;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			mana += 0.06;$(13_10)		}$(13_10)	}//자동 마나 회복 $(13_10)$(13_10)$(13_10)	if (gi <m_gi) {$(13_10)		gi +=0.03;$(13_10)	}//기값 회복 $(13_10)$(13_10)$(13_10)	if (hp > m_hp) {$(13_10)		hp = m_hp;$(13_10)	} //채력 보정 $(13_10)	$(13_10)	if (mana > m_mana) {$(13_10)		mana = m_mana;$(13_10)	} //마나 보정 $(13_10)	$(13_10)	if (gi > m_gi) {$(13_10)		gi = m_gi;$(13_10)	} //기 보정 $(13_10)$(13_10)	if (stemina > m_stemina) {$(13_10)		stemina -= 1$(13_10)	} //스테미너 보정 	$(13_10)	$(13_10)	if (sturn > 0) {$(13_10)		mine_say_time = 200;$(13_10)		mine_say = what_say;$(13_10)		sturn -= 1;$(13_10)	}//스턴값 줄이기$(13_10)	else {$(13_10)		--mine_say_time;$(13_10)	}$(13_10)	$(13_10)	$(13_10)	if place_meeting(x, y, all_heal_zone) {$(13_10)		if (hp < m_hp) {$(13_10)			hp += 0.12;$(13_10)		}$(13_10)	}//파랑존$(13_10)	$(13_10)	$(13_10)	if place_meeting(x, y, team_1_heal_zone) {$(13_10)		if (global.team =1) {$(13_10)			if (hp < m_hp) {$(13_10)				hp += 0.06;$(13_10)			}$(13_10)		}$(13_10)		else{$(13_10)			if (hp >= 0) {$(13_10)				hp -= 0.16;$(13_10)			}$(13_10)		}$(13_10)	}//우리팀 기지$(13_10)	$(13_10)	$(13_10)	if place_meeting(x, y, team_0_heal_zone) {$(13_10)		if (global.team = 0) {$(13_10)			if (hp < m_hp) {$(13_10)				hp += 0.06;$(13_10)			}$(13_10)		}$(13_10)		else{$(13_10)			if (hp >= 0) {$(13_10)				hp -= 0.16;$(13_10)			}$(13_10)		}$(13_10)	}//적팀 기지$(13_10)	$(13_10)	$(13_10)	if (a_possible_time >0) {$(13_10)		a_possible_time -= 1;$(13_10)	}//공격만 불가능한 시간$(13_10)	$(13_10)	$(13_10)	if (a_charging = 1) {$(13_10)		a_possible_time = 90;$(13_10)		if (charging < 90) {$(13_10)			charging += 1;$(13_10)		}$(13_10)	}//옐캡4차 기모으기$(13_10)	$(13_10)	if (charging = 30) {$(13_10)		spr_armr_more = spr_yellow_4_skill;$(13_10)		spr_arm_more_num = 0;$(13_10)		spr_arm_morex = 0;$(13_10)		spr_arm_morey = -20;$(13_10)		audio_play_sound(sound_charging,1,false);$(13_10)	}//소리$(13_10)	$(13_10)	if (charging = 60) {$(13_10)		spr_arm_more_num = 1;$(13_10)		audio_play_sound(sound_charging,1,false);$(13_10)	}//소리$(13_10)	$(13_10)	if (charging = 89) {$(13_10)		spr_arm_more_num = 2;$(13_10)		audio_play_sound(sound_charging,1,false);$(13_10)	}//소리$(13_10)	$(13_10)	if (hp <= 0){$(13_10)		view_visible[1] = false;$(13_10)		view_visible[0] = true;$(13_10)		hp = 0;$(13_10)		alarm_set(4, 100)$(13_10)		live = 0;$(13_10)	}//죽음$(13_10)	$(13_10)	if (left_goto_YA != left_arm_YA and arm_spin_able == 1)$(13_10)	{$(13_10)		left_arm_YA += angle_difference(left_goto_YA, left_arm_YA) / arm_spin_speed;$(13_10)	}//왼손회전$(13_10)	$(13_10)	if (right_goto_YA != right_arm_YA and arm_spin_able == 1)$(13_10)	{$(13_10)		right_arm_YA += angle_difference(right_goto_YA, right_arm_YA) / arm_spin_speed;$(13_10)	}//오른손회전$(13_10)	$(13_10)	if(all_spin == 1)$(13_10)	{$(13_10)		all_YA_change_delta(36);$(13_10)		if (YA >= temp_YA + all_spin_limit)$(13_10)		{$(13_10)			all_spin = 0;$(13_10)		}$(13_10)	}//전체 돌리기$(13_10)	$(13_10)	if(place_free(x + lengthdir_x(go_to_speed, YA - 90), y + lengthdir_y(go_to_speed, YA - 90)))$(13_10)	{$(13_10)		x += lengthdir_x(go_to_speed, temp_YA - 90);$(13_10)		y += lengthdir_y(go_to_speed, temp_YA - 90);$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	sturn = 0;$(13_10)}//정상화$(13_10)"
if(live = 1) {
	if (a_cooltime = 0) {
		if (arm_type == "ouch" or arm_type == "normal" or arm_type == "attack")
		{
			arm_type = "normal"
			arm_type_more = "none"
			foot_frame = 0;
			a_cooltime = -1;
			all_spin = 0;
			go_to_speed = 0;
			arm_all_normal();
		}
	} //공격 정상화
	
	if (arm_type == "ouch")
	{
		timeline_running = 0;
		all_spin = 0;
		go_to_speed = 0;
		a_charging = 0;
		arm_all_normal();
		left_arm_YA = YA + 270;
		right_arm_YA = YA + 90;
		arm_movement(5, -5, 5, 5);
		if (sturn = 0){
			a_cooltime = 0;
		}
	}//공격을 받았다!

	if (a_cooltime <0) {
		if (only_move_frame = 1) {
			if (keyboard_check(vk_shift) and arm_type != "ouch" and arm_type != "caps_lock" and arm_type != "attack") {
				arm_type = "shift"
				arm_movement(5, -5, 5, 5);
				left_arm_YA = YA + 270;
				right_arm_YA = YA + 90;
			}
			else {
				if (arm_type == "shift")
				{
					arm_type = "normal"
					arm_all_normal();
				}
			}//쉬프트 움직임 정상화
		
			if (keyboard_check(20)) {
				if (arm_type != "caps_lock" and arm_type != "shift" and arm_type != "ouch" and arm_type != "attack")
				{
					left_arm_yscale = -1;
					right_arm_yscale = -1;
					arm_movement(0, 0, 5, 0);
					arm_type = "caps_lock"
					if (arm_tabcooltime = -1) {
						arm_tabcooltime = 20;
					}
				}
			}
		else {
			if (arm_type == "caps_lock")
				{
					arm_type = "normal"
					arm_all_normal();
				}
			}
		}
	}//caps_lock키 움직임 정상화


	if (a_cycle > 0) {
		a_cycle -= 1
	} // 손 순환을 위한 감소 


	if (f_cycle > 0) {
		f_cycle -= 1
	} // 발 순환을 위한 감소 


	if (a_cycle = 0) {
		if (arm_type = "normal")
		{
			switch(arm_type_num) {
				case 0 :
					arm_type_num = 1
					arm_movement(0, 0, 2, -2);
				break;
				case 1 :
					arm_type_num = 0
					arm_movement(0, 0, -2, 2);
				break;
			}
			a_cycle = 10;
		}
		if (arm_type = "attack")
		{
			switch (arm_type_more) {
				case "yellow_2" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 0, 4, -4);
						right_arm_YA = YA + 120
						left_arm_YA = YA + 10
						a_cycle = 4;
					break;
					case 1 :
						arm_type_num = 0
						arm_movement(0, 0, -4, 4);
						right_arm_YA = YA - 10
						left_arm_YA = YA - 120
						a_cycle = 4;
					break;
					}
				break;
				case "yellow_3" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 0, 4, 9);
						a_cycle = 4;
					break;
					case 1 :
						arm_type_num = 0
						arm_movement(0, 0, 1, 12);
						a_cycle = 4;
					break;
					}
				break;
				case "studing" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 2, 0, 0);
						aexp += 8;
						a_cycle = 5;
					break;
					case 1 :
						arm_type_num = 2
						arm_movement(0, 0, 0, 0);
						a_cycle = 5;
					break;
					case 2 :
						arm_type_num = 0
						arm_movement(0, -2, 0, 0);
						a_cycle = 5;
					break;
					}
				break;
				case "drinking_red" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						hp += 1;
						a_cycle = 1;
					break;
					case 1 :
						arm_type_num = 0
						hp += 1;
						a_cycle = 1;
					break;
					}
				break;
				case "drinking_blue" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						mana += 1;
						a_cycle = 1;
					break;
					case 1 :
						arm_type_num = 0
						mana += 1;
						a_cycle = 1;
					break;
					}
				break;
				case "temp_YA_async" :
					temp_YA = YA;
				break;
			}
		}
	} //평소 손 바꾸기 

	if (a_cooltime < 0){
		if (f_cycle = 0) {
			f_cycle = 10;
			if (foot_type = "normal")
			{
				switch(foot_type_num) {
					case 0 :
						foot_type_num = 1
						foot_movement(0, 0, 2, -2);
					break;
					case 1 :
						foot_type_num = 0
						foot_movement(0, 0, -2, 2);
					break;
				}
			}
		}
	} 

	if (arm_tabcooltime = 0) {
		arm_tabcooltime = 10;
		if (arm_type = "caps_lock")
			switch (arm_type_num) {
				case 0: 
						left_arm_yscale = -1;
						right_arm_yscale = -1;
						arm_movement(0, 0, 5, 0);
						arm_type_num = 1
				break;
				case 1: 
						left_arm_yscale = -1;
						right_arm_yscale = -1;
						arm_movement(0, 0, 0, 5);
						arm_type_num = 0
				break;
				}
	}//tab키 손 바꾸기


	if (stemina < m_stemina) {
		stemina += 1;
	} //자동 스테미너 회복


	if (mana < 180) {
		if(global.hat == spr_hat2 and level == 3 and main_speed != 8)
		{
			mana += 0.12;
		}
		else
		{
			mana += 0.06;
		}
	}//자동 마나 회복 


	if (gi <m_gi) {
		gi +=0.03;
	}//기값 회복 


	if (hp > m_hp) {
		hp = m_hp;
	} //채력 보정 
	
	if (mana > m_mana) {
		mana = m_mana;
	} //마나 보정 
	
	if (gi > m_gi) {
		gi = m_gi;
	} //기 보정 

	if (stemina > m_stemina) {
		stemina -= 1
	} //스테미너 보정 	
	
	if (sturn > 0) {
		mine_say_time = 200;
		mine_say = what_say;
		sturn -= 1;
	}//스턴값 줄이기
	else {
		--mine_say_time;
	}
	
	
	if place_meeting(x, y, all_heal_zone) {
		if (hp < m_hp) {
			hp += 0.12;
		}
	}//파랑존
	
	
	if place_meeting(x, y, team_1_heal_zone) {
		if (global.team =1) {
			if (hp < m_hp) {
				hp += 0.06;
			}
		}
		else{
			if (hp >= 0) {
				hp -= 0.16;
			}
		}
	}//우리팀 기지
	
	
	if place_meeting(x, y, team_0_heal_zone) {
		if (global.team = 0) {
			if (hp < m_hp) {
				hp += 0.06;
			}
		}
		else{
			if (hp >= 0) {
				hp -= 0.16;
			}
		}
	}//적팀 기지
	
	
	if (a_possible_time >0) {
		a_possible_time -= 1;
	}//공격만 불가능한 시간
	
	
	if (a_charging = 1) {
		a_possible_time = 90;
		if (charging < 90) {
			charging += 1;
		}
	}//옐캡4차 기모으기
	
	if (charging = 30) {
		spr_armr_more = spr_yellow_4_skill;
		spr_arm_more_num = 0;
		spr_arm_morex = 0;
		spr_arm_morey = -20;
		audio_play_sound(sound_charging,1,false);
	}//소리
	
	if (charging = 60) {
		spr_arm_more_num = 1;
		audio_play_sound(sound_charging,1,false);
	}//소리
	
	if (charging = 89) {
		spr_arm_more_num = 2;
		audio_play_sound(sound_charging,1,false);
	}//소리
	
	if (hp <= 0){
		view_visible[1] = false;
		view_visible[0] = true;
		hp = 0;
		alarm_set(4, 100)
		live = 0;
	}//죽음
	
	if (left_goto_YA != left_arm_YA and arm_spin_able == 1)
	{
		left_arm_YA += angle_difference(left_goto_YA, left_arm_YA) / arm_spin_speed;
	}//왼손회전
	
	if (right_goto_YA != right_arm_YA and arm_spin_able == 1)
	{
		right_arm_YA += angle_difference(right_goto_YA, right_arm_YA) / arm_spin_speed;
	}//오른손회전
	
	if(all_spin == 1)
	{
		all_YA_change_delta(36);
		if (YA >= temp_YA + all_spin_limit)
		{
			all_spin = 0;
		}
	}//전체 돌리기
	
	if(place_free(x + lengthdir_x(go_to_speed, YA - 90), y + lengthdir_y(go_to_speed, YA - 90)))
	{
		x += lengthdir_x(go_to_speed, temp_YA - 90);
		y += lengthdir_y(go_to_speed, temp_YA - 90);
	}
}
else {
	sturn = 0;
}//정상화