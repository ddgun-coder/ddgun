function hurt_array_set(D) {
	var _obj = global.cid_array[other.cid];
	if (array_length(global.hurt_list) > 0) {
		var pre_const = global.hurt_list[array_length(global.hurt_list) - 1];
		if (pre_const.name == _obj.name and pre_const.skill_obj == other.object_index) {
			pre_const.num++;	
		}
		else {
			push_hurt_list(D, _obj)
		}
	}
	else {
		push_hurt_list(D, _obj)
	}
}

function set_creper_arm_hat() {
	server78_create_instace(mine_skill3, x, y);
	sturn = 240;
	creper = false;
	creper_die = 240;
	footL_x = surf_xoffset + irandom_range(-50, 50);
	footR_x = surf_xoffset + irandom_range(-50, 50);
	footL_y = surf_yoffset + irandom_range(-50, 50);
	footR_y = surf_yoffset + irandom_range(-50, 50);
	armL_x = surf_xoffset + irandom_range(-50, 50);
	armR_x = surf_xoffset + irandom_range(-50, 50);
	armL_y = surf_yoffset + irandom_range(-50, 50);
	armR_y = surf_yoffset + irandom_range(-50, 50);
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

function push_hurt_list(D, _obj) {
	array_push(global.hurt_list, new global.hurt_const(other.sprite_index, D, _obj.name, _obj.face, _obj.hat, 
		_obj.hat_frame + _obj.skin * 4, other.object_index));		
}

function DMG(D, name, sturn_time, _fun = undefined, _no_sturn = false) {
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
					if ((sturn <= 0 and immune == false) or _no_sturn == true) {
						if (shild == true and shild_time < 1) {
							if (counter_attak) {
								immune = true;
								shild_time = 40;
								normal_play(gun_2_act1);
								skill_con += 2
								skill_con_time = 100
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
							if (counter < 0 or _no_sturn == true) {
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
								if (sturn_alpha) {
									sturn_alpha = false;
									invisible_time = 1;
								}
								mouse_posible = false;
								cli_alpha = 1;
								heal_stack += 1
								heal_stack_time = 80
								server77_equal(serve_val.alpha, 1, buffer_bool)
								obj_id = other.cid_id;
								hp -= D;
								hurt_array_set(D);
								if (global.hat == spr_level5_hat8) {
									prt_val_add(Val.mp, D);	
								}
								if (_fun != undefined)	{
									var foo = method(testing, _fun);
									foo();
								}
								if (global.hat == spr_hat53) {
									server78_create_instace(he_skillp, x, y)
								}
								view_visible[1] = false;
								view_visible[0] = true;
								view_where = 0;
								s_cooltime = 1
								arm_sturncooltime = 1 
								cur_attack = other.cid;
								other_cid = other.cid;
								arm_type = "ouch";
								if (_no_sturn) instance_destroy(other);
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
								camera_set_view_size(view_camera[0], global.window_width, global.window_height + 18);
								view_set_yport(0, 18);
							}
						}
					}
				}
			}
		}
		else {
			set_creper_arm_hat();
		}
	}
}

