/// @description Insert description here
// You can write your code in this editor
YA = cid_id.YA;
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
