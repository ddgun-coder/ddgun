function scr_draw() {
	if (x > 0)
	{
		image_xscale = big_val;
		image_yscale = big_val;
		image_angle = YA;
		draw_sprite_ext(eiu, effect_index_num, x, y, big_val, big_val, temp_YA,-1,alpha);
		if (live == 0) {
			draw_sprite_ext(spr_rip,0,x,y,big_val,big_val,YA,-1,1);//사망 부분
			draw_sprite_ext(spr_rip,1,x,y,big_val,big_val,YA,-1,1);//사망 부분
			shader_set(shGrayscale);
		}
	
		if (live == 1) {
			if(only_hat == false) {
			var a, f;
			if (hat == spr_hat39 and hat_frame == 3) {
				a = spr_arm31
				f = spr_foot22;
			}
			else {
				a = arm;
				f = foot;
			}
			draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale * big_val, left_foot_yscale * big_val, left_foot_YA, color, alpha);//왼발
			draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale * big_val, right_foot_yscale * big_val, right_foot_YA, color, alpha);//오른발
			draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale * big_val, left_arm_yscale * big_val, left_arm_YA, color, alpha);//왼손
			draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale * big_val, right_arm_yscale * big_val, right_arm_YA, color, alpha);//오른손
			}//팔
		}
		if (live != 2) {
			if(only_hat == false) {
				if (sturn = 0)
				{
					switch (face_variable)
					{
						case 0:
							switch(face) {
								case spr_e4:
									draw_sprite_ext(spr_e4,-1,x,y,big_val,big_val,YA,-1,alpha);
								break;
								default:
									draw_sprite_ext(face,0,x,y,big_val,big_val,YA,color,alpha);
								break;
							}
						break;
						case 1:
							draw_sprite_ext(spr_hunt_face,face_frame,x,y,big_val,big_val,YA,color,alpha);
						break;
					}
	
				}
				else
				{
					ser_eface(face);
				}//얼굴
			}
			if (hat_bye = false) {
				hat_x = x + lengthdir_x(charge * 15, YA - 90);
				hat_y = y + lengthdir_y(charge * 15, YA - 90);
				if(hat != spr_hat6) {
					if (instance_exists(see_skill31)) {
						draw_sprite_ext(buff_see3,-1,hat_x,hat_y,hat_xscale * big_val ,big_val,YA + hat_YA,color,alpha);
					}
					else {
						if (hat_frame ==4) {
						   switch(global.hat) {
							   case spr_hat5:
							   case spr_hat1: 
							       draw_sprite_ext(hat,sprite_get_number(hat) - 1,hat_x,hat_y,hat_xscale * big_val ,hat_yscale * big_val,YA + hat_YA,color,alpha);
							   break;
							   default:
						           draw_sprite_ext(hat,hat_frame + skin * 4,hat_x,hat_y,hat_xscale * big_val, big_val,YA + hat_YA,color,alpha);
				               break;
						    } 
					   }					   
					   else {
						   if (hat != spr_level5_hat12) {
							   draw_sprite_ext(hat,hat_frame + skin * 4,hat_x,hat_y,hat_xscale * big_val ,hat_yscale * big_val,YA + hat_YA,color,alpha);// 모자
						   }
						   else {
							   draw_sprite_ext(hat,-1,hat_x,hat_y,hat_xscale * big_val ,big_val,YA + hat_YA,color,alpha);
					       }
					   }
			       }  	 
			   }
				else {
					draw_sprite_ext(spr_hat6_1 + hat_frame,skin,hat_x,hat_y,hat_xscale * big_val ,hat_yscale * big_val,YA + hat_YA,color,alpha);
				}
			}
			if(sturn > 0) {
				draw_sprite_ext(spr_star, -1, x, y, big_val, big_val, YA, -1, alpha);
			}
			if (frame_level_up =1) {
			draw_sprite_ext(spr_level_up,-1,x,y,big_val,big_val,0,-1,alpha);
			}//레벨 업 표시
			if (spr_armr_more != spr_none or spr_arml_more != spr_none)
			{
				armL_more_x = armL_x + lengthdir_x(-spr_arm_morex, left_arm_YA) + lengthdir_x(spr_arm_morey, left_arm_YA + 270);
				armL_more_y = armL_y + lengthdir_y(-spr_arm_morex, left_arm_YA) + lengthdir_y(spr_arm_morey, left_arm_YA + 270);
				armR_more_x = armR_x + lengthdir_x(spr_arm_morex, right_arm_YA) + lengthdir_x(spr_arm_morey, right_arm_YA + 270);
				armR_more_y = armR_y + lengthdir_y(spr_arm_morex, right_arm_YA) + lengthdir_y(spr_arm_morey, right_arm_YA + 270);
				draw_sprite_ext(spr_armr_more, spr_arm_more_num, armR_more_x, armR_more_y, big_val * right_arm_xscale, big_val * right_arm_yscale, right_arm_YA,-1,alpha);
				draw_sprite_ext(spr_arml_more, spr_arm_more_num, armL_more_x, armL_more_y, big_val * left_arm_xscale, big_val * left_arm_yscale, left_arm_YA,-1,alpha);
			}//추가 팔 그래픽
			draw_sprite_ext(effect_index, effect_index_num, x, y, big_val, big_val, temp_YA,-1,alpha);//추가 효과 그래픽
			draw_sprite_ext(spr_terror_charge,terror_charge,x,y,big_val,big_val,YA,color,alpha);
			shader_reset();
			if (alive > 0) {
				draw_sprite_ext(spr_spawn1, 0, x, y, big_val, big_val, 0,-1,1);
				draw_sprite_ext(spr_spawn2, 0, x, y, alive / 3, alive / 3, 0,-1,1);
			}
			draw_set_halign(fa_center);
			draw_set_alpha(alpha);
			draw_set_color(c_black);
			draw_text(x + 1,y-59, "LV." + string(hat_frame + 1));
			draw_sprite_ext(buff_index,-1, x, y, big_val, big_val, 0,color,alpha);
			draw_text_bold(x, y + 32, "■ "+name+" ■");
			if (hat_frame <= 3 and room != room_ball) {
				switch (team) {
					case 0 : draw_set_color(c_red);
					break;
					case 1 : draw_set_color(c_yellow);
					break;
				}
			}
			else {
				draw_set_color(c_white);
			}
		}
		else
		{
			draw_sprite_ext(spr_blood, 0, x, y, big_val, big_val, YA, -1, alpha);
		}
		draw_sprite_part(spr_hp,5,0,0,(m_hp/100)*58,4,x-28,y-44);
		draw_sprite_part(spr_hp,0,0,0,(hp/100)*58,4,x-28,y-44);//작은 채력바
		draw_sprite_part(spr_hp,7,0,0, 58,4,x-28,y-40);
		draw_sprite_part(spr_hp,6,0,0,(sturn/40)*58,4,x-28,y-40);
		draw_text(x,y+32,"■ "+name+" ■");//이름
		draw_set_color(c_white);
		draw_text(x,y-60, "LV." + string(hat_frame + 1));
		if (say_time > 0) {
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text(x + 1,y - 79 ,chat);
			draw_set_color(c_white);
			draw_text(x,y - 80 ,chat);
		}//캐릭터위에 말

		draw_set_halign(fa_left);
		draw_set_color(c_white)
		draw_set_alpha(1);
	}


}