function dmg_cal(D, _other) { // 공격 받음
	if (global.hat == spr_hat75) {
		if(global.team != other.team) {
		    var temp_name = object_get_name(other.object_index)
	        var n = string_length(temp_name)
	        var cha = string_digits(temp_name)
	        var skill_name = "";
		
	        for (var i = 0; i < n; i++) {
	           if (string_char_at(temp_name, i) == "_") {
	              skill_name = string_copy(temp_name, 1, i);
	           }
	        }
		
	        if ( cha != "") {
				cha = real(cha);
	            if (cha < 10) {
	               skill_name = skill_name + string(cha) + "_act";
	            }
	            else {
	               skill_name = skill_name + string(floor(cha / 10)) + "_act" + string(cha % 10);   
	            }
	            skill_index = asset_get_index(skill_name)

	           switch(temp_name) {
				    case "yellow_skill4" :
				       skill_index = yellow_4_act
					break;//예외처리 (옐캡)
					case "twiza_skill11" :
				       skill_index = twiza_4_act1
					break;//예외처리 (법사)
					case "ssg_skill4" :
				       skill_index = ssg_1_act
					break;//예외처리 (소세지)
					case "mili_skill3_2":
				       skill_index = mili_3_act
					break;
					case "mili_skill3_3" :
				       skill_index = mili_3_act
					break;
					case "mili_skill4_2" :
				       skill_index = mili_4_act
					break;//예외처리 (군인)
					case "bwiza_skill1_3" :
				       skill_index = bwiza_1_act1
					break;
					case "bwiza_skill4_1" :
				       skill_index = bwiza_4_act
					break;
					case "bwiza_skill4_2" :
				       skill_index = bwiza_4_act
					break;//예외처리 (얼법)
					case "die_skill1_1" :
				       skill_index = die_1_act
					break;
					case "die_skill1_2" :
				       skill_index = die_1_act
					break;
					case "die_skill2_2" :
				       skill_index = die_2_act
					break;
					case "die_skill3_2" :
				       skill_index = die_4_act2
					break;//예외처리 (야차)
					case "korea_skill1_2" :
				       skill_index = korea_1_act
					break;
					case "korea_skill2_2" :
				       skill_index = korea_2_act
					break;//예외처리 (빙신)
					case "mine_skill1_1" :
				       skill_index = mine_1_act
					break;
					case "mine_skill21" :
				       skill_index = mine_2_act
					break;//예외처리 (마크)
					case "fwiza_skill5" :
				       skill_index = see_1_act
					break;
					case "fwiza_skill51" :
				       skill_index = see_1_act
					break;//예외처리 (마녀)
					case "aring_attack" :
				       skill_index = die_3_act2
					break;
					case "aring_attack1" :
				       skill_index = die_3_act2
					break;
					case "aring_skill1" :
				       skill_index = aring_1_act1
					break;										
				    case "aring_skill111" :
				       skill_index = aring_1_act1
					break;//예외처리 (아링)
					case "fighter_skill4_old" :
				       skill_index = fighter_4_act_old
					break;//예외처리 (격투가)
					case "shit_skill1" :
				       skill_index = shit_1_act1
					break;//예외처리 (똥)	
					case "wild_skill11" :
				       skill_index = wild_1_act
					break;//예외처리 (서부)	
					case "spear_skill3" :
				       skill_index = spear_3_act0
					break;
					case "obj_horse" :
				       skill_index = spear_3_act0
					break;						
					case "obj_horse1" :
				       skill_index = spear_3_act0
					break;						
					case "obj_horse2" :
				       skill_index = spear_3_act0
					break;						
					case "obj_horse3" :
				       skill_index = spear_3_act0
					break;						
					case "obj_horse4":
				       skill_index = spear_3_act0
					break;						
					case "obj_horse5" :
				       skill_index = spear_3_act0
					break;
					case "obj_horse6" :
				       skill_index = spear_3_act0
					break;						
					case "obj_horse7" :
				       skill_index = spear_3_act0
					break;//예외처리 (창병)	
					case "pwiza_skill3_2" :
				       skill_index = pwiza_3_act
					break;//예외처리 (불법)		
					case "fheal_skill41" :
				       skill_index = fheal_4_act
					break;		
					case "object321" :
				       skill_index = sans_1_act
					break;		
					case "object3211" :
				       skill_index = sans_1_act
					break;		
					case "object32111":
				       skill_index = sans_1_act
					break;//예외처리 (마도)	
					case "nuke_skill41" :
				       skill_index = nuke_4_act
					break;		
					case "nuke_skill42" :
				       skill_index = nuke_4_act
					break;	//예외처리 (원자력)		
	                case "sea_skill21" :
				       skill_index = sea_2_act
					break;
					case "sea_skill31" :
				       skill_index = sea_2_act
					break;		
					case "sea_skill34" :
				       skill_index = sea_4_act
					break;	//예외처리 (시보이)	
					case "jam_skill23" :
				       skill_index = jam_2_act
					break;		
					case "jam_skill42" :
				       skill_index = jam_4_act
					break;	//예외처리 (짬뽕)
					case "sea_skill41" :
				       skill_index = he_4_act
					break;//예외처리 (추)	
					case "trol_skill11" :
				        skill_index = trol_1_act
					break;	//예외처리 (트롤)
					case "coca_skill11" :
				       skill_index = coca_1_act
					break;
					case "coca_skill22" :
				       skill_index = coca_2_act
					break;		
					case "coca_skill33" :
				       skill_index = coca_3_act
					break;		
					case "coca_skill41" :
				        skill_index = trol_4_act
					break;	//예외처리 (콜라)
					case "ma_skill1" :
				       skill_index = ma_1_act1
					break;
					case "ma_skill12" :
				       skill_index = ma_1_act1
					break;
					case "ma_skill21" :
				       skill_index = ma_4_act
					break;
					case "ma_skill22" :
				       skill_index = ma_2_act
					break;//예외처리 (마론)	
					case "nu_skill21" :
				       skill_index = nk_2_act
					break;
					case "nk_skill33" :
				       skill_index = nk_3_act
					break;
					case "nu_skill41" :
				       skill_index = nk_4_act
					break;//예외처리 (인민)	
					case "see_skill45":
				       skill_index = see_4_act3
					break;//예외처리 (감시자)	
					case "nin_skill11" :
				       skill_index = nin_1_act
					break;
					case "nin_skill12" :
				       skill_index = nin_1_act
					break;
					case "nin_skill41" :
				       skill_index = nin_4_act
					break;//예외처리 (닌자)	
					case "tu_skill11" :
				       skill_index = tu_1_act
					break;
					case "tu_skill13" :
				       skill_index = tu_2_act
					break;
					case "tu_skill14" :
				       skill_index = tu_2_act
					break;
					case "tu_skill31" :
				       skill_index = tu_3_act
					break;
					case "tu_skill41" :
				       skill_index = tu_4_act
					break;//예외처리 (투사)	
					case "sang_skill12" :
				       skill_index = sang_1_act
					break;
					case "sang_boom" :
				       skill_index = sang_3_act11
					break;//예외처리 (상투)	
					case "eng_skill21" :
				       skill_index = eng_2_act
					break;	
					case "eng_skill41" :
				       skill_index = eng_4_act
					break;//예외처리 (엔지니어)
					case "bb_skill2p" :
				       skill_index = bb_2_act
					break;
					case "bb_skill4p" :
				       skill_index = bb_4_act
					break;//예외처리 (야구)	
					case "music_skill11" :
				       skill_index = music_1_act
					break;
					case "music_skill31" :
				       skill_index = music_3_act
					break;//예외처리 (음악)	
					case "tree_skill15" :
				       skill_index = -1
					break;
					case "tree_skill34" :
				       skill_index = tree_3_act1		
					break;//예외처리 (드루이드)
					case "gun_skill1" :
				       skill_index = gun_0_act
					break;
					case "gun_skill11" :
				       skill_index = gun_0_act1
					break;
					case "gun_skill3_ex" :
				       skill_index = gun_3_act
					break;
					case "gun_skill41" :
				       skill_index = gun_4_act
					break;//예외처리 (총사)
					case "obj_snow4" :
				       skill_index = snow_4_act
					break;
					case "obj_snow41" :
				       skill_index = snow_4_act
					break;
					case "obj_snow42" :
				       skill_index = snow_4_act
					break;
					case "obj_snow43" :
				       skill_index = snow_4_act
					break;//예외처리 (산타)	
					case "ass_skill31" :
				       skill_index = ass_3_act
					break;//예외처리 (도둑)
					case "ski_skill31" :
				       skill_index = ski_3_act
					break;//예외처리 (스키)
					case "sli_skill21" :
				       skill_index = sli_2_act
					break;
					case "sli_skill22" :
				       skill_index = sli_2_act
					break;
					case "sli_skill23" :
				       skill_index = sli_2_upgrade
					break;
					case "sli_skill24" :
				       skill_index = sli_2_upgrade
					break;
					case "sli_skill25" :
				       skill_index = sli_2_upgrade
					break;//예외처리 (슬라임)
					case "newb_skill11" :
				       skill_index = newb_1_act
					break;
					case "newb_skill4_0" :
				       skill_index = newb_4_act
					break;
					case "newb_skill4_1" :
				       skill_index = newb_4_act
					break;
					case "newb_skill4_2" :
				       skill_index = newb_4_act
					break;
					case "newb_skill4_3" :
				       skill_index = newb_4_act
					break;//예외처리 (새싹)
	           }
	        }
		}
	}
	if (_other.cid_id.buff_index == buff_nu2) {
		D *= 1.5;
		D = min(D, 99);
	}
	if (buff_index == buff_jaja) {
		D = D / 2;
	}
	if (buff_index == buff_nin4) {
		D *= 1.2;
	}
	if (global.hat == spr_level5_hat2) {
		 D = D * 0.5
	}
	if (global.hat == spr_hat18) {
		switch (level) {
			case 0:
			    D = D * 0.8;
			break;
			case 1:
			    D = D * 0.75;
			break;
			case 2:
			    D = D * 0.7;
			break;
			case 3:
			    D = D * 0.65;
			break;
		}	
	}
		
	if (global.hat == spr_hat22) {
       var origin_D = D;
           D = D * (100 - (m_hp - hp) / 1.6) / 100
           if (D < 0) {
           return origin_D;   
       }
       else {
          return D;   
       }
    }
	D *= prt_val_get(Val.dmg_per);// 아링 패시브
	if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
		if (protection) {
			if (protection_val > D) {
				protection_val -= D;
				D = 0;
			}
			else {
				protection_val = 0;
				D -= protection_val;
				protect_break = true;
				protect_break_time = 300;
				protection = false;
				server78_create_instace(obj_barrier, x, y);
			}
		}
		if (armor > D) {
			armor -= D;
			D = 0;
		}
		else {
			D -= armor;	
		}
	}
	return D;
}
function DMG_sang(argument0, argument1, argument2) {
	var D = argument0
	var name = argument1
	var sturn_time = argument2
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
								skill_con_time = 100
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
								server77_equal(serve_val.alpha, 1, buffer_bool)
								obj_id = other.cid_id;
								if (obj_id.buff_index == buff_sang) {
									D *= 2;
								}
								hp -= D;
								hurt_array_set(D);
								if (global.hat == spr_level5_hat8) {
									prt_val_add(Val.mp, D);	
								}
								if (global.hat == spr_hat53) {
									server78_create_instace(he_skillp, x, y)
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
								server202_sound(have_hit);
				
								buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
								buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
								buffer_write(testing.buff_chat,buffer_u8, 0);
								buffer_write(testing.buff_chat,buffer_u8, D);
								buffer_write(testing.buff_chat,buffer_u16,sturn_time);
								
	
								network_send_packet(0,testing.buff_chat,5);
							        if (just_time > 0) {
									    if (obj_id.hat_frame - level >= 2) send_exp *= 1.6;
									        buffer_seek(testing.buff_chat, buffer_seek_start, 0);
				
									        buffer_write(testing.buff_chat,buffer_u8,101);//101은 경험치
									        buffer_write(testing.buff_chat,buffer_f32, send_exp);
									        buffer_write(testing.buff_chat,buffer_u8,other_cid);
	
									        network_send_packet(0,testing.buff_chat,6);
									}
								camera_set_view_size(view_camera[0], global.window_width, global.window_height + 18);
							}
						}
					}
				}
			}
		}
		else {
			set_creper_arm_hat();
		}
	}
}
