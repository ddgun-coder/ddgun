function item_table(argument0) {
	var what = argument0;
	switch(what)
	{
		case 0:
			normal_play(i_book);
		break;
		case 1:
			normal_play(i_red_heal);
		break;
		case 2:
			normal_play(i_blue_heal);
		break;
		case 3 :
			normal_play(i_telescope);
		break;
		case 4 :
			normal_play(yellow_1_act);
		break;
		case 5 :
			a_cooltime = 15;
			go_to_scale = 2;
			big_val_time = 400;
		break;
		case 6 :
			random_table1();
		break;
		case 7 :
			random_table2();
		break;
		case 8 :
			random_table3();
		break;
		case 9 :
			normal_play(bwiza_2_act);
		break;
		case 10 :
			normal_play(p_1_act);
		break;
		case 11 :
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
		break;
		case 12 :
			normal_play(twiza_1_acti);
		break;
		case 13 :
			normal_play(twiza_2_acti);
		break;
		case 14 :
			normal_play(apple_2_act);
		break;
		case 15 :
			normal_play(shep_1_act);
		break;
		case 16 :
			normal_play(gun_1_act);
		break;
		case 17 :
			normal_play(lobo_1_act);
		break;
		case 18 :
			normal_play(ik_1_act);
		break;
		case 19 :
			normal_play(hide_1_act);
		break;
		case 20 :
			normal_play(mili_1_act);
		break;
		case 21 :
			normal_play(mili_2_act);
		break;
		case 22 :
			normal_play(lobo_2_act);
		break;
		case 23 :
			normal_play(p_2_act);
		break;
		case 25 :
			normal_play(ddr_1_act);
		break;
		case 26 :
			normal_play(ik_3_act);
		break;
		case 27 :
			normal_play(gili_1_act);
		break;
		case 28 :
			normal_attack_type = spr_hamer;
		break;
		case 29 :
			normal_play(kpower_1_act);
		break;
		case 30 :
			normal_play(apple_1_act);
		break;
		case 31 :
			normal_play(EQ_1_act);
		break;
		case 32 :
			normal_play(korea_2_act);
		break;
		case 33 :
			normal_play(korea_1_act);
		break;
		case 34 :
			normal_play(mine_4_act);
		break;
		case 35 :
			normal_play(hunt_1_act);
		break;
		case 36 :
			normal_play(musa_1_act);
		break;
		case 37 :
			normal_play(hunt_2_act);
		break;
		case 38 :
			normal_play(hide_2_act);
		break;
		case 39 :
			normal_play(kpower_2_act);
		break;
		case 40 :
			normal_play(sward_1_act);
		break;
		case 41 :
			normal_play(healer_1_act);
		break;
		case 42 :
			normal_play(charge_1_act);
		break;
		case 43 :
			normal_attack_type = spr_hat11;
		break;
		case 44 :
			normal_play(he_1_act);
		break;
		case 45 :
			normal_play(fwiza_2_act);
		break;
		case 46:
			normal_play(cry_2_act);
		break;
		case 48:
			normal_play(ane_2_act);
		break;
		case 49:
			normal_play(gili_3_act);
		break;
		case 50:
			normal_play(spear_1_act);
		break;
		case 51:
			normal_play(yellow_2_act);
		break;
		case 52:
			normal_play(shep_2_act);
		break;
		case 53:
			normal_play(wing_2_act);
		break;
		case 54:
			normal_play(nu_1_act1);
		break;
		case 55:
			normal_play(jam_1_act);
		break;
		case 56:
			normal_play(mine_1_act);
		break;
		case 57:
			normal_play(die_1_act);
		break;
		case 58:
			normal_play(nuke_1_act);
		break;
		case 59:
			normal_play(nin_1_act);
		break;
		case 60:
			normal_play(ma_1_act);
		break;
		case 65:
			normal_play(trol_2_act);
		break;
		case 62:
			normal_play(ddr_2_act);
		break;
		case 63:
			normal_play(die_3_act);
		break;
		case 64 : 
			normal_play(healer_2_act);
		break;
		case 66:
			random_table4();
		break;
		case 67:
			normal_play(EQ_2_act);
		break;
		case 68:
			normal_play(nk_2_act);
		break;
		case 69:
			normal_play(bwiza_3_act);
		break;
		case 70:
			normal_play(shep_3_act);
		break;
		case 71:
			normal_play(pwiza_2_act);
		break;
	}
}
