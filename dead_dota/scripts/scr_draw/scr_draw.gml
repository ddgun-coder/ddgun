function scr_draw() {
	if (room == room_tuto) exit;
	if (x > 0)
	{
		if (global.show_skin == false) skin = 0;
		image_xscale = big_val;
		image_yscale = big_val;
		image_angle = YA;
		draw_sprite_ext(eiu, effect_index_num, x, y, 1, 1, temp_YA,-1,alpha);
		if (live == 0) {
			draw_sprite_ext(spr_rip,0,x,y,1,1,YA,-1,1);//사망 부분		
			draw_sprite_ext(spr_rip,1,x,y,1,1,YA,-1,1);//사망 부분
			shader_set(shGrayscale);
		}
		
		if (!surface_exists(surf)) {
			surf = surface_create(2048, 2048);
		}
		surface_set_target(surf);
		draw_clear_alpha(c_white, 0);
		if (live == 1) {
			if (draw_lighting) {
				gpu_set_fog(true, c_white, 0, 1000);
			}
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
				switch(hide_bam) {
			    case false:
			        draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale * 1, left_foot_yscale * 1, left_foot_YA, color, alpha);//왼발
			        draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale * 1, right_foot_yscale * 1, right_foot_YA, color, alpha);//오른발
			        draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale * 1, left_arm_yscale * 1, left_arm_YA, color, alpha);//왼손
		 	        draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale * 1, right_arm_yscale * 1, right_arm_YA, color, alpha);//오른손
			    break;
			    default:
			        draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale * 1, left_foot_yscale * 1, left_foot_YA, color, 0);//왼발
			        draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale * 1, right_foot_yscale * 1, right_foot_YA, color, 0);//오른발
			        draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale * 1, left_arm_yscale * 1, left_arm_YA, color, 0);//왼손
			        draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale * 1, right_arm_yscale * 1, right_arm_YA, color, 0);//오른손
			    break;
			    }
			}//팔
		}
		if (live != 2) {
			if(only_hat == false) {
				face_x = surf_xoffset + lengthdir_x(face_delta, YA - 90);
				face_y = surf_yoffset + lengthdir_y (face_delta, YA - 90);
				if (sturn = 0)
				{
					switch (face_variable)
					{
						case 0:
						switch(face) {
							case spr_e4:
								draw_sprite_ext(spr_e4,-1,face_x,face_y,1,1,face_YA,-1,alpha);
								break;
							default:
								switch(hide_bam) {
									case false:
									    draw_sprite_ext(face,0,face_x,face_y,1,1,face_YA,color,alpha);
										break;
									default:
									    draw_sprite_ext(face,0,face_x,face_y,1,1,face_YA,color,0);
										break;
								}
							    break;
						    }
				            break;
						case 1:
							draw_sprite_ext(spr_hunt_face,face_frame,face_x,face_y,1,1,face_YA,color,alpha);
						break;
					}
	
				}
				else
				{
					ser_eface(face);
				}//얼굴
			}
			if (hat_bye = false or hide_bam == true) {
				hat_x = surf_xoffset + lengthdir_x(charge * 15 + face_delta, YA - 90);
				hat_y = surf_yoffset + lengthdir_y(charge * 15 + face_delta, YA - 90);  
				if(draw_hat != spr_hat6) {
					if (instance_exists(see_skill31)) {
						draw_sprite_ext(buff_see3,-1,hat_x,hat_y,hat_xscale * 1 ,1,hat_YA + hat_angle,color,alpha);
					}
					else {
						if (hat_frame == 4) {
						   switch(draw_hat) {
							   case spr_hat5:
							   case spr_hat1: 
							       draw_sprite_ext(draw_hat,sprite_get_number(draw_hat) - 1,hat_x,hat_y,hat_xscale * 1 ,hat_yscale * 1,hat_YA + hat_angle,color,alpha);
							   break;
							   case spr_level5_hat12:
									draw_sprite_ext(spr_level5_hat12,-1,hat_x,hat_y,hat_xscale * 1 ,1,hat_YA + hat_angle,color,alpha);
							   break;
							   default:
						           draw_sprite_ext(draw_hat,hat_frame + skin * 4,hat_x,hat_y,hat_xscale * 1, 1,hat_YA + hat_angle,color,alpha);
				               break;
						    } 
					   }					   
					   else {
						   if (draw_hat != spr_level5_hat12) {
							   if (draw_hat == spr_hat77 and babo_change == true) {
									draw_sprite_ext(spr_hat77_another,level + global.skin * 4,hat_x,hat_y,hat_xscale * 1 ,1,hat_YA + hat_angle,color,alpha);
								}
								else {
								   switch(hide_bam) {
								       case false:
								          draw_sprite_ext(draw_hat,hat_frame + skin * 4,hat_x,hat_y,hat_xscale * 1 ,1,hat_YA + hat_angle,color,alpha)// 모자
								       break;
								       default:
								          draw_sprite_ext(draw_hat,hat_frame + skin * 4,hat_x,hat_y,hat_xscale * 1 ,1,hat_YA + hat_angle,color,0)
								       break;
							       }
								}
						   }
						   else {
							   draw_sprite_ext(draw_hat,-1,hat_x,hat_y,hat_xscale * 1 ,1,hat_YA + hat_angle,color,alpha);
					       }
					   }
			       }  	 
			   }
				else {
					var spr_hat_array = [spr_hat6_1, spr_hat6_2, spr_hat6_3, spr_hat6_4];
					draw_sprite_ext(spr_hat_array[hat_frame], skin,hat_x,hat_y,hat_xscale * 1 ,hat_yscale * 1,hat_YA + hat_angle,color,alpha);
				}
			}
			draw_sprite_ext(spr_armr_more, spr_arm_more_num, armR_more_x, armR_more_y, right_arm_xscale, 1 * right_arm_yscale, arm_moreR_YA,-1,alpha);
			draw_sprite_ext(spr_arml_more, spr_arm_more_num, armL_more_x, armL_more_y, left_arm_xscale, 1 * left_arm_yscale, arm_moreL_YA,-1,alpha);
			gpu_set_fog(false, c_white, 0, 1000);
			surface_reset_target();

			var rot_x, rot_y;
	
			rot_x = surf_xoffset * cos(degtorad(-YA)) - surf_yoffset * sin(degtorad(-YA));
			rot_y = surf_xoffset * sin(degtorad(-YA)) + surf_yoffset * cos(degtorad(-YA));
			draw_surface_ext(surf, x - rot_x * big_val, y - rot_y * big_val, big_val, big_val, YA, color, 1);
			draw_text(x - 105, y, right_arm_xscale);
			draw_text(x + 105, y, left_arm_xscale);

			if(sturn > 0) {
				draw_sprite_ext(spr_star, -1, x, y, 1, 1, YA, -1, alpha);
			}
			if (frame_level_up =1) {
			draw_sprite_ext(spr_level_up,-1,x,y,1,1,0,-1,alpha);
			}//레벨 업 표시
			draw_sprite_ext(effect_index, effect_index_num, x, y, 1, 1, temp_YA,-1,alpha);//추가 효과 그래픽
			draw_sprite_ext(spr_terror_charge,terror_charge,x,y,1,1,YA,color,alpha);
			shader_reset();

			draw_set_halign(fa_center);
			draw_set_alpha(alpha);
			draw_set_color(c_black);
			draw_text(x + 1,y-59, "LV." + string(hat_frame + 1));
			draw_sprite_ext(buff_index,-1, x, y, 1, 1, 0,color,alpha);
			draw_text_bold(x, y + 32, "■ "+name+" ■");
			if (hat_frame <= 3 and room != room_ball) {
				switch (team) {
					case 0 : draw_set_color(c_red);
					break;
					case 1 : draw_set_color(c_yellow);
					break;
					case 2 : draw_set_color(c_white);
					break;
				}
			}
			else {
				draw_set_color(c_white);
			}
		}
		else
		{
			draw_sprite_ext(spr_blood, 0, x, y, 1, 1, YA, -1, alpha);
			surface_reset_target();
		}
		draw_sprite_part(spr_hp,5,0,0,58,4,x-28,y-44);//체력 바
		if (protection_val > 0) {
			draw_sprite_ext(spr_barrier, 0, x, y, big_val, big_val, 0, c_white, alpha * protection_val / 10);	
		}
		var _len = m_hp + armor;
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
		draw_sprite_part(spr_hp,6,0,0,(low_sturn/40)*58,4,x-28,y-40);
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
