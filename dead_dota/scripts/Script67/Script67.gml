// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script67(){

}
function surf_made_ind(_ind, surf) {
	surface_set_target(surf);
	var origin_x = 50;
	var origin_y = 50;
	with (_ind) {			
		var a, f;
		if (hat == spr_hat39 and hat_frame == 3) {
			a = spr_arm31
			f = spr_foot22;
		}
		else {
			a = arm;
			f = foot;
		}
		var dx = x - origin_x;
		var dy = y - origin_y;
		var face_x = lengthdir_x(face_delta, YA - 90) + origin_x;
		var face_y = lengthdir_y(face_delta, YA - 90) + origin_y;
		switch(hide_bam) {
			case false:
			    draw_sprite_ext(f, 0, face_x - 20 , face_y + 10 , left_foot_xscale * big_val, left_foot_yscale * big_val, 0, color, alpha);//왼발
			    draw_sprite_ext(f, 0, face_x + 20 , face_y + 10 , right_foot_xscale * big_val, right_foot_yscale * big_val, 0, color, alpha);//오른발
			    draw_sprite_ext(a, 0, face_x - 20 , face_y, left_arm_xscale * big_val, left_arm_yscale * big_val, 0, color, alpha);//왼손
		 	    draw_sprite_ext(a, 0, face_x + 20 , face_y, right_arm_xscale * big_val, right_arm_yscale * big_val, 0, color, alpha);//오른손
			break;
			default:
			    draw_sprite_ext(f, 0, face_x - 20 , face_y + 10, left_foot_xscale * big_val, left_foot_yscale * big_val, 0, color, 0);//왼발
			    draw_sprite_ext(f, 0, face_x + 20 , face_y + 10, right_foot_xscale * big_val, right_foot_yscale * big_val, 0, color, 0);//오른발
			    draw_sprite_ext(a, 0, face_x - 20 , face_y, left_arm_xscale * big_val, left_arm_yscale * big_val, 0, color, 0);//왼손
			    draw_sprite_ext(a, 0, face_x + 20 , face_y, right_arm_xscale * big_val, right_arm_yscale * big_val, 0, color, 0);//오른손
			break;	
		}
		var _hat_x = lengthdir_x(charge * 15 + face_delta, YA - 90) + origin_x;
		var _hat_y = lengthdir_y(charge * 15 + face_delta, YA - 90) + origin_y;
		draw_sprite_ext(face,0,face_x,face_y,big_val,big_val,0,color,alpha);
		if(draw_hat != spr_hat6) {
			if (instance_exists(see_skill31)) {
				draw_sprite_ext(buff_see3,-1,_hat_x,_hat_y,hat_xscale * big_val ,big_val,0,color,alpha);
			}
			else {
				if (hat_frame == 4) {
					switch(draw_hat) {
						case spr_hat5:
						case spr_hat1: 
							draw_sprite_ext(draw_hat,sprite_get_number(draw_hat) - 1,_hat_x,_hat_y,hat_xscale * big_val ,hat_yscale * big_val,0,color,alpha);
						break;
						case spr_level5_hat12:
							draw_sprite_ext(spr_level5_hat12,-1,_hat_x,_hat_y,hat_xscale * big_val ,big_val,0,color,alpha);
						break;
						default:
							draw_sprite_ext(draw_hat,hat_frame + skin * 4,_hat_x,_hat_y,hat_xscale * big_val, big_val,0,color,alpha);
					    break;
					} 
				}					   
				else {
					if (draw_hat != spr_level5_hat12) {
						switch(hide_bam) {
							case false:
								draw_sprite_ext(draw_hat,hat_frame + skin * 4,_hat_x,_hat_y,hat_xscale * big_val ,big_val,0,color,alpha)// 모자
							break;
							default:
								draw_sprite_ext(draw_hat,hat_frame + skin * 4,_hat_x,_hat_y,hat_xscale * big_val ,big_val,0,color,0)
							break;
						}
					}
					else {
						draw_sprite_ext(draw_hat,-1,_hat_x,_hat_y,hat_xscale * big_val ,big_val,YA + _hat_yA + hat_angle,color,alpha);
					}
				}
			}  	 
		}
		else {
			var spr_hat_array = [spr_hat6_1, spr_hat6_2, spr_hat6_3, spr_hat6_4];
			draw_sprite_ext(spr_hat_array[hat_frame], skin,_hat_x,_hat_y,hat_xscale * big_val ,hat_yscale * big_val,YA + _hat_yA + hat_angle,color,alpha);
		}
	}
	surface_reset_target();
}