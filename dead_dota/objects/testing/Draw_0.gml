testing_surf_set();
if (creper_die == 0) {
	if (seq == -1) {
		footL_x = surf_xoffset + (-20 + left_foot_deltax) * 1;
		footL_y = surf_yoffset + (10 + left_foot_deltay) * 1;
		footR_x = surf_xoffset + (20 + right_foot_deltax) * 1;
		footR_y = surf_yoffset + (10 + right_foot_deltay) * 1;
		armL_x = surf_xoffset + (-20 + left_arm_deltax) * 1;
		armL_y = surf_yoffset + (left_arm_deltay) * 1;
		armR_x = surf_xoffset + (20 + right_arm_deltax) * 1;
		armR_y = surf_yoffset + right_arm_deltay * 1;
		hat_x = surf_xoffset;
		hat_y = surf_yoffset + charge * 15 + face_delta
		face_x = surf_xoffset + face_delta_x;
		face_y = surf_yoffset + face_delta + face_delta_y;
		arm_moreR_YA = right_arm_YA;
		arm_moreL_YA = left_arm_YA;
		armL_more_x = armL_x + lengthdir_x(-spr_arm_morex, left_arm_YA) + lengthdir_x(spr_arm_morey, left_arm_YA + 270);
		armL_more_y = armL_y + lengthdir_y(-spr_arm_morex, left_arm_YA) + lengthdir_y(spr_arm_morey, left_arm_YA + 270);
		armR_more_x = armR_x + lengthdir_x(spr_arm_morex, right_arm_YA) + lengthdir_x(spr_arm_morey, right_arm_YA + 270);
		armR_more_y = armR_y + lengthdir_y(spr_arm_morex, right_arm_YA) + lengthdir_y(spr_arm_morey, right_arm_YA + 270);
		effect_x = surf_xoffset;
		effect_y = surf_yoffset;
		effect_YA = temp_YA;
	}
	else {
		seq_to_variable();
	}
}
else {
	creper_die--;
}
switch(global.name) {
	case "test":
		draw_text(x - 120, y - 70, "공격 쿨타임:" + string(a_cooltime))
		draw_text(x - 120, y - 50, "팔 좀 더 자세한 상황:" +string(arm_type_more))
		draw_text(x - 120, y + 70, "버프:" + string(buff_index))
		draw_text(x - 120, y + 50, "추가 효과:" +string(effect_index))
		draw_text(x + 60, y + 30, "팔 상황:" + string(arm_type))
		draw_text(x + 60, y + 15, "스턴:" + string(sturn))
		draw_text(x - 120, y - 70, "스텟 쿨타임:" + string(b_cooltime))
		break;
	case "99플루톤" :
		draw_text(x + 60, y + 15, "카운터:" + string(counter))
		draw_text(x - 120, y - 70, "스턴:" + string(sturn))
		draw_text(x - 120, y - 50, "starcoin:" +string(global.starcoin))
		draw_text(x - 120, y + 70, "각도:" + string(YA))
		draw_text(x - 120, y + 50, "어디를 보는가:" +string(view_where))
		draw_text(x + 60, y + 30, "다른 사람이 보는 투명값:" + string(cli_alpha))
	break;
}
if (global.hat == spr_hat42 and global.wild_circle) {
	draw_set_color(c_blue);
	draw_circle(x, y, 450, true);
	draw_set_color(c_red);
	draw_circle(x, y, 300, true);
}
cur_xview = camera_get_view_x(view_camera[0]);
cur_yview = camera_get_view_y(view_camera[0]);
if (nu_say_time > 0) {
	switch(nu_say) {
		case 1:
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_text_ext_transformed(512 + cur_xview, 358 + cur_yview , "Nuclear Launch Detected", 10, 300, 2, 2, 0);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
		case 2:
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_color(c_dkgray);
		draw_text_ext_transformed(512 + cur_xview, 358 + cur_yview , "Nuclear Launch Canceled", 10, 300, 2, 2, 0);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
		case 3:
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_color(c_red);
		draw_text_ext_transformed(512 + cur_xview, 358 + cur_yview , "The Last Judgement \n \n Armageddon", 10, 300, 4, 4, 0);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
	}
	nu_say_time -= 1;
}
if (global.show_me == false) {
	var rot_x, rot_y;
	
	rot_x = surf_xoffset * cos(degtorad(-YA)) - surf_yoffset * sin(degtorad(-YA));
	rot_y = surf_xoffset * sin(degtorad(-YA)) + surf_yoffset * cos(degtorad(-YA));
	draw_surface_ext(surf, x - rot_x * big_val, y - rot_y * big_val, big_val, big_val, YA, color, 1); 

	draw_sprite_ext(effect_index, effect_index_num, x, y, big_val, big_val, temp_YA,color,alpha);//추가 효과 그래픽
	if (terror_charge < 5) {
		draw_sprite_ext(spr_terror_charge,terror_charge,x,y,big_val,big_val,YA,color,alpha);
	}
	shader_reset();
	if (frame_level_up =1) {
		draw_sprite_ext(spr_level_up,-1,x,y,big_val,big_val,0,color,1);
	}//레벨 업 표시
	gpu_set_fog(false, c_white, 0, 1000);
	draw_sprite(global.stats, 0, x, y);//특성	
	draw_sprite_ext(buff_index,-1, x, y, big_val, big_val, 0,color,alpha);//추가 효과 그래픽
	draw_sprite_part(spr_hp,5,0,0,58,4,x-28,y-44);//체력 바
	var _len = m_hp + armor;
	if (protection_val > 0) {
		draw_sprite_ext(spr_barrier, 0, x, y, big_val, big_val, 0, c_white, alpha * protection_val / 10);	
	}
	if (armor + hp < m_hp) {
		var _ration = _len / m_hp;
		var _hp_len = (hp/_len) * 58 * _ration;
		draw_sprite_part(spr_hp,0,0,0,_hp_len,4,x-28,y-44);//체력 바
		draw_sprite_part(spr_hp,10,0,0,(armor/_len) * 58 * _ration,4, x-28+_hp_len,y-44);//아머 바   
	}
	else {
		 _len = armor + hp
		var _hp_len = (hp/_len)*58
		draw_sprite_part(spr_hp,0,0,0,(hp/_len)*58,4,x-28,y-44);//체력 바
		draw_sprite_part(spr_hp,10,0,0,(armor/_len)*58,4, x-28+_hp_len,y-44);//아머 바
	}
	draw_sprite_part(spr_hp,7,0,0,58,4,x-28,y-40);
	var low_sturn = sturn;
	if (low_sturn > 80) {
		low_sturn = 80;
	}
	draw_sprite_part(spr_hp,6,0,0,(low_sturn/80)*58,4,x-28,y-40);//스턴바
	draw_set_halign(fa_center);
	draw_text(x,y-60, "LV." + string(level + 1));
	draw_set_color(c_black);
	draw_text(x + 1,y-59, "LV." + string(level + 1));
	draw_text_bold(x, y + 32, "■ "+ global.name+" ■");
	switch (global.team) {
	case 0 : draw_set_color(c_red);
	break;
	case 1 : draw_set_color(c_yellow);
	break
	default:
		draw_set_color(c_white);
	break;
	}
	draw_text(x, y + 32, "■ "+ global.name+" ■");//이름
	draw_set_color(c_yellow);
	if (global.hat == spr_hat40) {
		draw_set_alpha(combo_time / 40);
		draw_text(x + 45, y, "Combo:" + string(combo));
		draw_set_alpha(1);
	}
	if (say_time > 0) {
	draw_set_color(c_black);
	draw_text_bold(x, y - 80, chat);
	draw_set_color(c_white);
	draw_text(x,y - 80 ,chat);
	}
	
	if (a_a_cooltime = 2 and global.hat != spr_hat29 and global.hat !=spr_hat26 and global.hat !=spr_hat37) {
	skill_say_time = 60;
    skill_say = "' 쿨타임류 스킬 준비됨! '"//쿨타임 알림
    }
	
    switch(buff_index) {
	case buff_fast_go:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x, y + 48, "[ 이동속도 증가 ]");
		draw_set_alpha(1);
	break;
	case buff_nu2:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 공격력 + 50% ]");
		draw_set_alpha(1);
	break;
	case buff_bwiza2:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 이동속도 감소 ]");
		draw_set_alpha(1);
	break;
	case buff_mpkiller:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 마나 감소 ]");
		draw_set_alpha(1);
	break;
	case buff_giligili:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 방향제어 ]");
		draw_set_alpha(1);
	break;
	case buff_timea:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 행동불가 ]");
		draw_set_alpha(1);
	break;
	case spr_gas:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 체력이 점점 감소합니다. ]");
		draw_set_alpha(1);
	break;
	case buff_timeb:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 타격시 아이템 가속 + 100% ]");
		draw_set_alpha(1);
	break;
	case buff_timeP:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 모든 자동회복 2배 ]");
		draw_set_alpha(1);
	break;
	case buff_p2:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 재생력 증가 ]");
		draw_set_alpha(1);
	break;
		case buff_shadow:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 은신 ]");
		draw_set_alpha(1);
	break;
		case buff_noheal:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 회복금지 ]");
		draw_set_alpha(1);
	break;
		case buff_see3:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 검열됨 ]");
		draw_set_alpha(1);
	break;
		case buff_see2:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 경직 ]");
		draw_set_alpha(1);
	break;
		case buff_jaja:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 받는 피해 - 50% ]");
		draw_set_alpha(1);
	break;
		case buff_apple3:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48, "[ 체력 페널티 ]");
		draw_set_alpha(1);
	break;
	case spr_wing1:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48 , "[ 무적! ]");
		draw_set_alpha(1);
	break;
	case buff_noitem:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48 , "[ 아이템 사용금지 ]");
		draw_set_alpha(1);
	break;
	case buff_sang:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48 , "[ 타격시 기 회복 + 25% ]");
		draw_set_alpha(1);
	break;
	case buff_nin4:
		draw_set_color(c_white)
		draw_set_alpha(buff_time / 40);
		draw_text(x , y + 48 , "[ 받는 데미지 + 20% ]");
		draw_set_alpha(1);
	break;
	
	}//캐릭터위에 말
	if (live == 0) {
		draw_sprite_ext(spr_rip,1,x,y,big_val,big_val,YA,-1,1);
	}
	else {
		if(sturn > 0) {
			draw_sprite_ext(spr_star,star_frame,x,y,big_val,big_val,YA,color,alpha);
			if (star_frame == 1) {
				if (star_frame_s == 0)
				{
					star_frame = 0;
					star_frame_s = 5;
				}
			}
			else
			{
				if (star_frame_s == 0)
				{
					star_frame = 1;	
					star_frame_s = 5;
				}
			}
			if (star_frame_s > 0) {
				star_frame_s -= 1;
			}
		}
	}
}

