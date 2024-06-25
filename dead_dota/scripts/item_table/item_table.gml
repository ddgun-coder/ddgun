function item_table(argument0) {
	var what = argument0;
	var index = item_name_to_index(what);
	clock_ui = what;
	var ind = shop_button1.item[what].sprite_ind;
	switch(index) {
		case fighter_1_act : 
			index = fighter_1_act1;
		break;
		case fly_4_act :
			index = fly_4_act1;
		break;
		case die_2_act :
			index = die_2_act2;
		break;
		case spear_1_act :
			index = spear_1_act1;
		break;
		case bb_1_act :
			index = bb_1_act11;
		break;
		case sward_2_act :
			arm_all_normal();
			a_possible = false;
			arm_type = "attack"
			arm_type_more = "apple_1";
			cancle_able = true;
			arm_movement(13, -13, 2, 2);
			shild = true;
			effect_index = effect_shild
			effect_index_num = 0;
			temp_YA = YA;
			server202_sound(sward_2_sound);
			server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
			server77_equal(serve_val.effect_index_num, 0, buffer_bool);
			normal_play(sward_2_act);
			item_index = sward_2_act
			clock_ui = 11;
			return;
			break;
		case nin_4_act :
		   index = nin_0_act;
		   break;
	}
	
	if (index != -1) {
		normal_play(index);
		item_index = index;
	}
	else {
		var spr = shop_button1.item[what].sprite;
		switch(spr) {
			case spr_hat32 :
				switch(ind) {
					case 0:
						index = alpha_1_act;
						break;
					case 1:
						index = mine_2_but;
						break;
					case 2:
						index = mine_2_but1;
						break;
					case 3:
						index = gili_3_act1
						break;
				}
			break;
			case spr_book :
				var timeLine_array = [i_book1, i_red_heal, i_blue_heal, i_telescope, lobo_1_act, mine_4_act, die_3_act];
				index = timeLine_array[ind];
			break;
			case spr_hat9 :
				item_index = spr_hat9;
				var rand_array = [random_table1, random_table2, random_table3, random_table4];
				rand_array[ind]();
				return;
			break;
			case spr_hat8 : 
				if (ind == 0) {
					index = nu_1_act1;	
				}
			break;
			case spr_hat56 :
				if (ind == 3) {
					index = t_killer44;		
				}
			break;
			case spr_hat7:
				if (ind == 0) {
					a_cooltime = 15;
					go_to_scale = 2;
					big_val_time = 400;
					item_index = spr_hat7
					return;
				}
				if (ind == 2) {
					go_to_scale = 1 + big_val;
					big_val += 1;
					big_val_time = 220;
					server78_create_instace(n_attack_area, x, y);
					server202_sound(ready_1_sound)
					normal_play(r_ready1);
					item_index = r_ready1;
					return;
				}
			break;
			case spr_hat69 :
				if (ind == 3) {
					index = tree_4_act;	
				}
		}
		if (index == -1) {
			show_message("error! item_index ->" + string(what));
			return;
		}
		item_index = index;
		normal_play(index);
	}
}