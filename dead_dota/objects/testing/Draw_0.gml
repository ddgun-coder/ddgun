if (creper_die == 0) {
	footL_x = x + (lengthdir_x(-20 + left_foot_deltax, YA) + lengthdir_x(10 + left_foot_deltay, YA + 270)) * big_val;
	footL_y = y + (lengthdir_y(-20 + left_foot_deltax, YA) + lengthdir_y(10 + left_foot_deltay, YA + 270)) * big_val;
	footR_x = x + (lengthdir_x(20 + right_foot_deltax, YA) + lengthdir_x(10 + right_foot_deltay, YA + 270)) * big_val;
	footR_y = y + (lengthdir_y(20 + right_foot_deltax, YA) + lengthdir_y(10 + right_foot_deltay, YA + 270)) * big_val;
	armL_x = x + (lengthdir_x(-20 + left_arm_deltax, YA) + lengthdir_x(left_arm_deltay, YA + 270)) * big_val;
	armL_y = y + (lengthdir_y(-20 + left_arm_deltax, YA) + lengthdir_y(left_arm_deltay, YA + 270)) * big_val;
	armR_x = x + (lengthdir_x(20 + right_arm_deltax, YA) + lengthdir_x(right_arm_deltay, YA + 270)) * big_val;
	armR_y = y + (lengthdir_y(20 + right_arm_deltax, YA) + lengthdir_y(right_arm_deltay, YA + 270)) * big_val;
	hat_x = x + lengthdir_x(charge * 15, YA - 90);
	hat_y = y + lengthdir_y(charge * 15, YA - 90);
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
if (global.hat == spr_hat42) {
	draw_set_color(c_blue);
	draw_circle(x, y, 450, true);
	draw_set_color(c_red);
	draw_circle(x, y, 300, true);
}
cur_xview = camera_get_view_x(view_camera[view_current]);
cur_yview = camera_get_view_y(view_camera[view_current]);
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
	draw_sprite_ext(effect_index_under, effect_index_num, x, y, big_val, big_val, temp_YA,color,alpha);
	if (live =0) {
		draw_sprite_ext(spr_rip,0,x,y,big_val,big_val,YA,-1,1);
		shader_set(shGrayscale);
	}
	if (live = 1) {
		if(only_hat == false) {
		var a, f;
		if (global.hat == spr_hat39 and level == 3) {
			a = spr_arm31
			f = spr_foot22;
		}
		else {
			a = global.arm;
			f = global.foot;
		}
		draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale * big_val, left_foot_yscale * big_val, left_foot_YA, color, alpha);//왼발
		draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale * big_val, right_foot_yscale * big_val, right_foot_YA, color, alpha);//오른발
		draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale * big_val, left_arm_yscale * big_val, left_arm_YA, color, alpha);//왼손
		draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale * big_val, right_arm_yscale * big_val, right_arm_YA, color, alpha);//오른손
		//팔
		}
	}
	if (sturn = 0)
	{
		switch (face_variable)
		{
			case 0:
				switch(global.face) {
						case spr_e4:
							draw_sprite_ext(spr_e4,-1,x,y,big_val,big_val,YA,-1,alpha);
						break;
						default:
							draw_sprite_ext(global.face,0,x,y,big_val,big_val,YA,color,alpha);
						break;
					}
			break;
			case 1:
				draw_sprite_ext(spr_hunt_face,face_frame,x,y,big_val,big_val,YA,color,alpha);
			break;
		}
	
	}
	if(sturn > 0)
	{
		ser_eface(global.face);
	}
	if (hat_bye = false) {
		if(global.hat != spr_hat6) {
			if (instance_exists(see_skill31)) {
				draw_sprite_ext(buff_see3,-1,hat_x,hat_y,hat_xscale * big_val ,big_val,YA + hat_YA,color,alpha);// 모자
			}
			else {
				if (level ==4) {
					switch(global.hat) {
						case spr_hat5:
						case spr_hat1:
						    draw_sprite_ext(global.hat,sprite_get_number(global.hat) - 1,hat_x,hat_y,hat_xscale * big_val ,big_val,YA + hat_YA,color,alpha);
					    break;
						default:
						    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale * big_val, big_val,YA + hat_YA,color,alpha);
				        break;
					}
				}
				else {
			        if (global.hat != spr_level5_hat12) {
					    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale * big_val ,big_val,YA + hat_YA,color,alpha);// 모자
					}
				    else {
					    draw_sprite_ext(global.hat,-1,hat_x,hat_y,hat_xscale * big_val ,big_val,YA + hat_YA,color,alpha);
					}
				}
			}
		}
		else {
			draw_sprite_ext(spr_hat6_1 + level, global.skin,hat_x,hat_y,hat_xscale * big_val ,big_val,YA + hat_YA,color,alpha);
		}
	}
	if (frame_level_up =1) {
		draw_sprite_ext(spr_level_up,-1,x,y,big_val,big_val,0,color,1);
	}//레벨 업 표시
	if (spr_armr_more != spr_none or spr_arml_more != spr_none)
	{
		var armL_more_x = armL_x + lengthdir_x(-spr_arm_morex, left_arm_YA) + lengthdir_x(spr_arm_morey, left_arm_YA + 270);
		var armL_more_y = armL_y + lengthdir_y(-spr_arm_morex, left_arm_YA) + lengthdir_y(spr_arm_morey, left_arm_YA + 270);
		var armR_more_x = armR_x + lengthdir_x(spr_arm_morex, right_arm_YA) + lengthdir_x(spr_arm_morey, right_arm_YA + 270);
		var armR_more_y = armR_y + lengthdir_y(spr_arm_morex, right_arm_YA) + lengthdir_y(spr_arm_morey, right_arm_YA + 270);
		draw_sprite_ext(spr_armr_more, spr_arm_more_num, armR_more_x, armR_more_y, big_val * right_arm_xscale, big_val * right_arm_yscale, right_arm_YA,color,alpha);
		draw_sprite_ext(spr_arml_more, spr_arm_more_num, armL_more_x, armL_more_y, big_val * left_arm_xscale, big_val * left_arm_yscale, left_arm_YA,color,alpha);
	}//추가 팔 그래픽
	draw_sprite_ext(effect_index, effect_index_num, x, y, big_val, big_val, temp_YA,color,alpha);//추가 효과 그래픽
	if (alive > 0) {
		draw_sprite_ext(spr_spawn1, 0, x, y, big_val, big_val, 0,-1,1);
		draw_sprite_ext(spr_spawn2, 0, x, y, alive / 3, alive / 3, 0,-1,1);
	}
	if (terror_charge < 5) {
		draw_sprite_ext(spr_terror_charge,terror_charge,x,y,big_val,big_val,YA,color,alpha);
	}
	shader_reset();
	draw_sprite_ext(buff_index,-1, x, y, big_val, big_val, 0,color,alpha);//추가 효과 그래픽
	draw_sprite_part(spr_hp,5,0,0,(m_hp/100)*58,4,x-28,y-44);
	draw_sprite_part(spr_hp,0,0,0,(hp/100)*58,4,x-28,y-44);//작은 채력바
	draw_sprite_part(spr_hp,7,0,0, 58,4,x-28,y-40);
	draw_sprite_part(spr_hp,6,0,0,(sturn/40)*58,4,x-28,y-40);//스턴바
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
	draw_set_color(c_white);
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
	}//캐릭터위에 말
	if (live == 0) {
		draw_sprite_ext(spr_rip,1,x,y,big_val,big_val,YA,-1,1);
	}
	else {
		if(sturn > 0) {
			draw_sprite_ext(spr_star,-1,x,y,big_val,big_val,YA,color,alpha);
		}
	}
}

draw_set_halign(fa_center);
if (skill_say_time > 0) {
	draw_set_color(c_blue);
	draw_text(cur_xview + 512, cur_yview + 350, skill_say);
	draw_set_color(c_white);
}
if (chat_point = 1) {
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_sprite(spr_say_here,0,cur_xview + 320,cur_yview + 384);
	draw_text(cur_xview + 320,cur_yview + 384, keyboard_string + string(ime_get_string_utf8()))
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
draw_set_color(c_blue)
draw_text_bold(cur_xview + 10 , cur_yview + 740 ,"gold:" + string(global.money))
draw_set_color(c_white);
draw_text(cur_xview + 10 , cur_yview + 740 ,"gold:" + string(global.money));//돈 부분