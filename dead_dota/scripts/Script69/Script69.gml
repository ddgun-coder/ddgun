// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function buff_exp(){
    aexp += 50
}

function card_name_check(_name) {
	if (instance_exists(obj_card_manager)) {
		if (obj_card_manager.cur_card_str != noone) {
			if (obj_card_manager.cur_card_str.name_str == _name) {
				return true;	
			}
		}
	}	
	return false;
}

function effect_card() {
	with (obj_card_manager) {
		light_effect();	
	}
}

function surf_set() {
	if (!surface_exists(surf)) {
		surf = surface_create(1024, 1024);
	}
	surface_set_target(surf);
	draw_clear_alpha(c_white, 0);
	if (live =0) {
		draw_sprite_ext(spr_rip,0,x,y,big_val,big_val,YA,-1,1);
		shader_set(shGrayscale);
	}
	if (live = 1) {
		if (draw_lighting) {
			gpu_set_fog(true, c_white, 0, 1000);
		}
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
		draw_sprite_ext(effect_index_under, effect_index_num, effect_x, effect_y, big_val, big_val, effect_YA,color,alpha);
		switch(hide_bam) {
		case false:
		    draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale * big_val, left_foot_yscale * big_val, left_foot_YA, color, alpha);//왼발
		    draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale * big_val, right_foot_yscale * big_val, right_foot_YA, color, alpha);//오른발
		    draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale * big_val, left_arm_yscale * big_val, left_arm_YA, color, alpha);//왼손
		    draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale * big_val, right_arm_yscale * big_val, right_arm_YA, color, alpha);//오른손
		break;
		default:
		    draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale * big_val, left_foot_yscale * big_val, left_foot_YA, color, 0);//왼발
		    draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale * big_val, right_foot_yscale * big_val, right_foot_YA, color, 0);//오른발
		    draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale * big_val, left_arm_yscale * big_val, left_arm_YA, color, 0);//왼손
		    draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale * big_val, right_arm_yscale * big_val, right_arm_YA, color, 0);//오른손
		break;
		}//팔
		}
	}
	if (sturn = 0)
	{
		switch (face_variable)
		{
			case 0:
				switch(global.face) {
						case spr_e4:
							draw_sprite_ext(spr_e4,-1,face_x,face_y,big_val,big_val,face_YA,-1,alpha);
						break;
						default:
						switch(hide_bam) {
							case false:
							    draw_sprite_ext(global.face,0,face_x,face_y,big_val,big_val,face_YA,color,alpha);
							break;
							default:
							    draw_sprite_ext(global.face,0,face_x,face_y,big_val,big_val,face_YA,color,0);
							break;
						}
					break;
					}
			break;
			case 1:
				draw_sprite_ext(spr_hunt_face,face_frame,face_x,face_y,big_val,big_val,face_YA,color,alpha);
			break;
		}
	
	}
	if(sturn > 0)
	{
		ser_eface(global.face);
	}
	if (hat_bye == false or hide_bam == true) {
		if(global.hat != spr_hat6) {
			if (instance_exists(see_skill31)) {
				draw_sprite_ext(buff_see3,-1,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,alpha);// 모자
			}
			else {
				if (level == 4) {
					switch(global.hat) {
						case spr_hat5:
						case spr_hat1:
						    draw_sprite_ext(global.hat,sprite_get_number(global.hat) - 1,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,alpha);
					    break;
						case spr_level5_hat12:
							draw_sprite_ext(global.hat,-1,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,alpha);
						break;
						default:
						    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale * big_val, big_val,hat_YA + hat_angle,color,alpha);
				        break;
					}
				}
				else {
			        if (global.hat != spr_level5_hat12) {
						if (global.hat == spr_hat77 and babo_change == true) {
							draw_sprite_ext(spr_hat77_another,level + global.skin * 4,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,alpha);
						}
						else {
							switch(hide_bam) {
								case false:
								    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,alpha)// 모자
								break;
								default:
								    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,0)
								break;	
							}
						}
					}
				    else {
					    draw_sprite_ext(global.hat,-1,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,alpha);
					}
				}
			}
		}
		else {
			var spr_hat_array = [spr_hat6_1, spr_hat6_2, spr_hat6_3, spr_hat6_4];
			draw_sprite_ext(spr_hat_array[level], global.skin,hat_x,hat_y,hat_xscale * big_val ,big_val,hat_YA + hat_angle,color,alpha);
		}
	}
	
	if (spr_armr_more != spr_none or spr_arml_more != spr_none)
	{
		draw_sprite_ext(spr_armr_more, spr_arm_more_num, armR_more_x, armR_more_y, big_val * right_arm_xscale, big_val * right_arm_yscale, arm_moreR_YA,color,alpha);
		draw_sprite_ext(spr_arml_more, spr_arm_more_num, armL_more_x, armL_more_y, big_val * left_arm_xscale, big_val * left_arm_yscale, arm_moreL_YA,color,alpha);
	}
	surface_reset_target();
}