buff = ds_map_find_value(async_load,"buffer");
buff_size = ds_map_find_value(async_load,"size");
tp = ds_map_find_value(async_load,"type");
if ( tp = network_type_data) {
	online = 200;
	if (buff_size > 0) {
		buffer_type = buffer_read(buff,buffer_u8);
	}
	else {
		exit
	}
	if (buff_size <= 0) {
		exit
	}
	switch (buffer_type) {
		case 0:
			if (buff_size > 3) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit;
				}
				if (instance_exists(testing)) {
					chat =	buffer_read(buff, buffer_string)
					var aateam =  buffer_read(buff, buffer_u8)
					if (instance_exists(see_skill32)) {
						chat = "????????????";
					}
						if (a_name != "") {
							if (aateam == global.team) {
								testing.chat6 = testing.chat5;
								testing.chat5 = testing.chat4;
								testing.chat4 = testing.chat3;
								testing.chat3 = testing.chat2;
								testing.chat2 = testing.chat1;
								testing.chat1 = serve_name[cid] +  "(팀)▶  " + chat;//채팅 올라가기 
								var obj = global.cid_array[cid];
								if (global.my_cid_id == obj) {
									testing.say_time = 360;
									testing.chat = serve_name[cid] +" :"+chat
								}
								obj.say_time = 360;
								obj.chat = serve_name[cid] +" :"+chat
							}
							else {
								var obj = global.cid_array[cid];
								obj.say_time = 360;
								obj.chat = serve_name[cid] +" : 속닥속닥...";
							}
					}
				}
			}
		break;
		case 1:
			if (buff_size > 3) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit;
				}
				if (instance_exists(testing)) {
					chat =	buffer_read(buff,buffer_string)
					a_name =  buffer_read(buff,buffer_string)
					if (instance_exists(see_skill32)) { 
						a_name = "?????";
						chat = "????????????";
					}
						if (a_name != "") {
						testing.chat6 = testing.chat5;
						testing.chat5 = testing.chat4;
						testing.chat4 = testing.chat3;
						testing.chat3 = testing.chat2;
						testing.chat2 = testing.chat1;
						testing.chat1 = a_name +  " ▶  " + chat;//채팅 올라가기 
						var obj = global.cid_array[cid];
						if (global.my_cid_id == obj) {
							testing.say_time = 360;
							testing.chat = a_name +" :"+chat
						}
						obj.say_time = 360;
						obj.chat = a_name +" :"+chat
						obj.name = a_name
					}
				}
			}
		break;
		case 2:
			if (buff_size > 39) {
				cid = buffer_read(buff,buffer_u8);			
				var obj = global.cid_array[cid];
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				if (cid == global.my_cid) {
					ping = 0;
				}
				obj.x = buffer_read(buff , buffer_u16);
				obj.y = buffer_read(buff , buffer_u16);	
				obj.YA = buffer_read(buff , buffer_s16);//7
			
				obj.left_arm_YA = buffer_read(buff , buffer_s16)
				obj.right_arm_YA = buffer_read(buff , buffer_s16)
				obj.left_foot_YA = buffer_read(buff , buffer_s16)
				obj.right_foot_YA = buffer_read(buff , buffer_s16)//17
				obj.temp_YA = buffer_read(buff , buffer_s16);
			
				obj.hp = buffer_read(buff , buffer_s8);
				obj.footL_x = buffer_read(buff , buffer_u16);
				obj.footL_y = buffer_read(buff , buffer_u16);
				obj.footR_x = buffer_read(buff , buffer_u16);
				obj.footR_y = buffer_read(buff , buffer_u16);

				obj.armR_x = buffer_read(buff , buffer_u16);
				obj.armR_y = buffer_read(buff , buffer_u16);
				obj.armL_x = buffer_read(buff , buffer_u16);
				obj.armL_y = buffer_read(buff , buffer_u16);//32
					
				obj.big_val = buffer_read(buff , buffer_f32);
				obj.charge = buffer_read(buff , buffer_u8);
			}
		break;
		case 3:
			if (buff_size > 5) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var alp = buffer_read(buff,buffer_f32);
			
				var cid_id = global.cid_array[cid];
				with(cid_id)
				{
					alpha = alp;
				}
			}
		break;
		case 4:
			if (buff_size > 1) {
				var what = buffer_read(buff,buffer_u8);
				switch(what) {
					case 0:
						testing.invisible_time = 480;
						testing.invisible = true;
						break;
					case 1:
						with(testing) {
							server78_create_instace(healer_skill4, x, y);
						}
						break;
				}
			}
		break;
		case 5:
			if (buff_size > 3) {
				var what = buffer_read(buff, buffer_u8);
				var time_to_die = buffer_read(buff, buffer_bool);
				switch (what) {
					case 0:
						if(time_to_die) {
							server78_create_instace(obj_last, testing.x, testing.y - 50);
							/*
							with (testing) {
								self.other_cid = 0;
								hp = 1;
								arm_type = "ouch";
								testing.sturn = 300;
								buff_time = 400;
								buff_index = buff_apple3;
								YA_changeable = true;
								view_where = 2;
								buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
								buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
								buffer_write(testing.buff_chat,buffer_u8, 200);
								buffer_write(testing.buff_chat,buffer_u16,200);
	
								network_send_packet(0,testing.buff_chat,4);
							}
							*/
						}
						/*
						audio_play_sound(apple_3_sound, 1, false);
			
						var note = instance_create_depth(x, y, 100, apple_skill3);
						note.dead_name = last_name;
				
						green_text_update(last_name + "님은 침을 기도로 삼켜서 사망");
						*/
						break;
					case 1:
						if(time_to_die) {
							if (global.team == 0) {
								global.team = 1;
							}
							else {
								global.team = 0;
							}
							with(obj_say_here_online) {
								buffer_seek(buff_chat, buffer_seek_start, 0);
	
								buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
								buffer_write(buff_chat,buffer_string,"부모님의 원수를 갚기 위해 팀을 배신하겠다!!! ");
								buffer_write(buff_chat,buffer_string,global.name);
	
								network_send_packet(0,buff_chat,buffer_tell(buff_chat));
							}
							with(testing) {
								server77_equal(serve_val.team, global.team, buffer_bool);
							}
						}
						var decid = buffer_read(buff, buffer_u8);
					
						if (team[decid] == 0) {
							team[decid] = 1;
						}
						else {
							team[decid] = 0;
						}
						break;
					case 2:
						if(time_to_die) {
							if (global.team == 0) {
								global.team = 1;
							}
							else {
								global.team = 0;
							}
							with(testing) {
								server77_equal(serve_val.team, global.team, buffer_bool);
							}
						}
						var decid = buffer_read(buff, buffer_u8);
					
						if (team[decid] == 0) {
							team[decid] = 1;
						}
						else {
							team[decid] = 0;
						}
						break;
					case 3:
						if(time_to_die) {
							for(var i = 1; i < 24; i++) {
								var obj = global.cid_array[i];
								if (obj.x > 0 and obj.y > 0) { 
									if (obj.hat == spr_hat64 and obj.hat_frame == 3) {
										testing.x = obj.x;
										testing.y = obj.y;
										buffer_seek(buff_chat, buffer_seek_start, 0);
	
										buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
										buffer_write(buff_chat,buffer_string, "명을 따르리라");
										buffer_write(buff_chat,buffer_string,global.name);
	
										network_send_packet(0,buff_chat,buffer_tell(buff_chat));
										break;
									}
								}
							}
						}
					break;
				}
			}
		break;
		case 6:
			if (buff_size > 1) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				testing.other_cid = 0;
				testing.cur_attack = cid;
				testing.hp = -101;
				testing.arm_type = "ouch";
				testing.sturn = 200;
				testing.YA_changeable = true;
				audio_play_sound(apple_4_sound, 1, false);
			}
		break;
		case 7:
			if (buff_size > 3) {
				if(room == room_soccer) {
					obj_soccer.goto_x = buffer_read(buff, buffer_u16);
					obj_soccer.goto_y = buffer_read(buff, buffer_u16);
					if (testing.effect_index == effect_gag) {
						obj_soccer.goto_x = obj_soccer.xstart;
						obj_soccer.goto_y = obj_soccer.ystart;
					}
				}
			}
		break;
		case 8:
			if (buff_size > 0) {
				var time_to_die = buffer_read(buff, buffer_u8);
				switch(time_to_die) {
					case 1:
					with (testing) {
						prt_val_add(Val.mp, 150);
						server78_create_instace(twiza_skill3_2, x, y);
					}
					break;
					case 2:
					with (testing) {
						go_to_scale = big_val + 1;
						big_val_time = 300;
						server78_create_instace(fheal_skill2, x, y);
					}
					break;
				}
			}
		break;
		case 9:
			if (buff_size > 1) {
				team_score[0] = buffer_read(buff,buffer_u8);//점수
				team_score[1] = buffer_read(buff,buffer_u8);
			}
		break;
		case 10:
			if (buff_size > 1) {
				var tt = buffer_read(buff,buffer_bool);
				obj_soccer.goto_x = obj_soccer.xstart;
				obj_soccer.goto_y = obj_soccer.ystart;
				if(global.team == tt) {
					testing.aexp += 200;
				};//점수
				else {
					kazino_time = 40;
				}
				team_score[tt] = buffer_read(buff,buffer_u8);
				instance_create_depth(x, y, -500, object3592);
				alarm[4] = 40;
			}
		break;
		case 44:
		if (buff_size > 1) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				xx[cid] = -200;
				yy[cid] = -200;
				serve_name[cid] = "";
				team[cid] = 0;
				var ida = global.cid_array[cid];
				ida.x = -200;
				ida.y = -200;
				ida.footL_x = -200
				ida.footR_x = -200
				ida.armL_x = -200
				ida.armR_x = -200
				if (cid == global.my_cid) {
					room_goto(room_out);	
				}
		}
		break;
		case 45:
			if (buff_size > 2) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var nu_team = buffer_read(buff , buffer_u8);
				server202_sound(have_hit);
				instance_create_depth(x, y, -100, nu_skill3);
				testing.other_cid = cid;
				testing.cur_attack = cid;
				testing.sturn = 200;
				testing.YA_changeable = true;
				testing.arm_type = "ouch";
				testing.dead_nu = true;
				if(nu_team == global.team) {
					with (testing) {
						hp -= 45;
						if (cur_attack == global.my_cid) {
							buff_index = buff_apple3;
							buff_time = 400;
							server77_equal(serve_val.buff_index, buff_index, buffer_u16);	
						}
						arm_type = "ouch";
						YA_changeable = true;
						view_where = 2;
						if (nu_on) {
							nu_on = false;
							server77_equal(serve_val.face_variable, 0, buffer_u8);
							server202_sound(nu_3_sound_cancle);
							buffer_seek(buff_fast, buffer_seek_start, 0);
	
							buffer_write(buff_fast,buffer_u8,50);//50은 핵폭발관리;
							buffer_write(buff_fast,buffer_u8,2);
	
							network_send_packet(0,buff_fast,buffer_tell(buff_fast));
							buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
							buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
							buffer_write(testing.buff_chat,buffer_u8, 0);
							buffer_write(testing.buff_chat,buffer_u8, 45);
							buffer_write(testing.buff_chat,buffer_u16,200);
	
							network_send_packet(0,testing.buff_chat,buffer_tell(testing.buff_chat));
						}
					}
				}
				else {
					with (testing) {
						hp -= 90;
						arm_type = "ouch";
						YA_changeable = true;
						view_where = 2;
						if (nu_on) {
							nu_on = false;
							server77_equal(serve_val.face_variable, 0, buffer_u8);
							server202_sound(nu_3_sound_cancle);
							buffer_seek(buff_fast, buffer_seek_start, 0);
	
							buffer_write(buff_fast,buffer_u8,50);//50은 핵폭발관리;
							buffer_write(buff_fast,buffer_u8,2);
	
							network_send_packet(0,buff_fast,buffer_tell(buff_fast));
						}
						buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
						buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
						buffer_write(testing.buff_chat,buffer_u8, 0);
						buffer_write(testing.buff_chat,buffer_u8, 90);
						buffer_write(testing.buff_chat,buffer_u16,200);
	
						network_send_packet(0,testing.buff_chat,buffer_tell(testing.buff_chat));
					}
				
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
					buffer_write(buff_chat,buffer_f32,90);
					buffer_write(buff_chat,buffer_u8, testing.other_cid);
	
					network_send_packet(0,buff_chat,6);
				}
				testing.other_cid = 0;
		}
		break;
		case 46:
			if (buff_size > 50) {
				for(var i = 0; i < 25; ++i){
					nu_name_left[i] = buffer_read(buff, buffer_string);
					nu_name_right[i] = buffer_read(buff, buffer_string);
				}
			}
		break;
		case 48:
			if (buff_size > 2) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var nu_team = buffer_read(buff , buffer_u8);
				server202_sound(have_hit);
				instance_create_depth(x, y, -100, nu_last);
				testing.other_cid = cid;
				testing.sturn = 200;
				testing.YA_changeable = true;
				testing.arm_type = "ouch";
				if(nu_team == global.team) {
					testing.hp -= 80;
					buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
					buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
					buffer_write(testing.buff_chat,buffer_u8, 0);
					buffer_write(testing.buff_chat,buffer_u8, 80);
					buffer_write(testing.buff_chat,buffer_u16,200);
	
					network_send_packet(0,testing.buff_chat,buffer_tell(testing.buff_chat));
				}
				else {
					testing.hp -= 101;
					cur_attack = cid;
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
					buffer_write(buff_chat,buffer_f32,90);
					buffer_write(buff_chat,buffer_u8,testing.other_cid);
	
					network_send_packet(0,buff_chat,6);
					buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
					buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
					buffer_write(testing.buff_chat,buffer_u8, 0);
					buffer_write(testing.buff_chat,buffer_u8, 101);
					buffer_write(testing.buff_chat,buffer_u16, 200);
	
					network_send_packet(0,testing.buff_chat,buffer_tell(testing.buff_chat));
				}
				testing.other_cid = 0;
			}
		break;
		case 50:
			if (buff_size > 1) {
				var temp = buffer_read(buff, buffer_u8);
				testing.nu_say = temp;
				switch (temp) {
				case 1:
					testing.nu_say_time = 390
				break;
				case 2:
					testing.nu_say_time = 80;
				break;
				case 3:
					testing.nu_say_time = 100;
				break;
				}
			}
		break;
		case 51:
			if (buff_size > 11) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var aname = buffer_read(buff,buffer_u16);
				var xxx = buffer_read(buff,buffer_u16);
				var yyy = buffer_read(buff,buffer_u16);
				var size = buffer_read(buff,buffer_f32);	
				
				var ida = instance_create_depth(xxx, yyy, 0, aname);
				ida.cid = other.cid;
				ida.cid_id = global.cid_array[cid];
				ida.fish_len = size;
				ida.image_xscale = size / 70;
				ida.image_yscale = size / 70;
			}
		break;
		case 77://equal
			if (buff_size > 4) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var varname = buffer_read(buff , buffer_u8);
				var type = buffer_read(buff , buffer_u8);
				var realvar = buffer_read(buff , type);
				temp_id = global.cid_array[cid];
				switch(varname) {
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
					case serve_val.hat_YA :
						temp_id.hat_YA = realvar;
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
					default:
						show_debug_message(varname);
					break;
				}
			}
		break;
		case 78:
			if (buff_size > 8) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var aname = buffer_read(buff,buffer_u16);
				var xxx = buffer_read(buff,buffer_u16);
				var yyy = buffer_read(buff,buffer_u16);
				teama = buffer_read(buff,buffer_u8);	
			
				var ida = instance_create_depth(xxx, yyy, -100, aname);
				ida.team = teama;
				ida.cid = other.cid;
				ida.cid_id = global.cid_array[cid];
				ida.image_angle = ida.cid_id.YA;
				if (ida.sprite_index == spr_attack_mask1 or ida.sprite_index == spr_attack_mask3) {
					if (global.show_hitbox == true) {
						ida.visible = true;	
					}
				}
				if (instance_exists(see_skill31)) {
					ida.visible = false;	
				}
			}
		break;
		case 79:
			if (buff_size > 9) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var aname = buffer_read(buff,buffer_u16);
				var xxx = buffer_read(buff,buffer_u16);
				var yyy = buffer_read(buff,buffer_u16);
				teama = buffer_read(buff,buffer_u8);	
				var addition = buffer_read(buff,buffer_u8);
			
				var ida = instance_create_depth(xxx, yyy, -100, aname);
				ida.team = teama;
				ida.cid = other.cid;
				ida.cid_id = global.cid_array[cid];
				switch(aname) {
					case bam_skill11:
						ida.get_mp = addition;
					break;
					case obj_spin1:
					case obj_spin2:
					case obj_spin3:
						ida.temp_YA = addition;
						ida.x = (xxx / 100) * room_width;
						ida.y = (yyy / 100) * room_height;
					break;
					case obj_thanks:
						ida.x = (xxx / 1000) * room_width;
						ida.y = (yyy / 1000) * room_height;
						ida.xstart = ida.x;
						ida.ystart = ida.y;
					break;
					case obj_snow4 :
						ida.YA = addition;
					break;
				}
				if (ida.sprite_index == spr_attack_mask1 or ida.sprite_index == spr_attack_mask3) {
					if (global.show_hitbox == true) {
						ida.visible = true;	
					}
				}
				if (instance_exists(see_skill31)) {
					ida.visible = false;	
				}
			}
		break;
		case 80:
			if (buff_size > 11) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var aname = buffer_read(buff,buffer_u16);
				var xxx = buffer_read(buff,buffer_u16);
				var yyy = buffer_read(buff,buffer_u16);
				teama = buffer_read(buff,buffer_u8);	
				var r = buffer_read(buff,buffer_u8);
				var g = buffer_read(buff,buffer_u8);
				var b = buffer_read(buff,buffer_u8);
				
				if (cid_time[cid] > 0) {
					var cid_dis = point_distance(xxx, yyy, cid_prex[cid], cid_prey[cid])
					if (cid_dis > 5 and cid_dis < 255) {
						cid_dis = floor(cid_dis / 3);
						for (var i = 0; i < cid_dis; i++) {
							var mx = cid_prex[cid] + (xxx - cid_prex[cid]) * i / cid_dis;
							var my = cid_prey[cid] + (yyy - cid_prey[cid]) * i / cid_dis;
							var ida = instance_create_depth(mx, my, -100, aname);
							ida.team = teama;
							ida.cid = other.cid;
							ida.cid_id = global.cid_array[cid];
							ida.image_blend = make_color_rgb(r, g, b);
						}
					}
				}
				
				cid_time[cid] = 2;
				cid_prex[cid] = xxx;
				cid_prey[cid] = yyy;
			
				var ida = instance_create_depth(xxx, yyy, -100, aname);
				ida.team = teama;
				ida.cid = other.cid;
				ida.cid_id = global.cid_array[cid];
				ida.image_blend = make_color_rgb(r, g, b);
				if (ida.sprite_index == spr_attack_mask1 or ida.sprite_index == spr_attack_mask3) {
					if (global.show_hitbox == true) {
						ida.visible = true;	
					}
				}
				if (instance_exists(see_skill31)) {
					ida.visible = false;	
				}
			}
		break;
		case 94:
			view_visible[1] = false;
			view_visible[0] = true;
			view_where = 0;
			obj_telescope_view.tele = false;
			if (testing.live = 1 and global.hat != spr_hat5) {
				if (testing.hp > 55 and testing.sturn < 10)
				{
					testing.sturn = 100;
					testing.hp -= 55;
					testing.s_cooltime = 1;
					testing.arm_sturncooltime = 1;
					testing.EQ = true;
					testing.YA_changeable = true;
					testing.arm_type = "ouch";
					testing.other_cid = 0;
					view_visible[0] = false;
					view_visible[2] = true;
					view_where = 2;
					audio_play_sound(have_hit,10,false);
					
					buffer_seek(buff_chat, buffer_seek_start, 0);

					buffer_write(buff_chat,buffer_u8,100);//100은 피해량,스턴값
					buffer_write(buff_chat,buffer_u8, 0);
					buffer_write(buff_chat,buffer_u8,55);
					buffer_write(buff_chat,buffer_u16, 100);
	
					network_send_packet(0,buff_chat,5);
				}
			else
			{
				if (testing.sturn < 10) {
					network_send_packet(0,buff_chat,2);
					scr_hat_change2(spr_hat5);
					testing.main_big_val = 1;
					testing.go_to_scale = 1;
					testing.hp = 100;
					testing.sturn = 200;
					testing.EQ = true;
					testing.YA_changeable = true;
					testing.arm_type = "ouch";
					testing.level = 0;
					server77_equal(serve_val.hat_frame, testing.level, buffer_bool);
					view_visible[0] = false;
					view_visible[2] = true;
					view_where = 2;
					server202_sound(goza_be_killed)
					switch(global.team)
					{
						case 0:
							var up = 1;
						break;
						case 1:
							var up = 0;
						break;
						default:
							var up = irandom(1);
						break;
					}
					with(testing) {
						buffer_seek(buff_chat, buffer_seek_start, 0);
						buffer_write(buff_chat, buffer_u8, 99);
						buffer_write(buff_chat, buffer_bool, up);//팀점수 업
						buffer_write(buff_chat, buffer_u8, 0);
						buffer_write(buff_chat, buffer_u8, 1);
	
						network_send_packet(0,buff_chat,buffer_tell(buff_chat));
					}
					
					buffer_seek(buff_chat, buffer_seek_start, 0);

					buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
					buffer_write(buff_chat,buffer_u8, global.hat_show);
					buffer_write(buff_chat,buffer_u8, 0);
	
					network_send_packet(0,buff_chat,3);
				}
			}
			}
		break;
		case 95:
			if (buff_size > 2) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var temp_hat = buffer_read(buff,buffer_u8);
			
				var obj = global.cid_array[cid];
				obj.hat = global.hat_array[temp_hat];
			}
		break;
		case 99:
			if (buff_size > 4) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				team_score[0] = buffer_read(buff,buffer_u8);//점수
				team_score[1] = buffer_read(buff,buffer_u8);
				var other_cid = buffer_read(buff,buffer_u8);
				if (other_cid != 0)
				{
					if (other_cid < 25) {
						if (serve_name[cid] != "") {
							pow[other_cid]++;
							var t = instance_create_depth(0, 0, -100, obj_killshow);
							t.cid1 = global.cid_array[other_cid];
							t.cid2 = global.cid_array[cid];
							green_text_update("[♨]" + string(serve_name[other_cid]) + "님이 " + string(serve_name[cid]) + "님을 죽였습니다.");
						}
					}
					if (other_cid == global.my_cid) {
						prt_val_add(0, 666);
						for(var i = 0; i < MAX_ITME_BOX; i++) {
							global.item_time[i] += 200;
						}
					}
				}
				else
				{
					green_text_update(string(serve_name[cid]) + "님이 이 세상을 떠났습니다.");
				}
			}
		break;
		case 100:
			if (buff_size > 3) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit
				}
				if (cid > 25) {
					exit	
				}
				D = buffer_read(buff,buffer_u8);
				var sturn = buffer_read(buff,buffer_u16);
			
				var obj = global.cid_array[cid];
				obj.sturn = sturn
				obj.arm_type = "ouch"
				if (team[cid] != global.team or global.my_cid == cid) {
					if (sturn != 0) {
						var show = instance_create_depth(obj.x, obj.y, obj.depth - 1, DMG_show);
						show.d = D;
						if (cid != global.my_cid) {
							show.image_xscale = 0.3;
						}
					}
				}
			}
		break;
		case 101:
			if (testing.a_level < 256) {
				if (buff_size > 4) {
					var D = buffer_read(buff,buffer_f32);//경험치 얻기
					get_money += D * 4;
					testing.aexp += D;
					DMG_item(D / 2);
					with (testing) {
						if (buff_index == buff_musa) {
							if (D / 2 > 1) {
								prt_val_add(Val.mp, floor(D/2));
							}
							else {
								mana_1 += D/2;
							}
						}
						else {
							if (D / 4 > 1) {
								prt_val_add(Val.mp, floor(D/4));
							}
							else {
								mana_1 += D/4;
							}
						}
						switch (global.hat) {
							case spr_hat40:
								if (D > 1) {
									combo++;
									combo_time = 200;
									if (combo < 8 and combo > 3) {
										if (buff_time < 1) {
											buff_time = 100;
											buff_index = buff_p2;
											server77_equal(serve_val.buff_index, buff_index, buffer_u16);
										}
									}
									if (combo < 12 and combo > 7) {
										if (buff_time < 1) {
											buff_time = 100;
											buff_index = buff_jaja;
											server77_equal(serve_val.buff_index, buff_index, buffer_u16);
										}
									}
									if (combo > 16) {
										if (buff_time < 1) {
											buff_time = 100;
											buff_index = buff_nu2;
											server77_equal(serve_val.buff_index, buff_index, buffer_u16);
										}
									}
									}
							break;
							case spr_level5_hat9:
								prt_val_add(Val.gi, D / 10);
							break;
						}
					}
					if (testing.hp > 0) {
						testing.hp += D/8;
					}
				}
			}
		break;
		case 102:
			if (buff_size > 3) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit
				}
				if (cid > 25) {
					exit	
				}
				D = buffer_read(buff,buffer_u8);
				var sturn = buffer_read(buff,buffer_u16);
			
				var obj = global.cid_array[cid];
				obj.sturn = sturn
				obj.arm_type = "ouch"
				if (team[cid] != global.team or global.my_cid == cid) {
					if (sturn != 0) {
						var show = instance_create_depth(obj.x, obj.y, obj.depth - 1, DMG_show);
						show.d = D;
						if (cid != global.my_cid) {
							show.image_xscale = 0.3;
						}
					}
				}
			}
		break;
		case 103:
			if (testing.a_level < 256) {
				if (buff_size > 4) {
					var D = buffer_read(buff,buffer_f32);//경험치 얻기
					get_money += D * 4;
					testing.aexp += D;
					DMG_item(D / 2);
					with (testing) {
						if (buff_index == buff_musa) {
							if (D / 2 > 1) {
								prt_val_add(Val.mp, floor(D/2));
							}
							else {
								mana_1 += D/2;
							}
						}
						else {
							if (D / 4 > 1) {
								prt_val_add(Val.mp, floor(D/4));
							}
							else {
								mana_1 += D/4;
							}
						}
						switch (global.hat) {
							case spr_hat40:
								if (D > 1) {
									combo++;
									combo_time = 200;
									if (combo < 8 and combo > 3) {
										if (buff_time < 1) {
											buff_time = 100;
											buff_index = buff_p2;
											server77_equal(serve_val.buff_index, buff_index, buffer_u16);
										}
									}
									if (combo < 12 and combo > 7) {
										if (buff_time < 1) {
											buff_time = 100;
											buff_index = buff_jaja;
											server77_equal(serve_val.buff_index, buff_index, buffer_u16);
										}
									}
									if (combo > 16) {
										if (buff_time < 1) {
											buff_time = 100;
											buff_index = buff_nu2;
											server77_equal(serve_val.buff_index, buff_index, buffer_u16);
										}
									}
									}
							break;
							case spr_level5_hat9:
								prt_val_add(Val.gi, D / 10);
							break;
						}
					}
					if (testing.hp > 0) {
						testing.hp += D;
					}
				}
			}
		break;
		case 111://오직 처음에만 주는값
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				cur_room = buffer_read(buff,buffer_u8);
				team_score[0] = buffer_read(buff,buffer_u8);
				team_score[1] = buffer_read(buff,buffer_u8);
				server202_sound(resurrection);
				var temp_time =  buffer_read(buff,buffer_u16);
				win =  buffer_read(buff,buffer_bool);
				if (cid == global.my_cid) {
					global.team = buffer_read(buff,buffer_bool);
				}
				else {
					var D = buffer_read(buff,buffer_bool);
				}
				if (win != global.team) {
					last_time = temp_time;
				}
				for (var i = 1 ; i < 25 ; i++) {
					ary_cid[i] = buffer_read(buff,buffer_bool);
						if (ary_cid[i] = 1) {
							hat_frame[i] = buffer_read(buff,buffer_u8);
						    serve_name[i] = buffer_read(buff,buffer_string);
							team[i] = buffer_read(buff,buffer_bool);
							hat[i] = buffer_read(buff,buffer_u8);
							arm[i] = buffer_read(buff,buffer_u8);
							foot[i] = buffer_read(buff,buffer_u8);
							face[i] = buffer_read(buff,buffer_u16);
							pow[i] = buffer_read(buff,buffer_u8);
							skin[i] = buffer_read(buff,buffer_u8);
					}
				}
				max_score = buffer_read(buff,buffer_u8);
				var temp_mpr = buffer_read(buff,buffer_s8);
				var t_dmg_per = buffer_read(buff,buffer_s8);
				prt_val_set(Val.MPR, temp_mpr);
				prt_val_set(Val.dmg_per, t_dmg_per / 100 + 1);
				
				for(var i = 1; i < 100; i++) {
					global.ban_list[i] = buffer_read(buff,buffer_bool);
					if (global.hat_show == i) {
						if (global.ban_list[i]) {
							scr_hat_change2(spr_hat);
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
							buffer_write(buff_chat,buffer_u8, global.hat_show);
							buffer_write(buff_chat,buffer_u8, level);
	
							network_send_packet(0,buff_chat, 3);
						}
					}
				}
				
				for (var i = 1 ; i < 25 ; i++) {
					var obji = 	global.cid_array[i];
					obji.hat_frame = hat_frame[i];
					obji.x = xx[i];
					obji.y = yy[i];
					obji.name = serve_name[i];
					obji.team = team[i];
					obji.hat = global.hat_array[hat[i]];
					obji.foot = foot[i];
					obji.arm = arm[i];
					obji.face = face[i];
					obji.skin = skin[i];
				}
				var obj = global.cid_array[cid];
				obj.YA = 0;
				obj.live = 1;
				if (cur_room != -1 and room != room_out) {
					room_pass(cur_room);
				}
				green_text_update(string(serve_name[cid]) + "님이 세상에서 태어났습니다.");
		break;
		case 112:
			cid = buffer_read(buff,buffer_u8);
			if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
			testing.cid = cid;
			var obj = global.cid_array[cid];
			obj.cid = cid;
			with(testing) {
				server77_equal(serve_val.live, 1, buffer_bool);
				server77_equal(serve_val.alive, 15, buffer_u8);
				server77_equal(serve_val.buff_index, spr_none, buffer_u16);
				server77_equal(serve_val.color, c_white, buffer_f32);
			}
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat, buffer_u8, 112);
	
			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
		break;
		case 198:
		/*
			if (testing.y < 1300) {
				server202_sound(gili_4_sound);
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat, buffer_u8, 99);
				buffer_write(buff_chat, buffer_bool, global.team);//팀점수 업
				buffer_write(buff_chat, buffer_u8, 0);
				buffer_write(buff_chat, buffer_u8, 1);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
			if!(global.team) {
				testing.x = 988 + irandom_range(-50, 50);
				testing.y = 2147 + irandom_range(-50, 50);
			}
			else {
				testing.x = 3261 + irandom_range(-50, 50);
				testing.y = 2144 + irandom_range(-50, 50);
			}
			*/
		break;
		case 199:
			cid = buffer_read(buff,buffer_u8);
			if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
			green_text_update(string(serve_name[cid]) + "님이 이 세상을 떠났습니다.");
			xx[cid] = -200;
			yy[cid] = -200;
			serve_name[cid] = "";
			team[cid] = 0;
			var obji = global.cid_array[cid];
			obji.x = -200;
			obji.y = -200;
			obji.footL_x = -200
			obji.footR_x = -200
			obji.armL_x = -200
			obji.armR_x = -200
		break;
		case 200:
			cid = buffer_read(buff,buffer_u8);
			if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
			var obj = global.cid_array[cid];
			with(obj)
			{
				hp = 100;
				frame_level_up = 1;
				audio_play_sound(level_up,1,false);
				alarm_set(0,15);
			}
			if (global.my_cid_id == obj) {
				with(testing) {
					frame_level_up = 1;
					alarm_set(0,15);
				}
			}
		break;
		case 201:
			if (buff_size > 2) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				hat_frame[cid] = buffer_read(buff,buffer_u8);
				temp = hat_frame[cid];
				var obj = global.cid_array[cid];
				if (temp < spr_ehat and temp > sprite3) {
					obj.hat_frame = temp;
					obj.frame_level_up = 1;
				}
			}
		break;
		case 202:
			if (buff_size > 2) {
				cid = buffer_read(buff,buffer_u8);
				if (cid < 0) {
					exit	 
				}
				if (cid > 25) {
					exit	
				}
				var sound = buffer_read(buff,buffer_u16);
				audio_play_sound(sound ,1,false);
			}
		break;
		case 203:
			if (buff_size > 2) {
				bol_hat1 = buffer_read(buff,buffer_u8);
				bol_hat2 = buffer_read(buff,buffer_u8);
				if (testing.level != 4) {
					if (global.team) {
						scr_hat_change(bol_hat1);
					}
					else {
						scr_hat_change(bol_hat2);
					}
					if (global.hat != spr_hat21) {
						testing.main_big_val = 1;
						testing.go_to_scale = 1;
					}
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
					buffer_write(buff_chat,buffer_u8, global.hat_show);
					buffer_write(buff_chat,buffer_u8, testing.level);
	
					network_send_packet(0,buff_chat,3);
				}
			}
		break;
		case 204:
		/*
			audio_play_sound(gigili,9,false);
			if (instance_exists(wall_arena11)) {
				wall_arena11.image_alpha = 2;
			}
			if (global.team) {
				testing.x = 3290 + irandom_range(-150, 150);
				testing.y = 824 + irandom_range(-150, 150);
			}
			else {
				testing.x = 994 + irandom_range(-150, 150);
				testing.y = 824 + irandom_range(-150, 150);
			}
		*/
		break;
		case 205:
			if (buff_size > 1) {
				cur_room = buffer_read(buff,buffer_u8);
				if (cur_room != -1 and room != room_out) {
					room_pass(cur_room);
				}
			}
		break;
		case 206:
			if (buff_size > 4) {
				testing.kazino_one = true;
				kazino_where1 = buffer_read(buff,buffer_u8);
				kazino_where2 = buffer_read(buff,buffer_u8);
				kazino_what = buffer_read(buff,buffer_u8);
				kazino_amount = buffer_read(buff,buffer_u8);
				kazino_get = true;
				kazino_time = 300;
				if (instance_exists(obj_show_box)) {
					obj_show_box.time_maybe = 1500;
				}
			}
		break;
		case 207:
			cid = buffer_read(buff,buffer_u8);
			if (version != buffer_read(buff,buffer_u8)) {
				show_message_async("새로운 버전을 다운로드 하세요");
				network_destroy(global.client);
				global.online = 0;
				room_goto(room_out);
				exit;
			}
			if (cid < 0) {
					exit	 
				}
			if (cid > 25) {
					exit	
			}
			global.my_cid = cid;
			global.my_cid_id = global.cid_array[cid];
		break;
		case 208:
			if (buff_size > 1) {
				win =  buffer_read(buff,buffer_bool);
				audio_stop_all();
				audio_play_sound(time_to_say_good_bye,9,false);
				audio_play_sound(time_to_say_good_bye,9,false);
				audio_play_sound(time_to_say_good_bye,9,false);
				if (win != global.team) {
					last_time = 720;
				}
			}
		break;
		case 209:
			team_score[0] = 0;
			team_score[1] = 0;
			win =  buffer_read(buff,buffer_bool);
			if (win != global.team) {
				testing.other_cid = 0;
				testing.hp -= 200;
				buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
				buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
				buffer_write(testing.buff_chat,buffer_u8, 0);
				buffer_write(testing.buff_chat,buffer_u8, 200);
				buffer_write(testing.buff_chat,buffer_u16,200);
	
				network_send_packet(0,testing.buff_chat,buffer_tell(testing.buff_chat));
			}
			else {
				if (irandom(1) == 0) {
					buffer_seek(buff_chat, buffer_seek_start, 0);
			
					buffer_write(buff_chat, buffer_u8, 5);
					buffer_write(buff_chat, buffer_string, global.name);
					buffer_write(buff_chat, buffer_u8, 2);

					network_send_packet(0,buff_chat,buffer_tell(buff_chat));
				}
			}
		break;
		case 210:
			var map = ds_map_create();
			ds_map_secure_save(map, "dsaf.ppap");
			show_message("당신은 밴을 당했습니다 ㅠㅠ");
			url_open("https://www.youtube.com/watch?v=YZ7sQLqiNyk");
			game_end();
			exit;
		break;
		case 211:
			instance_create_depth(0, 0, -500, obj_lll);
		break
		case 212:
			if(instance_exists(obj_cart)) {
				var path_temp = buffer_read(buff, buffer_u8);
				obj_cart.path_position = path_temp / 100;
			}
		break;
	}
}