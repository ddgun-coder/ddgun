// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_name_to_index(index) {
	var sub = string_digits(sprite_get_name(shop_button1.item[index].sprite));
	if (sub == "") return -1;
	var spr_index = real(sub);
	var act_name = number_to_name(spr_index) + "_" + string(shop_button1.item[index].sprite_ind + 1) + "_act";
	return asset_get_index(act_name);
}

function number_to_name(ind) {
	var name_array = ["no", "yellow", "musa", "hunt", "EQ", "goza", "ssg", "big", "nu", "rand",
					"p", "bwiza", "twiza", "apple", "sward", "healer", "shep", "die", "korea", "ddr", 
					"hide", "lobo", "aring", "wing", "gili", "ik", "mili", "charge", "cry", "ane", 
					"fwiza", "mine", "no", "law", "soda", "elpa", "kpower", "kesin", "fly", "lebe", 
					"fighter", "shit", "wild", "spear", "pwiza", "fheal", "bandit", "gilmak", "sans", "nuke",
					"sea", "pota", "jam", "he", "trol", "coca", "t_killer", "ma", "nk", "time", 
					"see", "nin", "newb", "tu", "sang", "eng", "bb", "yo", "music", "tree", 
					"bam", "gun", "snow", "ass", "ski", "sli"];
	var n = array_length(name_array);
	if (0 < ind and ind < n) {
		return name_array[ind];		
	}
	return "error!";
}

function set_s(temp_id, _varname = varname, realvar) {
	switch(_varname) {
	    case serve_val.terror_charge :
	        temp_id.terror_charge = realvar;
	    break;
	    case serve_val.cancle_able :
	        temp_id.cancle_able = realvar;
	    break;
	    case serve_val.face_variable :
	        temp_id.face_variable = realvar;
	    break;
	    case serve_val.only_hat :
	        temp_id.only_hat = realvar;
	    break;
	    case serve_val.hat_bye :
	        temp_id.hat_bye = realvar;
	    break;
	    case serve_val.color :
	        temp_id.color = realvar;
	    break;
	    case serve_val.left_arm_xscale :
	        temp_id.left_arm_xscale = realvar;
	    break;
	    case serve_val.hat_xscale :
	        temp_id.hat_xscale = realvar;
	    break;
	    case serve_val.hat_yscale :
	        temp_id.hat_yscale = realvar;
	    break;
	    case serve_val.right_arm_xscale :
	        temp_id.right_arm_xscale = realvar;
	    break;
	    case serve_val.live :
	        temp_id.hp = 1;
	        temp_id.live = realvar;
	    break;
	    case serve_val.buff_index :
	        temp_id.buff_index = realvar;
	    break;
	    case serve_val.a_charging :
	        temp_id.a_charging = realvar;
	    break;
	    case serve_val.charging :
	        temp_id.charging = realvar;
	    break;
	    case serve_val.spr_arm_morey :
	        temp_id.spr_arm_morey = realvar;
	    break;
	    case serve_val.spr_arm_morex :
	        temp_id.spr_arm_morex = realvar;
	    break;
	    case serve_val.spr_arml_more :
	        temp_id.spr_arml_more = realvar;
	    break;
	    case serve_val.spr_armr_more :
	        temp_id.spr_armr_more = realvar;
	    break;
	    case serve_val.effect_index :
	        temp_id.effect_index = realvar;
	    break;
	    case serve_val.effect_num :
	        temp_id.effect_num = realvar;
	    break;
		case serve_val.armR_more_x :
			temp_id.armR_more_x = realvar;
		break;
		case serve_val.armR_more_y :
			temp_id.armR_more_y = realvar;
		break;
		case serve_val.armL_more_x :
			temp_id.armL_more_x = realvar;
		break;
		case serve_val.armL_more_y :
			temp_id.armL_more_y = realvar;
		break;
	    case serve_val.hat_YA :
	        temp_id.hat_YA = realvar;
	    break;
		case serve_val.arm_moreR_YA :
			temp_id.arm_moreR_YA = realvar;
		break;
		case serve_val.arm_moreL_YA :
			temp_id.arm_moreL_YA = realvar;
		break;
	    case serve_val.hat_angle :
            temp_id.hat_angle = realvar;
        break;
		case serve_val.face_YA :
	        temp_id.face_YA = realvar;
	    break;
	    case serve_val.right_arm_yscale :
	        temp_id.right_arm_yscale = realvar;
	    break;
	    case serve_val.left_arm_yscale :
	        temp_id.left_arm_yscale = realvar;
	    break;
	    case serve_val.spr_arm_more_num :
	        temp_id.spr_arm_more_num = realvar;
	    break;
	    case serve_val.effect_index_num :
	        temp_id.effect_index_num = realvar;
	    break;
	    case serve_val.hat_frame :
	        temp_id.hat_frame = realvar;
	    break;
	    case serve_val.sturn :
	        temp_id.sturn = realvar;
	    break;
	    case serve_val.team :
	        temp_id.team = realvar;
	    break;
	    case serve_val.alive :
	        temp_id.alive = realvar;
	    break;
	    case serve_val.face :
	        temp_id.face = realvar;
	    break;
	    case serve_val.alpha :
	        temp_id.alpha = realvar;
	    break;
	    case serve_val.eiu :
	        temp_id.eiu = realvar;
	    break;
	    case serve_val.stats :
	        temp_id.stats = realvar;
	    break;
		case serve_val.d_attack_type :
	        temp_id.d_attack_type = realvar;
	    break;
		case serve_val.q_attack_type :
	        temp_id.q_attack_type = realvar;
	    break;
		case serve_val.w_attack_type :
	        temp_id.w_attack_type = realvar;
	    break;
		case serve_val.stats6_type :
             temp_id.stats6_type = realvar;
        break;
		case serve_val.skill_con :
	        temp_id.skill_con = realvar;
	    break;
		case serve_val.up_skill :
	        temp_id.up_skill = realvar;
	    break;
		case serve_val.light :
	        temp_id.draw_lighting = realvar;
	    break;
		case serve_val.babo_change :
			temp_id.babo_change = realvar;
		break;
		case serve_val.protection_val :
			temp_id.protection_val = realvar;
		break;
	    default:
	        //show_debug_message(_varname);
	    break;
	}
}