draw_set_halign(fa_center);
if (skill_say_time > 0) {
	draw_set_color(make_color_rgb(32, 23, 79));
	draw_text_bold(cur_xview + 512, cur_yview + 350, skill_say);
	draw_set_color(make_color_rgb(136, 223, 249));
	draw_text(cur_xview + 512, cur_yview + 350, skill_say);
	draw_set_color(c_white);
}
if (chat_point = 1) {
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	var chat_x = cur_xview + global.window_width / 2 - (1024 / 2 - obj_say_here_online.xstart);
	draw_sprite(spr_say_here,0,chat_x,cur_yview + 384);
	if (instance_exists(obj_say_here_online)) {
		draw_text(chat_x,cur_yview + 384, obj_say_here_online.text.get_text());
	}
	draw_set_color(c_white);
}//그 채팅 칠때 나오는거
if (mine_say_time > 0) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white)
	draw_text(x + 1,y - 79 , mine_say);
	draw_set_color(c_black);
	draw_text(x,y - 80 , mine_say);
}//캐릭터위에 말 세팅

draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (is_babo_angle_show) {
	draw_set_color(c_red);
	var len1 = 55, len2 = 45;
	draw_arrow(x, y, x + lengthdir_x(len1, babo_angle1), y + lengthdir_y(len1, babo_angle1), 15);
	draw_arrow(x, y, x + lengthdir_x(len1, babo_angle2), y + lengthdir_y(len1, babo_angle2), 15);

	draw_set_color(c_white);
}
check_seq_is_end();