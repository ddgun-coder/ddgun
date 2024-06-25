if (halt) exit;
distanc_to_testing = point_distance(x, y, testing.x, testing.y);
if (to_testingXY) {
	x = testing.x + lengthdir_x(55, testing.YA - 90);
	y = testing.y + lengthdir_y(55, testing.YA - 90);
	all_YA_change(testing.YA - 90);
	if (to_testingXY_time > 0) {
		to_testingXY_time--;
	}
	else {
		go_to_back();
		to_testingXY = false;
	}
}

if (distanc_to_testing < 2550) {
	if (grid == noone) {
		grid = 	mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
		with (all) {
			if (solid) {
				mp_grid_add_instances(other.grid, object_index, true);	
			}	
		}
	}
	if (mp_grid_path(grid, ai_path, x, y, testing.x, testing.y, true)) {
		path_start(ai_path, 5, path_action_stop, false);
	}
	if (distanc_to_testing <= 150) {
		YA = point_direction(x, y, testing.x, testing.y) + 90;
	}
	else {
		if (path_speed != 0) YA += angle_difference(direction + 90, YA) * 0.25;		
	}
}

var speedd = 0;
if (live == 1) {
	speedd = (main_speed + extra_speed + stats_speed + buff_speed) * high_speed;
}

if (sturn > 0 or a_cooltime >= 0) {
	path_speed = 0;	
}
else {
	path_speed = speedd;		
}

if (go_to_speed > 0) {
	go_to_speed -= 0.1;
	var dx = -lengthdir_x(go_to_speed, other_YA);
	var dy = -lengthdir_y(go_to_speed, other_YA);
	if (place_free(x + dx, y + dy)) {
		x += dx;
		y += dy;
	}
	else {
		go_to_speed -= 1;
	}
	if (go_to_speed < 0) go_to_speed = 0;
}
if(live = 1) {
	ai_skill_check();
	if (a_cooltime == 0) {
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
	if (a_cooltime > 0) {
		a_cooltime--;
	}
	if (a_cooltime == 0 and horse == false) {
		server77_equal(serve_val.terror_charge, 0, buffer_u8)
		server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
		cancle_able = false;
		spin_able = false;
		terror_charge = 0;
		shild = false;
		go_soild = false;
		left_arm_get_bigger = false;
		seq_end();
		spin_steadly_start(false);
		no_change = 0;
		ski_ready = false
		high_speed = 1
		hide_bam = false
		view_where = 0;
		view_visible[1] = false;
		view_visible[0] = true;
		YA2 = YA;
		light_set(false);
		go_to_speed = 0;
	    go_to_speed2 = 0;
		go_to_speed_solid = 0;
		if (fishing != 0) {
			fishing = 0;
			mine_say = "까비 아깝소 ㅋㅋ";
			mine_say_time = 40;
		}
		charge = false;
		if (arm_type == "attack" or arm_type == "normal")
		{
			arm_type = "normal"
			arm_type_more = "none"
			foot_frame = 0;
			a_cooltime = 0;
			all_spin = 0;
			go_to_speed = 0;
			jumping = false;
			arm_all_normal();
		}
		a_cooltime--
	}
	if (arm_type == "ouch")
	{
		timeline_running = 0;
		all_spin = 0;
		go_to_speed = 0;
		a_charging = 0;
		arm_all_normal();
		left_arm_YA = 0 + 270;
		right_arm_YA = 0 + 90;
		arm_movement(5, -5, 5, 5);
		if (sturn = 0){
			a_cooltime = 0;
		}
	}//공격을 받았다!


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
						right_arm_YA = 0 + 120
						left_arm_YA = 0 + 10
						a_cycle = 4;
					break;
					case 1 :
						arm_type_num = 0
						arm_movement(0, 0, -4, 4);
						right_arm_YA = 0 - 10
						left_arm_YA = 0 - 120
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

with (ai_index_to) {
	x = other.x;
	y = other.y;
	YA = other.YA;
}
gi += 0.05;
mana += 0.1;