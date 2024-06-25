    var D = 13
	var name = spr_none
	var sturn_time = 20
	var send_exp = D * 1.3
	
	
	D = dmg_cal(D, other);
	if (buff_index == buff_djz) {
		sturn_time *= 2;  	
	}
	sturn_time += irandom_range(round(sturn_time / 90) * -1, round(sturn_time / 90))
	if (buff_index != spr_wing1) {
		if (creper = false) {
			if (live = 1) {
				if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
					if (sturn <= 0 and immune == false) {
						if (shild == true and shild_time < 1) {
							if (counter_attak) {
								immune = true;
								shild_time = 40;
								normal_play(gun_2_act1);
								skill_con += 2
								skill_con_time = 100;
							}
							else {
								obj_telescope_view.tele = false;
								immune = true;
								shild_time = 40;
								aexp += D;
								if (hp > 0) {
									hp += D;
								}
								server202_sound(sward_2_shilding);
							}
						}
						else {
							if (counter < 0) {
								if (no_change = false) {
									terror_charge = 0;
									cancle_able = false;
									server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
								}
								if (buff_index = buff_tele1) {
									buff_index = spr_none;
								}
								camera_set_view_target(view_camera[0], testing.id);	
								counter = 6;
								YA_changeable = false;
								sturn = sturn_time;
								m_sturn = sturn_time;
								immune = false;
								alpha = 1;
								mouse_posible = false;
								cli_alpha = 1;
								heal_stack += 1
								heal_stack_time = 80
								server77_equal(serve_val.alpha, 1, buffer_bool)
								obj_id = other.cid_id;
								hp -= D;
								if (global.hat == spr_level5_hat8) {
									prt_val_add(Val.mp, D);	
								}
								view_visible[1] = false;
								view_visible[0] = true;
								view_where = 0;
								s_cooltime = 1
								arm_sturncooltime = 1 
								cur_attack = other.cid;
								other_cid = other.cid;
								arm_type = "ouch";
								if (nu_on == true) {
									nu_on = false;
									if (go_to_scale < 1) {
										go_to_scale = main_big_val;
									}
									big_val = 1;
									face_variable = 0;
									if (no_change == false) {
										terror_charge = 0;
										server77_equal(serve_val.terror_charge, 0, buffer_u8);
									}
									server77_equal(serve_val.face_variable, 0, buffer_u8);
									server202_sound(nu_3_sound_cancle);

									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast,buffer_u8,50);//50은 핵폭발관리;
									buffer_write(buff_fast,buffer_u8,2);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
								}
								var t = instance_create_depth(x, y, depth - 1, obj_attack_arrow);
								t.tt = other.cid_id;
								push = 0;
								Hit_item(D)
								buff_index = buff_nin4;
                                buff_time = 140;
								server77_equal(serve_val.buff_index, buff_index, buffer_u16);
								server202_sound(have_hit);
				
								buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
								buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
								buffer_write(testing.buff_chat,buffer_u8, 0);
								buffer_write(testing.buff_chat,buffer_u8, D);
								buffer_write(testing.buff_chat,buffer_u16,sturn_time);
								
	
								network_send_packet(0,testing.buff_chat,5);
							        if (just_time > 0) {
									    if (obj_id.hat_frame < level) send_exp *= 1.6;
									        buffer_seek(testing.buff_chat, buffer_seek_start, 0);
				
									        buffer_write(testing.buff_chat,buffer_u8,101);//101은 경험치
									        buffer_write(testing.buff_chat,buffer_f32, send_exp);
									        buffer_write(testing.buff_chat,buffer_u8,other_cid);
	
									        network_send_packet(0,testing.buff_chat,6);
									}
								camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);	
							}
						}
					}
				}
			}
		}
		else {
			server78_create_instace(mine_skill3, x, y);
			sturn = 240;
			creper = false;
			creper_die = 240;
			footL_x = x + irandom_range(-50, 50);
			footR_x = x + irandom_range(-50, 50);
			footL_y = y + irandom_range(-50, 50);
			footR_y = y + irandom_range(-50, 50);
			armL_x = x + irandom_range(-50, 50);
			armR_x = x + irandom_range(-50, 50);
			armL_y = y + irandom_range(-50, 50);
			armR_y = y + irandom_range(-50, 50);
			right_arm_YA = irandom(360);
			left_arm_YA = irandom(360);
			right_foot_YA = irandom(360);
			left_foot_YA = irandom(360);
			hat_xscale = 0;
			hat_yscale = 0;
			server77_equal(serve_val.hat_yscale, hat_yscale, buffer_s8);
			server77_equal(serve_val.hat_xscale, hat_xscale, buffer_s8);
			level = 0;
			server77_equal(serve_val.hat_frame, level, buffer_u8);
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
			buffer_write(buff_chat,buffer_u8, global.hat_show);
			buffer_write(buff_chat,buffer_u8, level);
	
			network_send_packet(0,buff_chat,3);
		}
	}

