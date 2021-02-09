gi = prt_val_get(Val.gi);
mana = prt_val_get(Val.mp);
copper = prt_val_get(Val.cuper);
iron= prt_val_get(Val.iron);
gold = prt_val_get(Val.gold);
dota_ball = prt_val_get(Val.ball);
global.money = prt_val_get(0);
var speedd = main_speed + extra_speed + buff_speed;
if (speedd < 0) {
	speedd =0;
}
if (global.only_see) {
	buff_index = spr_wing1;
	buff_time = 50;
	sturn = 0;
	hp = 101;
	big_val = 0; 
	image_xscale = 0;
	image_yscale = 0;
	extra_speed = 10;
}
if (level == 4) {
	global.team = 2;
	m_hp = 125 ;
	if (global.hat == spr_level5_hat18) {
		if (hp <= 10) {
			if (gi > 100) {
				prt_val_set(Val.gi, 0);
				normal_play(wing_1_act1);
			}
		}
	}
}
if (room == room_mak) {
	hp -= 0.01;	
}
if (instance_exists(diediedie)) {
	if (distance_to_point(diediedie.x, diediedie.y) < 100) {
		hp -= 0.2;
	}
	else {
		if (distance_to_point(diediedie.x, diediedie.y) < 300) {
			hp -= 0.1;
		}
	}
}
if (global.hat == spr_hat53 or global.hat == spr_hat70) {
	switch(level) {
		case 0:
			m_hp = 105 ;
		break;
		case 1:
			m_hp = 110 ;
		break;
		case 2:
			m_hp = 115 ;
		break;
		case 3:
			m_hp = 120 ;
		break;
	}
}
else {
	m_hp = 100 ;
}
if (global.hat == spr_hat63 and level == 3) {
	m_hp = 110;	
}
switch(global.hat) {
	case spr_hat24:
	if (keyboard_check(global.keyw)) {
		if (level > 1) {
			if (a_cooltime <= 0) {
				if (gi >= 40) {
					prt_val_add(Val.gi, -40);
					normal_play(gili_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 40(40)";
				}
			}
		}
	}
	break;
	case spr_hat71:
	if (keyboard_check(global.keyw)) {
		if (level > 1) {
			if (gi >= 1) {
				prt_val_add(Val.gi, -1);
				normal_play(gun_3_act);
			}
			else {
				skill_say_time = 30;
				skill_say = "GI: " + string(gi) + " / 1(1)";
			}
		}
	}
	break;
	case spr_level5_hat16: 
		if (level > 4) {
			if (mana < 1) {
				level = 4;
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
				buffer_write(buff_chat,buffer_u8, global.hat_show);
				buffer_write(buff_chat,buffer_u8, level);
	
				network_send_packet(0,buff_chat,3);
				server77_equal(serve_val.hat_frame, level, buffer_u8);
			}
			else {
				prt_val_add(Val.mp, -0.3);
			}
		}
	break;
}

if (instance_exists(grvity)) {
	if (go_soild == false) {
		if (place_free(x, y + 2)) {
			y += 1;
		}
		if (place_meeting(x, y, water_zone)) {
			if (place_free(x, y + 2)) {
				y += 3;
			}
		}
		else {
			if (place_free(x, y + 9 + grv)) {
				grv += 0.05;
				y += 10 + grv;
			}
		}
	}
	repeat(10) {
		if (!place_free(x, y)) {
			y--;
		}
	}
}
if (keyboard_check(global.keyf)) {
	if (instance_exists(grvity)) {
		if (!place_free(x, y + 2) or place_meeting(x, y, water_zone)) {
			grv = 0;
			jump_time = 20; 
			jump = true;
		}
	}
	if (fishing != false) {
		if (fish_time <= 80) {
			if (fishing == 2) {
				normal_play(fish_get);
			}
			else {
				normal_play(fish_not_get);
			}
			fishing = 3
		}
	}
}
if (mana < -100 ){
	mana = 0;
}
if(live = 1) {
	if (moveable) {
		if (keyboard_check(global.left)) {
			if (sturn = 0) {
				if (a_cooltime <= 0) {
					if (only_move = 1) {
						if (keyboard_check(global.shift)) {
							if (keyboard_check(global.cap)) {
								if(place_free(x + (lengthdir_x(5,YA2 - 180)), y + (lengthdir_y(5,YA2 - 180))) or go_soild) {
									x += lengthdir_x(5,YA2 - 180)
									if (!instance_exists(grvity) or go_soild == true) {
										y += lengthdir_y(5,YA2 - 180)
									}
									all_YA_change_delta2(2);
								}
							}
							else {
								if(place_free(x - (speedd), y) or go_soild) {
									x -= speedd;
								}
							}
						}//쉬프트
						else {
							if (keyboard_check(global.cap)) {
								all_YA_change_delta2(4);
								event_user(0);
								}//탭 (쉬프트 X)
							}
					}
				if (!keyboard_check(global.shift)) {
					 if (!keyboard_check(global.cap)) {
						 if(place_free(x - (speedd), y) or go_soild) {
							 x -= speedd;			
						 }
						 all_YA_change2(270);
						 event_user(0);
					 	 // 탭x 쉬프트x
						 if (keyboard_check(global.up)) {
							 all_YA_change2(310);
							 event_user(0);
						 }
						 if (keyboard_check(global.down)) {
							all_YA_change2(225);
							event_user(0);
							}
						}	
					}
				}
				else {
					if (spin_able == true) {
						if (a_a_cooltime < 0) {
							all_YA_change_delta2(4);
							event_user(0);
						}
					}
				}
			}
		}
		if (keyboard_check(global.up)) {
			if (sturn = 0) {
				if (a_cooltime <= 0) {
					if (only_move = 1) {
						if (keyboard_check(global.shift)) {
							if (!keyboard_check(global.cap)) {
								if(place_free(x, y - (speedd)) or go_soild) {
									if (!instance_exists(grvity)) {
										y -= speedd;
									}
									event_user(0);
								}
							}
						}
						if (keyboard_check(global.cap)) {
							if (keyboard_check(global.shift)) {
								if(place_free(x + lengthdir_x(2,YA2-90), y + lengthdir_y(2,YA2-90)) or go_soild) {
									x += lengthdir_x(2,YA2-90);
									if (!instance_exists(grvity)) {
										y += lengthdir_y(2,YA2-90);
									}
									event_user(0);
									}
								}
							else {
								var cap_speed = speedd + (ride * 7) + 2;
								if(place_free(x + lengthdir_x(cap_speed + 20,YA2-90), y + lengthdir_y(cap_speed + 20,YA2-90)) or go_soild) {
									x += lengthdir_x(cap_speed,YA2-90);
									if (!instance_exists(grvity) or go_soild == true) {
										y += lengthdir_y(cap_speed,YA2-90);
									}
									event_user(0);
									}
								}
						}
					}
					if (!keyboard_check(global.shift)) {
						if (!keyboard_check(global.cap)) {
							if(place_free(x, y - (speedd)) or go_soild) {
								if (!instance_exists(grvity) or go_soild == true) {
									y -= speedd;
								}
							}
								all_YA_change2(180);
								event_user(0);
							if (keyboard_check(global.left)) {
								all_YA_change2(225);
								event_user(0);
							}
							if (keyboard_check(global.right)) {
								all_YA_change2(135);
								event_user(0);
							} 
						}
					}
				}
			}	
		}
		if (keyboard_check(global.right)) {
			if (sturn = 0) {
				if (a_cooltime <= 0) {
					if (only_move = 1) {
						if (keyboard_check(global.shift)) {
							if (keyboard_check(global.cap)) {
								if(place_free(x + (lengthdir_x(5,YA2)), y + (lengthdir_y(5,YA2))) or go_soild) {
									x += lengthdir_x(5,YA2)
									if (!instance_exists(grvity) or go_soild == true) {
										y += lengthdir_y(5,YA2)
									}
									all_YA_change_delta2(-2);
								}
							}
							else {
								if(place_free(x + speedd, y) or go_soild) {
									x += speedd;
									event_user(0);
								}
							}
					}
					else {
					if (keyboard_check(global.cap)) {
						all_YA_change_delta2(-4);
						event_user(0);
						}
					}
				}
					if (!keyboard_check(global.shift)) {
						if (!keyboard_check(global.cap)) {
							if(place_free(x + speedd, y) or go_soild) {
							x += speedd;
							}
							all_YA_change2(90);
							event_user(0);
							if (keyboard_check(global.up)) {
								all_YA_change2(135);
								event_user(0);
							}
							if (keyboard_check(global.down)) {
								all_YA_change2(45);
								event_user(0);
							} 
						}
					}
				}
				else {
					if (spin_able == true) {
						if (a_a_cooltime < 0) {
							all_YA_change_delta2(-4);
							event_user(0);
						}
					}
				}
			}
		}
		if (keyboard_check(global.down)) {
			if (sturn = 0) {
				if (a_cooltime <= 0) {
					if (only_move = 1) {
						if (keyboard_check(global.shift)) {
							if (!keyboard_check(global.cap)) {
								if(place_free(x, y + speedd) or go_soild) {
								y += speedd;
								event_user(0);
								}
							}
						}
						if (keyboard_check(global.cap)) {
							if (keyboard_check(global.shift)) {
								if(place_free(x - lengthdir_x(2,YA2-90), y - lengthdir_y(2,YA2-90)) or go_soild) {
									x -= lengthdir_x(2,YA2-90);
									y -= lengthdir_y(2,YA2-90);
									event_user(0);
								}
							}
							else {
								var cap_speed = speedd + (ride * 7) + 2;
								if(place_free(x - lengthdir_x(cap_speed,YA2-90), y - lengthdir_y(cap_speed,YA2-90)) or go_soild) {
									x -= lengthdir_x(cap_speed,YA2-90);
									y -= lengthdir_y(cap_speed,YA2-90);
									event_user(0);
								}
							}
						}
					}
					if (!keyboard_check(global.shift)) {
						if (!keyboard_check(global.cap)) {
							if(place_free(x, y + speedd) or go_soild) {
								y += speedd;
							}
							all_YA_change2(0);
							event_user(0);
							if (keyboard_check(global.left)) {
								all_YA_change2(315);
								event_user(0);
							}
							if (keyboard_check(global.right)) {
								all_YA_change2(45);
								event_user(0);
							}
						}
					}
				}
			}
		}
	}
	if (sturn <= 0) {
		if (chat_point = 0) {
			if (a_possible = 1) {
				if (keyboard_check(ord("4"))) {
					if (a_cooltime <= 0) {
						normal_play(it_hing);
					}
				}
				if (keyboard_check(ord("5"))) {
					if (a_cooltime <= 0) {
						normal_play(da_bong);
					}
				}
				if (keyboard_check(ord("6"))) {
					if (a_cooltime <= 0) {
						normal_play(ap);
					}
				}
				if (keyboard_check(ord("7"))) {
					if (a_cooltime <= 0) {
						normal_play(ap1);
					}
				}
				if (keyboard_check(global.keya)) {
					if (a_cooltime <= 0) {
						switch(normal_attack_type) {
							case spr_hat11 :
								norm_attack()
								normal_play(bwiza_1_act);
							break;
							case spr_hamer :
								normal_play(die_1_act2);
							break;
							case spr_saw :
								normal_play(die_2_act2);
							break;
							case spr_bigsaw :
								normal_play(die_3_act2);
							break;
							case spr_wild3_mask :
								norm_attack()
								normal_play(twiza_3_act);
							break;
							case spr_sea_k :
								normal_play(sea_2_act2);
							break;
							case spr_nk:
								normal_play(nk_1_act);
							break;
							case spr_korea3:
								normal_play(korea_3_act);
							break;
							case spr_nuke3:
								normal_play(nuke_3_act);
							break;
							default:
							if (a_possible == true) {
								switch (global.hat) {
									case spr_hat70:
										normal_play(bam_1_act);
									break;
									case spr_hat10:
										norm_attack()
										if (level > 1) {
											normal_play(p_3_act);
										}
										break;
									case spr_hat12 :
										norm_attack()
										if (level > 1) {
											normal_play(twiza_3_act);
										}
										break;
									case spr_hat67 :
										if (a_a_cooltime <= 0) {
											if (level > 2) {
												normal_play(yo_4_act);
											}
											else {
												norm_attack();	
											}
										}
										else {
											skill_say_time = 30;
											skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
										}
									break;
									case spr_hat11 :
										norm_attack()
										normal_play(bwiza_1_act);
										break;
									case spr_hat40:
										normal_play(fighter_1_act);
									break;
									case spr_hat71:
										normal_play(gun_0_act);
									break;
									case spr_hat56:
										if(level > 1) {
											normal_play(shit_1_act1);
										}
										else {
											norm_attack()
										}
									break;
									case spr_hat15:
										norm_attack()
										if (level > 1) {
											if(gi > 10) {
												prt_val_add(Val.gi, -10);
												server78_create_instace(healer_skill3, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
											}
										}
										break;
									case spr_hat17:
										switch(level) {
											case 0:
												normal_play(die_1_act2);
											break;
											case 1:
												normal_play(die_2_act2);
											break;
											case 2:
												normal_play(die_3_act2);
											break;
											case 3:
												stemina -= 25;
												normal_play(die_4_act2);
											break;
										}
										break;
									case spr_hat18 :
										if (level > 1) {
											normal_play(korea_3_act);
										}
										else {
											norm_attack()
										}
										break;
									case spr_secret :
										normal_play(hunt_4_act);
									break;
									case spr_level5_hat11:
										normal_play(alpha_0_act);
									break;
									case spr_level5_hat12:
										normal_play(fly_2_but);
									break;
									case spr_level5_hat13:
										normal_play(ssg_4_act);
										norm_attack()
									break;
									case spr_hat39 :
										if (level == 3) {
											if (irandom(100) < 6) {
												normal_play(lebe_4_act);
											}
											else {
												norm_attack();
											}
										}
										else {
											norm_attack();	
										}
									break;
									case spr_hat38 :
										if (level == 3) {
											normal_play(fly_4_act);
										}
										else {
											norm_attack();	
										}
									break;
									case spr_hat49:
										if (irandom(9) == 0) {
											normal_play(nuke_1_act)
										}
										else {
											norm_attack();	
										}
									break;
									case spr_level5_hat8:
										normal_play(die_3_but);
									break;
									default :
										norm_attack();
								}
							}
							break;
						}
						if (timeline_index == charge_1_act) {
							server77_equal(serve_val.cancle_able, false, buffer_bool);
						}
					}
				}
			}//공격 부분
			else {
				if (a_charging = 1) {
					if (keyboard_check(global.keya)) {
						a_charging = 0;
						alarm_set(2,1);
						spr_armr_more = spr_none;
						view_visible[0] = false;
						view_visible[1] = true;
						obj_telescope_view.go_pixel = 630;
						view_where = 1;
						obj_telescope_view.tele = true;
	
						buffer_seek(buff_chat, buffer_seek_start, 0);
	
						buffer_write(buff_chat,buffer_u8,3);//3은 피해량,스턴값
						buffer_write(buff_chat,buffer_f32,cli_alpha);
	
						network_send_packet(0,buff_chat,buffer_tell(buff_chat));

					}
				}
			}

				if (a_possible = 1 and skill_posible = true and hat_bye == false) {
					if (keyboard_check(global.keyd)) {
						switch(global.hat) {
							case spr_hat1 :
								if (level != 4) {
									if (a_cooltime <= 0) { 
										if (mana >= 55) {
											prt_val_add(Val.mp, -55);
											normal_play(yellow_1_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 55(55)";
										}
									}//옐로우캡 부분
								}
								else {
									if (a_cooltime <= 0) { 
										if (mana >= 55) {
											prt_val_add(Val.mp, -55);
											normal_play(yellow_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 55(55)";
										}
									}//옐로우캡 부분
								}
							break;
							
							case spr_level5_hat1 :
							if (level == 4) {
									if (a_cooltime <= 0) {
										if (mana >= 35) {
											prt_val_add(Val.mp, -35);
											normal_play(yellow_1_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 35(35)";
										}
									}
							}
							break;//무사 부분
							
							case spr_hatee:
								if (a_cooltime <= 0) {
									if (mana >= 66) {
										prt_val_add(Val.mp, -66);
										normal_play(charge_1_act2);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 66(66)";
									}
								}
							break;
							case spr_hat2 :
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -66);
										normal_play(musa_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 66(50)";
									}
								}
							break;//무사 부분
							
							case spr_hat50849:
								if (a_cooltime <= 0) {
									if (gi >= 50) {
										prt_val_add(Val.gi, -50);
										normal_play(p_1_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "GP: " + string(gi) + " / 50(50)";
									}
								}
							break;//무사 부분
							
							case spr_hat3 :
								if (a_cooltime <= 0) {
									if (mana >= 50 - level * 5) {
										prt_val_add(Val.mp, -50 + level * 5);
										normal_play(hunt_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(50 - level * 5) + "(" + string(50 - level * 5)  + ")";
									}
								}
							break;//사냥꾼 부분
							
							case spr_hat4 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(EQ_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 40(40)";
									}
								}
							break;
							
							case spr_hat6 :
								if (a_cooltime <= 0) {
									switch(level)
									{
										case 0:
										if (mana >= 5) {
											prt_val_add(Val.mp, -5);
											normal_play(ssg_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 5(5)";
										}
										break;
										case 1:
										if (mana >= 10) {
											prt_val_add(Val.mp, -10);
											normal_play(ssg_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 10(10)";
										}
										break;
										case 2:
										if (mana >= 18) {
											prt_val_add(Val.mp, -18);
											normal_play(ssg_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 18(18)";
										}
										break;
										case 3:
										if (mana >= 40) {
											prt_val_add(Val.mp, -40);
											normal_play(ssg_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 40(40)";
										}
										break;
									}
								}
							break;//소세지 부분
							
							case spr_hat7 :
								if (a_cooltime <= 0) {
									switch(level) {
									case 0:
										if (mana >= 75) {
											prt_val_add(Val.mp, -75);
											a_cooltime = 15;
											go_to_scale = 2;
											big_val_time = 540;
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 75(75)";
										}
										break;
									case 1:
										if (mana >= 75) {
											prt_val_add(Val.mp, -75);
											a_cooltime = 15;
											go_to_scale = 2;
											big_val_time = 540;
											big_shild = true;
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 75(75)";
										}
										break;
									case 2:
										if (mana >= 125) {
											prt_val_add(Val.mp, -125);
											a_cooltime = 15;
											go_to_scale = 4;
											big_val_time = 540;
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 125(125)";
										}
										break;
									case 3:
										if (mana >= 125) {
											prt_val_add(Val.mp, -125);
											a_cooltime = 15;
											go_to_scale = 6;
											big_val_time = 540;
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 125(125)";
										}
										break;
									}
								}
							break;//거인 부분
							
							case spr_hat8 :
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(nu_1_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break;
							
							case spr_hat9 :
							if (a_cooltime <= 0) {
								if (mana >= 15) {
									prt_val_add(Val.mp, -15);
									random_table1();
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 15(15)";
								}
							}
							break;
							
							case spr_hat10 :
							if (a_cooltime <= 0) {
								if(level == 3) {
									if (mana >= 15) {
										prt_val_add(Val.mp, -15);
										normal_play(p_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 15(15)";
									}
									
									
								}
								else {
									if (mana >= 55 - level * 5) {
										prt_val_add(Val.mp, -55 + level * 5);
										normal_play(p_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(55 - level * 5) + "(" + string(55 - level * 5)  + ")";
									}
								}
							}
							break;
							
							case spr_hat11 :
							if (a_cooltime <= 0) {
								if (mana >= 5) {
									prt_val_add(Val.mp, -5);
									normal_play(bwiza_1_act2);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 5(5)";
								}
							}
							break;
							
							case spr_hat12 :
							if (a_cooltime <= 0) {
								if(level == 0) {
									if (mana >= 72) {
										prt_val_add(Val.mp, -72);
										normal_play(twiza_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 72(72)";
									}
									
									
								}
								else {
									if (mana >= 54) {
										prt_val_add(Val.mp, -54);
										normal_play(twiza_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 54(54)";
									}
								}
							}
							break;
							
							case spr_hat13 :
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(apple_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break;
							
							case spr_hat14 :
							if (a_cooltime <= 0) {
								if (mana >= 55) {
									prt_val_add(Val.mp, -55);
									normal_play(sward_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 55(55)";
								}
							}
							break;
							
							case spr_hat15 :
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(healer_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break;
							
							case spr_hat16 :
							case spr_hat35:
							if (a_cooltime <= 0) {
								if (mana >= 15) {
									prt_val_add(Val.mp, -15);
									normal_play(shep_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 15(15)";
								}
							}
							break;
							
							case spr_hat17 :
							if (a_cooltime <= 0) {
								if (mana >= 30) {
									prt_val_add(Val.mp, -30);
									normal_play(die_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 30(30)";
								}
							}
							break;
							
							case spr_hat18 :
							if (a_cooltime <= 0) {
								if (mana >= 16) {
									prt_val_add(Val.mp, -16);
									normal_play(korea_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 16(16)";
								}
							}
							break;
							
							case spr_hat19 :
							if (a_cooltime <= 0) {
								if (mana >= 25) {
									prt_val_add(Val.mp, -25);
									normal_play(ddr_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 25(25)";
								}
							}
							break;
							
							case spr_hat20 :
							if (a_cooltime <= 0) {
								if (mana >= 90) {
									prt_val_add(Val.mp, -90);
									if (level < 2) {
										normal_play(hide_1_act);
									}
									else {
										normal_play(hide_1_act2);
									}
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 90(90)";
								}
							}
							break;
							
							case spr_level5_hat2 :
							if (a_cooltime <= 0) {
								if (mana >= 10) {
									prt_val_add(Val.mp, -10);
									normal_play(shep_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 10(10)";
								}
							}
							break;
							
							case spr_level5_hat7 :
							if (a_cooltime <= 0) {
								if (mana >= 10) {
									prt_val_add(Val.mp, -10);
									yagol_1_act();
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 10(10)";
								}
							}
							break;
							
							case spr_hat21 :
									if (a_cooltime <= 0) {
										if (gi >= 50) {
											prt_val_add(Val.gi, -50)
											normal_play(lobo_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 50(50)";
										}
									}
								break;
							case spr_hat22 :
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(aring_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break;
							
							case spr_hat23 :
							if (a_cooltime <= 0) {
								if (mana >= 55) {
									prt_val_add(Val.mp, -55);
									normal_play(wing_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 55(55)";
								}
							}
							break;
							
							case spr_hat24 :
							if (a_cooltime <= 0) {
								if (mana >= 45) {
									prt_val_add(Val.mp, -45);
									normal_play(gili_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 45(45)";
								}
							}
							break;
							
							case spr_hat25 :
							if (a_cooltime <= 0) {
								if (mana >= 60) {
									prt_val_add(Val.mp, -60);
									normal_play(ik_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 60(60)";
								}
							}
							break;
							
							case spr_hat26 :
							if (a_cooltime <= 0) {
								if (mana >= 30) {
									prt_val_add(Val.mp, -30);
									normal_play(mili_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 30(30)";
								}
							}
							break;
							
							case spr_hat27 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(charge_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							
							case spr_hat29 :
							if (a_cooltime <= 0) {
								if (mana >= 16) {
									prt_val_add(Val.mp, -16);
									normal_play(ane_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 16(16)";
								}
							}
							break;
							
							case spr_hat30 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(fwiza_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							
							case spr_level5_hat3 :
							if (a_cooltime <= 0) {
								if (mana >= 20) {
									prt_val_add(Val.mp, -20);
									normal_play(ik_2_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 20(20)";
								}
							}
							break;
							
							case spr_level5_hat4 :
							if (a_cooltime <= 0) {
								if (mana >= 20) {
									prt_val_add(Val.mp, -20);
									normal_play(sward_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 20(20)";
								}
							}
							break;
							
							case spr_secret :
							if (a_cooltime <= 0) {
								if (mana >= 20) {
									prt_val_add(Val.mp, -20);
									normal_play(yellow_1_but);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 20(20)";
								}
							}
							break;
							
							case spr_level5_hat5 :
							if (a_cooltime <= 0) {
								if (mana >= 15) {
									prt_val_add(Val.mp, -15);
									normal_play(normal_attack_but);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 15(15)";
								}
							}
							break;
							
							case spr_level5_hat6 :
							if (a_cooltime <= 0) {
								if (mana >= 20) {
									prt_val_add(Val.mp, -25);
									normal_play(hunt_2_but);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 25(20)";
								}
							}
							break;
							
							case spr_hat31 :
							if (a_cooltime <= 0) {
								if (mana >= 60) {
									prt_val_add(Val.mp, -60);
									normal_play(mine_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 60(60)";
								}
							}
							break;
							
							case spr_hat32 :
							if (a_cooltime <= 0) {
								if (keyboard_check(global.keye)) {
									if (level == 3) {
										if (mana >= 70) {
											prt_val_add(Val.mp, -90);
											normal_play(gili_3_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 70(90)";
										}
									}
								}
								else {
									if (mana >= 60) {
										prt_val_add(Val.mp, -60);
										normal_play(sward_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 60(60)";
									}
								}
							}
							break;
							
							case spr_hat33 :
							if (a_cooltime <= 0) {
								if (mana >= 120) {
									prt_val_add(Val.mp, -150);
									normal_play(twiza_4_act2);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 150(120)";
								}
							}
							break;
							
							case spr_hat34 :
								if (a_cooltime <= 0) {
									if (mana >= 80 - level * 10) {
										prt_val_add(Val.mp, -80 + level * 10);
										normal_play(p_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(80 - level * 10) + "(" + string(80 - level * 10)  + ")";
									}
								}
							break;
							
							case spr_hat36 :
							if (a_cooltime <= 0) {
								if (mana >= 15) {
									prt_val_add(Val.mp, -15);
									normal_play(kpower_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 15(15)";
								}
							}
							break;
							
							case spr_hat37 :
							if (a_cooltime <= 0) {
								if (mana >= 70) {
									prt_val_add(Val.mp, -70);
									normal_play(kesin_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 70(70)";
								}
							}
							break;
							
							case spr_hat38 :
							if (a_cooltime <= 0) {
								if (mana >= 20) {
									prt_val_add(Val.mp, -20);
									normal_play(fly_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 20(20)";
								}
							}
							break;
							
							case spr_hat39 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(lebe_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							
							case spr_hat62 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -66);
									normal_play(lebe_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 66(66)";
								}
							}
							break;
							
							case spr_hat40 :
							if (a_cooltime <= 0) {
								if (mana >= 30) {
									prt_val_add(Val.mp, -30);
									normal_play(fighter_1_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 30(30)";
								}
							}
							break;
							
							case spr_hat41 :
							if (a_cooltime <= 0) {
								if (mana >= 15) {
									prt_val_add(Val.mp, -15);
									normal_play(shit_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 15(15)";
								}
							}
							break;
							
							case spr_hat42 :
							if (a_cooltime <= 0) {
								if (mana >= 14) {
									prt_val_add(Val.mp, -14);
									normal_play(wild_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 14(14)";
								}
							}
							break;
							
							case spr_hat43 :
							if (a_cooltime <= 0) {
								if (mana >= 0) {
									prt_val_add(Val.mp, -40);
									normal_play(spear_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(0)";
								}
							}
							break;
							
							case spr_hat44 :
							if (a_cooltime <= 0) {
								if (mana >= 5) {
									prt_val_add(Val.mp, -5);
									normal_play(pwiza_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 5(5)";
								}
							}
							break;
							
							case spr_hat45 :
							if (a_cooltime <= 0) {
								if (mana >= 44) {
									prt_val_add(Val.mp, -44);
									normal_play(fheal_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 44(44)";
								}
							}
							break;
							case spr_hat46:
								if (a_cooltime <= 0) {
									if (gi >= 30) {
										if (mana >= 40) {
											prt_val_add(Val.gi, -30)
											prt_val_add(Val.mp, -40)
											normal_play(bandit_1_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 40(40)";
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 30(30)";
									}
								}	
							break;
							case spr_hat47 :
							if (a_cooltime <= 0) {
								if (mana >= 180) {
									prt_val_add(Val.mp, -180);
									normal_play(gilmak_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 180(180)";
								}
							}
							break
							case spr_hat48 :
							if (a_cooltime <= 0) {
								if (mana >= 55) {
									prt_val_add(Val.mp, -55);
									normal_play(sans_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 55(55)";
								}
							}
							break
							case spr_hat49 :
							if (a_cooltime <= 0) {
								if (mana >= 30) {
									prt_val_add(Val.mp, -30);
									normal_play(nuke_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 30(30)";
								}
							}
							break
							case spr_hat50 :
							if (a_cooltime <= 0) {
								if (mana >= 60) {
									prt_val_add(Val.mp, -60);
									normal_play(sea_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 60(60)";
								}
							}
							break
							case spr_hat51 :
							if (level != 3) {
								if (a_cooltime <= 0) {
									if (mana >= 45) {
										prt_val_add(Val.mp, -45);
										normal_play(pota_1_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 45(45)";
									}
								}
								break
							}
							else {
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(pota_1_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 60(60)";
									}
								}
								break
							}
							case spr_hat52 :
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(jam_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break
							case spr_ehat4 :
							if (a_cooltime <= 0) {
								if (hp > 25) {
									if (mana >= 50) {
										hp -= 25;
										prt_val_add(Val.mp, -50);
										normal_play(jam_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
								else {
									skill_say_time = 30;
									skill_say = "HP: " + string(hp) + " / 25(25)";
								}
							}
							break
							case spr_hat53 :
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(he_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break
							case spr_level5_hat8 :
							if (a_cooltime <= 0) {
								if (mana >= 15) {
									prt_val_add(Val.mp, -15);
									normal_play(die_1_but);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 15(15)";
								}
							}
							break
							case spr_level5_hat9 :
							if (a_cooltime <= 0) {
								if (mana >= 20) {
									prt_val_add(Val.mp, -30);
									normal_play(sans_1_but);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 20(20)";
								}
							}
							break
							case spr_level5_hat10 :
							if (a_cooltime <= 0) {
								if (mana >= 25) {
									prt_val_add(Val.mp, -25);
									normal_play(musa_1_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 25(25)";
								}
							}
							break
							case spr_level5_hat11 :
							if (a_cooltime <= 0) {
								if (mana >= 44) {
									prt_val_add(Val.mp, -44);
									normal_play(alpha_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 44(44)";
								}
							}
							break
							case spr_level5_hat12 :
							if (a_cooltime <= 0) {
								if (mana >= 30) {
									prt_val_add(Val.mp, -30);
									normal_play(hunt_1_but);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 30(30)";
								}
							}
							break
							case spr_level5_hat13 :
							if (a_cooltime <= 0) {
								if (mana >= 25) {
									prt_val_add(Val.mp, -25);
									normal_play(shit_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 25(25)";
								}
							}
							break
							case spr_level5_hat14 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(light_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break
							case spr_level5_hat15 :
							if (a_cooltime <= 0) {
								if (mana >= 30) {
									prt_val_add(Val.mp, -30);
									normal_play(sward_2_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 30(30)";
								}
							}
							break
							case spr_hat54 :
							if (a_cooltime <= 0) {
								if (mana >= 8) {
									prt_val_add(Val.mp, -8);
									normal_play(trol_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 8(8)";
								}
							}
							break
							case spr_level5_hat16 :
							if (a_cooltime <= 0) {
								if (mana >= 1) {
									prt_val_add(Val.mp, -1);
									normal_play(sli_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 1(1)";
								}
							}
							break
							case spr_level5_hat17 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									a_cooltime = 15;
									go_to_scale = 5;
									big_val_time = 540;
									big_shild = true;
									buff_time = 2 * room_speed;
									buff_index = spr_wing1;
									server77_equal(serve_val.buff_index, buff_index, buffer_u16);
									left_arm_YA = YA - 180;
									go_to_speed = 1;
									aexp += 30;
									server202_sound(wing_1_sound);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 100(100)";
								}
							}
							break
							case spr_hat55 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(coca_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 40(40)";
									}
								}
							break;
							case spr_hat56 :
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(he_3_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break
							case spr_hat57 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(ma_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break
							case spr_hat58 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(nk_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break
							case spr_hat59 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(ik_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break
							case spr_hat60 :
								if (a_cooltime <= 0) {
									if (mana >= 60 - level * 10) {
										prt_val_add(Val.mp, -60 + level * 10);
										normal_play(see_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(60 - level * 10) + "(" + string(60 - level * 10)  + ")";
									}
								}
							break;
							case spr_hat61 :
								if (a_cooltime <= 0) {
									if (mana >= 50 - level * 5) {
										prt_val_add(Val.mp, -50 + level * 5);
										normal_play(nin_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(50 - level * 5) + "(" + string(50 - level * 5)  + ")";
									}
								}
							break;
							case spr_hat63 :
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(tu_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break
							case spr_hat64 :
							if (a_cooltime <= 0) {
								if (mana >= 25) {
									prt_val_add(Val.mp, -25);
									normal_play(sang_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 25(25)";
								}
							}
							break
							case spr_hat65 :
							if (a_cooltime <= 0) {
								if (mana >= 4) {
									prt_val_add(Val.mp, -4);
									normal_play(eng_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 4(4)";
								}
							}
							break
							case spr_level5_hat18 :
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(sward_1_act2);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break
							case spr_hat5 :
							if (level > 3) {
								if (a_cooltime <= 0) {
									if (mana >= 180) {
										prt_val_add(Val.mp, -180);
										normal_play(goza_skilld);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 180(180)";
									}
								}
								break
							}
							case spr_hat66 :
							if (level == 3) {
								if (a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(bb_1_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
								break
							}
							else {
								if (a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(bb_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
								break
							}
							case spr_hat67:
							if (a_cooltime <= 0) {
									if (gi >= 50) {
										prt_val_add(Val.gi, -50);
										normal_play(yo_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GP: " + string(gi) + " / 50(50)";
									}
								}
							break;
							case spr_hat68:
								if (a_cooltime <= 0) {
									if (mana >= 25) {
										prt_val_add(Val.mp, -25);
										normal_play(music_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 25(25)";
									}
								}
							break;
							case spr_hat69:
								if (a_cooltime <= 0) {
									var gout = false;
									for (var i = 0; i < instance_number(tree_skill12); i++) {
										var temp_id = instance_find(tree_skill12, i);
										if (temp_id.cid == global.my_cid) {
											if (mana >= 15) {
												prt_val_add(Val.mp, -15);
												normal_play(tree_1_act2);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 15(15)";
											}
											gout = true;
											break;
										}
									}
									for (var i = 0; i < instance_number(tree_skill32); i++) {
										var temp_id = instance_find(tree_skill32, i);
										if (temp_id.cid == global.my_cid) {
											if (mana >= 25) {
												prt_val_add(Val.mp, -25);
												normal_play(tree_1_act3);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 25(25)";
											}
											gout = true;
											break;
										}
									}
									if (!gout) {
										if (mana >= 45) {
											prt_val_add(Val.mp, -45);
											normal_play(tree_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 45(45)";
										}
									}
								}
							break;
							case spr_hat70:
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										normal_play(bam_1_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / '0'(50)";
									}
								}
							break;
							case spr_hat71:
								if (a_cooltime <= 0) {
									if (mana >= 20) {
										prt_val_add(Val.mp, -20);
										normal_play(gun_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 20(20)";
									}
								}
							break;
							case spr_hat72:
								if (a_cooltime <= 0) {
									if (mana >= 120) {
										prt_val_add(Val.mp, -120);
										normal_play(gman_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 120(120)";
									}
								}
							break;
						}
					}//1차 스킬 
						

					if (keyboard_check(global.keyq)) {
						if (level >= 1) {
							switch(global.hat) {
								case spr_hat1 :
								if (level != 4) {
									if (a_cooltime <= 0) {
										if (gi >= 40) {
											prt_val_add(Val.gi, -40);
											normal_play(yellow_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GP: " + string(gi) + " / 40(40)";
										}
									}
								}
								else {
									if (a_cooltime <= 0) {
										if (mana >= 40) {
											prt_val_add(Val.mp, -40);
											normal_play(yellow_2_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 40(40)";
										}
									}
								}
								break;
								
								case spr_hat2 :
									if (a_cooltime <= 0) {
										if (mana >= 55) {
											prt_val_add(Val.mp, -85);
											normal_play(musa_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 85(55)";
										}
									}
								break;//무사 부분
								
								case spr_hat3 :
									if (a_cooltime <= 0) {
										if (mana >= 56) {
											prt_val_add(Val.mp, -56);
											normal_play(hunt_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 56(56)";
										}
									}
								break;
								
								case spr_hat4 :
									if (a_cooltime <= 0) {
										if (mana >= 110 - level * 10) {
											prt_val_add(Val.mp, (-110 + level * 10));
											normal_play(EQ_2_act);
										}
										else {
											skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string((110 - level * 10)) + "(" + string((110 - level * 10))  + ")";
										}
									}
								break;
								
								case spr_hat6 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(ssg_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat7 :
									if (a_cooltime <= 0) {
										if (mana >= 10) {
											a_cooltime = 26
											prt_val_add(Val.mp, -10);
											YA_change_small = true;
											arm_all_normal();
											arm_type = "attack"
											arm_movement(3, -3, 10, 10);
											server78_create_instace(n_attack_area, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))
											YA_change_small_time = 26;
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 10(10)";
										}
									}
								break;
								
								case spr_hat8 :
									if (a_cooltime <= 0) {
										if (mana >= 100) {
											prt_val_add(Val.mp, -100);
											normal_play(nu_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat9 :
									if (a_cooltime <= 0) {
										if (mana >= 30) {
											prt_val_add(Val.mp, -30);
											random_table2();
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 30(30)";
										}
									}
								break;
								
								case spr_hat10 :
									if (a_cooltime <= 0) {
										if (mana >= 81) {
											prt_val_add(Val.mp, -81);
											normal_play(p_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 81(81)";
										}
									}
								break;
								
								case spr_hat11 :
									if (a_cooltime <= 0) {
										if (mana >= 70) {
											prt_val_add(Val.mp, -70);
											normal_play(bwiza_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 70(70)";
										}
									}
								break;
								
								case spr_hat12 :
									if (a_cooltime <= 0) {
										if (mana >= 110) {
											prt_val_add(Val.mp, -110);
											normal_play(twiza_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 110(110)";
										}
									}
								break;
								
								case spr_hat13 :
								if (a_cooltime <= 0) {
									if (mana >= 100) {
										prt_val_add(Val.mp, -100);
										normal_play(apple_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 100(100)";
									}
								}
								break;
								
								case spr_hat14 :
								if (a_cooltime <= 0) {
									if (mana >= 35) {
										prt_val_add(Val.mp, -35);
										normal_play(sward_2_act);
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
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 35(35)";
									}
								}
								break;
								
								case spr_hat43 :
								if (a_cooltime <= 0) {
									if (mana >= 25) {
										prt_val_add(Val.mp, -25);
										normal_play(sward_2_act);
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
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 25(25)";
									}
								}
								break;
								
								case spr_hat15 :
								if (a_cooltime <= 0) {
									if (a_a_cooltime <= 0) {
										a_a_cooltime = 240;
										if (mana >= 110) {
											prt_val_add(Val.mp, -130);
											a_cooltime = 20;
											arm_type = "attack"
											server78_create_instace(healer_skill2, x, y);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 130(110)";
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
									}
								}
								break;
								
								case spr_hat16 :
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -50);
										normal_play(shep_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
								break;
								
								case spr_hat17 :
								if (a_cooltime <= 0) {
									if (mana >= 11) {
										prt_val_add(Val.mp, -11);
										normal_play(die_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 11(11)";
									}
								}
								break;
								
								case spr_hat18 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(korea_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 40(40)";
									}
								}
								break;
								
								case spr_hat19 :
								if (a_cooltime <= 0) {
									if (mana >= 70) {
										prt_val_add(Val.mp, -70);
										normal_play(ddr_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 70(70)";
									}
								}
								break;
								
								case spr_hat20 :
								if (a_cooltime <= 0) {
									if (mana >= 5) {
										prt_val_add(Val.mp, -5);
										normal_play(hide_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 5(5)";
									}
								}
								break;
								
								case spr_level5_hat2 :
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -50);
										normal_play(ddr_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
								break;
								
								case spr_hat21:
									if (a_cooltime <= 0) {
										if (mana >= 150) {
											prt_val_add(Val.mp, -150);
											normal_play(lobo_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 150(150)";
										}
									}
								break;
								
								case spr_hat22:
									if (a_cooltime <= 0) {
										if (mana >= 20) {
											prt_val_add(Val.mp, -20);
											normal_play(aring_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 20(20)";
										}
									}
								break;
								
								case spr_hat23:
									if (a_cooltime <= 0) {
										if (mana >= 80) {
											prt_val_add(Val.mp, -110);
											normal_play(wing_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 110(80)";
										}
									}
								break;
								
								case spr_hat24:
									if (a_cooltime <= 0) {
										if (mana >= 15) {
											prt_val_add(Val.mp, -15);
											normal_play(gili_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 15(15)";
										}
									}
								break;
								
								case spr_hat25:
									if (a_cooltime <= 0) {
										if (gi >= 25) {
											prt_val_add(Val.gi, -25);
											normal_play(ik_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 25(25)";
										}
									}
								break;
								
								case spr_hat26:
									if (a_cooltime <= 0) {
										normal_play(mili_2_act);
									}
								break;
								
								case spr_hat27:
									if (a_cooltime <= 0) {
										if (mana >= 84) {
											prt_val_add(Val.mp, -84);
											normal_play(charge_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 84(84)";
										}
									}
								break;
								
															
								case spr_hat28 :
								if (a_cooltime <= 0) {
									if (mana >= 80) {
										prt_val_add(Val.mp, -80);
										normal_play(cry_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 80(80)";
									}
								}
								break;
								
								case spr_hat29 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(ane_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 40(40)";
									}
								}
								break;
								
								case spr_hat30 :
								if (a_cooltime <= 0) {
									if (mana >= 60) {
										prt_val_add(Val.mp, -60);
										normal_play(fwiza_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 60(60)";
									}
								}
								break;
								
								case spr_level5_hat3 :
								if (a_cooltime <= 0) {
									if (mana >= 45) {
										prt_val_add(Val.mp, -45);
										normal_play(eletc_ane);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 45(45)";
									}
								}
								break;
								
								case spr_level5_hat4 :
								if (a_cooltime <= 0) {
									if (mana >= 5) {
										prt_val_add(Val.mp, -5);
										normal_play(tank_short);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 5(5)";
									}
								}
								break;
								
								case spr_secret :
								if (a_cooltime <= 0) {
									if (mana >= 5) {
										prt_val_add(Val.mp, -5);
										normal_play(mili_1_but);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 5(5)";
									}
								}
								break;
								
								case spr_level5_hat5 :
								if (a_cooltime <= 0) {
									if (mana >= 10) {
										prt_val_add(Val.mp, -10);
										normal_play(good_bye);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 10(10)";
									}
								}
								break;
								
								case spr_level5_hat7 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(yagol_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 40(40)";
									}
								}
								break;
								
								case spr_level5_hat6 :
								if (a_cooltime <= 0) {
									if (mana >= 10) {
										prt_val_add(Val.mp, -10);
										normal_play(mili_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 10(10)";
									}
								}
								break;
								
								case spr_hat31 :
								if (a_cooltime <= 0) {
									if (mana >= 15) {
										prt_val_add(Val.mp, -15);
										normal_play(mine_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 15(15)";
									}
								}
								break;
								
								case spr_hat32 :
								if (a_cooltime <= 0) {
									if (keyboard_check(global.keye)) {
										if (level == 3) {
											if (mana >= 40) {
												prt_val_add(Val.mp, -40);
												normal_play(EQ_1_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 40(40)";
											}
										}
									}
									else {
										if (mana >= 60) {
											prt_val_add(Val.mp, -60);
											normal_play(twiza_1_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 60(60)";
										}
									}
								}
								break;
								
								case spr_hat33 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -60);
										a_cooltime = 10;
										random_xy();
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 60(40)";
									}
								}
								break;
								case spr_hat34 :
								if (a_cooltime <= 0) {
									if (mana >= 50 - level * 5) {
										prt_val_add(Val.mp, -50 + level * 5);
										normal_play(fwiza_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(50 - level * 5) + "(" + string(50 - level * 5)  + ")";
									}
								}
								break;
								
								case spr_hat35 :
									if (a_cooltime <= 0) {
										if (mana >= 40) {
											prt_val_add(Val.mp, -40);
											normal_play(apple_1_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 40(40)";
										}
									}
								break;
								
								case spr_hat36 :
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -60);
										normal_play(kpower_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 60(50)";
									}
								}
							break;		
							case spr_hat38 :
								if (a_cooltime <= 0) {
									if (mana >= 15) {
										prt_val_add(Val.mp, -15);
										normal_play(fly_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 15(15)";
									}
								}
							break;		
							case spr_hat39 :
								if (a_cooltime <= 0) {
									if (mana >= 80) {
										prt_val_add(Val.mp, -80);
										normal_play(leba_2_skill1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 80(80)";
									}
								}
							break;	
							
							case spr_hat40 :
							if (a_cooltime <= 0) {
								if (mana >= 15) {
									prt_val_add(Val.mp, -15);
									normal_play(fighter_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 15(15)";
								}
							}
							break;
							
							case spr_hat41 :
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(shit_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							
							case spr_hat42 :
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(wild_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break;
							
							case spr_hat44 :
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(pwiza_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break;
													
							case spr_hat45:
								if (a_cooltime <= 0) {
									if (gi >= 200) {
										prt_val_add(Val.gi, -200)
										normal_play(fheal_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 200(200)";
									}
								}
							break;
							
							case spr_hat46:
							if (a_cooltime <= 0) {
								if (mana >= 68) {
									prt_val_add(Val.mp, -68);
									normal_play(bandit_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 68(68)";
								}
							}
							break;
							case spr_hat47:
							if (a_cooltime <= 0) {
								if (gi >= 300) {
									prt_val_add(Val.gi, -300);
									normal_play(gilmak_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "GI: " + string(gi) + " / 300(300)";
								}
							}
							break;
							case spr_hat48:
							if (a_cooltime <= 0) {
								if (mana >= 60) {
									prt_val_add(Val.mp, -60);
									normal_play(sans_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 60(60)";
								}
							}
							break;
							case spr_hat49:
							if (a_cooltime <= 0) {
								if (mana >= 80) {
									prt_val_add(Val.mp, -80);
									normal_play(nuke_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 80(80)";
								}
							}
							break;
							case spr_hat50:
							if (a_cooltime <= 0) {
								if (mana >= 70) {
									prt_val_add(Val.mp, -70);
									normal_play(sea_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 70(70)";
								}
							}
							break;
							case spr_hat51:
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(pota_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break;
							case spr_hat52:
							if (a_cooltime <= 0) {
								if (mana >= 90) {
									prt_val_add(Val.mp, -90);
									normal_play(jam_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 90(90)";
								}
							}
							break;
							
							case spr_ehat4:
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									ehat_2_act();
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							case spr_hat53:
							if (a_cooltime <= 0) {
								if (mana >= 25) {
									prt_val_add(Val.mp, -25);
									normal_play(he_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 25(25)";
								}
							}
							break;
							case spr_level5_hat8:
							if (a_cooltime <= 0) {
								if (mana >= 20) {
									prt_val_add(Val.mp, -20);
									normal_play(die_2_act3);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 20(20)";
								}
							}
							break;
							case spr_level5_hat9:
							if (a_cooltime <= 0) {
								if (gi >= 50) {
									prt_val_add(Val.gi, -50);
									sans_speak();
								}
								else {
									skill_say_time = 30;
									skill_say = "GP: " + string(gi) + " / 50(50)";
								}
							}
							break;
							case spr_level5_hat10:
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(musa_2_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break;
							case spr_level5_hat11:
							if (a_cooltime <= 0) {
								if (mana >= 22) {
									prt_val_add(Val.mp, -22);
									normal_play(mine_2_but);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 22(22)";
								}
							}
							break;
							case spr_level5_hat12:
							if (a_cooltime <= 0) {
								if (mana >= 25) {
									prt_val_add(Val.mp, -25);
									normal_play(mili_1_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 25(25)";
								}
							}
							break;
							case spr_level5_hat13:
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									djz_2_act();
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							case spr_level5_hat14:
							if (a_cooltime <= 0) {
								if (mana >= 100) {
									prt_val_add(Val.mp, -100);
									normal_play(die_2_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 100(100)";
								}
							}
							break;
							case spr_level5_hat15:
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(ane_4_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							case spr_hat54:
							if (a_cooltime <= 0) {
								if (mana >= 10) {
									prt_val_add(Val.mp, -10);
									normal_play(trol_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 10(10)";
								}
							}
							break;
							case spr_hat5:
							if (a_cooltime <= 0) {
								if (hp > 50) {
									if (mana >= 10) {
										prt_val_add(Val.mp, -10);
										normal_play(goza_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 10(10)";
									}
								}
								else {
									skill_say_time = 30;
									skill_say = "HP: " + string(hp) + " / '1'(50)";
								}
							}
							break;
							case spr_level5_hat16:
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(sea_1_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							case spr_level5_hat17:
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(EQ_4_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							case spr_hat55 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(coca_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 40(40)";
									}
								}
							break;
							case spr_hat56:
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(t_killer2);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break;
							case spr_hat57 :
								if (a_cooltime <= 0) {
									if (mana >= 110 - level * 10) {
										prt_val_add(Val.mp, -110 + level * 10);
										normal_play(ma_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(110 - level * 10) + "(" + string(110 - level * 10)  + ")";
									}
								}
							break;
							case spr_hat58:
							if (a_cooltime <= 0) {
								if (mana >= 35) {
									prt_val_add(Val.mp, -35);
									normal_play(nk_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 35(35)";
								}
							}
							break;
							case spr_hat59:
							if (a_cooltime <= 0) {
								if (mana >= 100) {
									prt_val_add(Val.mp, -100);
									normal_play(time_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 100(100)";
								}
							}
							break;
							case spr_hat60:
							if (a_cooltime <= 0) {
								if (mana >= 80) {
									prt_val_add(Val.mp, -80);
									normal_play(see_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 80(80)";
								}
							}
							break;
							case spr_hat61:
							if (a_cooltime <= 0) {
								if (gi >= 85 - level * 5) {
									prt_val_add(Val.gi, -85 - level * 5);
									normal_play(nin_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "GI: " + string(gi) + " / "  + string(85 - level * 5) + "(" + string(85 - level * 5)  + ")";
								}
							}
							break;
							case spr_hat62:
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -50)
										normal_play(healer_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
							break;
							case spr_hat63:
							if (a_cooltime <= 0) {
								if (gi >= 70) {
									prt_val_add(Val.gi, -70);
									normal_play(tu_2_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "GI: " + string(gi) + " / 70(70)";
								}
							}
							break;
							case spr_hat64:
								if (a_cooltime <= 0) {
									if (mana >= 15) {
										prt_val_add(Val.mp, -15)
										normal_play(sang_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 15(15)";
									}
								}
							break;
							case spr_hat65:
							if (a_cooltime <= 0) {
								if (gi >= 150) {
									prt_val_add(Val.gi, -150);
									normal_play(eng_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "GI: " + string(gi) + " / 150(150)";
								}
							}
							break;
							case spr_level5_hat18 :
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(twiza_4_act11);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break
							case spr_hat66 :
							if (a_cooltime <= 0) {
								if (mana >= 45) {
									prt_val_add(Val.mp, -45);
									normal_play(bb_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 45(45)";
								}
							}
							break
							case spr_hat67 :
							if (a_cooltime <= 0) {
								if (mana >= 180) {
									prt_val_add(Val.mp, -180);
									normal_play(yo_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 180(180)";
								}
							}
							break
							case spr_hat68 :
							if (a_cooltime <= 0) {
								if (mana >= 120) {
									prt_val_add(Val.mp, -120);
									normal_play(music_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 120(120)";
								}
							}
							break
							case spr_hat69 :
							if (a_cooltime <= 0) {
								if (a_a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(tree_2_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
								else {
									skill_say_time = 30;
									skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
								}
							}
							break
							case spr_hat70 :
							if (a_cooltime <= 0) {
								if (hp >= 20) {
									hp -= 20;
									normal_play(bam_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "hp: " + string(hp) + " / 20(20)";
								}
							}
							break
							case spr_hat71 :
							if (a_cooltime <= 0) {
								if (mana >= 40) {
									prt_val_add(Val.mp, -40);
									normal_play(gun_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 40(40)";
								}
							}
							break;
							case spr_hat50849:
								if (a_cooltime <= 0) {
									if (mana >= 20) {
										prt_val_add(Val.mp, -20);
										normal_play(cry_2_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 20(20)";
									}
								}
							break;
							case spr_hat72:
								if (a_cooltime <= 0) {
									if (gi >= 150) {
										prt_val_add(Val.gi, -150);
										normal_play(gman_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GP: " + string(gi) + " / 150(150)";
									}
								}
							break;
							case spr_hatee:
								if (a_cooltime <= 0) {
									if (gi >= 140) {
										prt_val_add(Val.gi, -140);
										normal_play(snow_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GP: " + string(gi) + " / 140(140)";
									}
								}
							break;
							}
						}
					}//2차 스킬
		
					if (keyboard_check(global.keyw)) {
						if (level >= 2) {
							switch(global.hat) {
								case spr_hat1 :
								if (level != 4) {
									if (a_cooltime <= 0) {
										if (mana >= 70) {
											prt_val_add(Val.mp, -70);
											normal_play(yellow_3_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 70(70)";
										}
									}
								}
								else {
									if (a_cooltime <= 0) {
										if (mana >= 70) {
											prt_val_add(Val.mp, -70);
											normal_play(yellow_3_act11);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 70(70)";
										}
									}
								}
								break;
								case spr_level5_hat1 :
								if (level == 4) {
									if (a_cooltime <= 0) {
										if (mana >= 180) {
											prt_val_add(Val.mp, -180);
											normal_play(gilmak_1_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 180(180)";
										}
									}
								}
								break;
								case spr_hat2 :
								if (a_cooltime <= 0) {
									if (gi >= 300) {
										prt_val_add(Val.gi, -300)
										normal_play(musa_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 300(300)";
									}
								}
								break;
								
								case spr_hat3 :
								if (a_cooltime <= 0) {
									if (gi >= 50) {
										prt_val_add(Val.gi, -50)
										normal_play(hunt_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 50(50)";
									}
								}
								break;
								
								case spr_hat4 :
								if (a_cooltime <= 0) {
									if (gi >= 200) {
										prt_val_add(Val.gi, -200)
										normal_play(EQ_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 200(200)";
									}
								}
								break;
								
								case spr_hat5 :
								if (a_cooltime <= 0) {
									if (gi >= 200) {
										prt_val_add(Val.gi, -200)
										normal_play(goza_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 200(200)";
									}
								}
								break;
								
								case spr_hat6 :
								if (a_cooltime <= 0) {
									if (mana >= level * 30 - 48) {
										prt_val_add(Val.mp, -level * 30 + 48);
										normal_play(ssg_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / " + string(level * 30 - 48) + "(" + string(level * 30 - 48) + ")";
									}
								}
								break;
								
								case spr_hat7 :
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											prt_val_add(Val.gi, -150)
											go_to_scale = 1 + big_val;
											big_val += 1;
											big_val_time = 300;
											server78_create_instace(n_attack_area, x, y);
											normal_play(r_ready1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								
								case spr_hat8 :
									if (a_cooltime <= 0) {
										if (level == 2) {
											if (gi >= 250) {
												prt_val_add(Val.gi, -250)
												normal_play(nu_3_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 250(250)";
											}
										}
										else {
											if (gi >= 200) {
												prt_val_add(Val.gi, -200)
												normal_play(nu_3_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 200(200)";
											}
										}
									}
								break;
								
								case spr_hat9 :
									if (a_cooltime <= 0) {
										if (gi >= 30) {
											prt_val_add(Val.gi, -33)
											random_table3();
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 33(30)";
										}
									}
								break;
								
								case spr_hat11 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(bwiza_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat12 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(twiza_3_act2);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat14 :
									if (a_cooltime <= 0) {
										if (gi >= 80) {
											prt_val_add(Val.gi, -80);
											normal_play(sward_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(mana) + " / 80(80)";
										}
									}
								break;
								
								case spr_hat16 :
									if (a_cooltime <= 0) {
										if (gi >= 50) {
											prt_val_add(Val.gi, -50)
											normal_play(shep_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 50(50)";
										}
									}
								break;
								
								case spr_hat17 :
									if (a_cooltime <= 0) {
										if (gi >= 40) {
											if (mana >= 40) {
												prt_val_add(Val.gi, -40)
												prt_val_add(Val.mp, -4)
												normal_play(die_3_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 4(4)";
											}
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 40(40)";
										}
									}
								break;
								
								case spr_hat19 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(ddr_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat20 :
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											prt_val_add(Val.gi, -150)
											normal_play(hide_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								
								case spr_level5_hat2 :
								if (a_cooltime <= 0) {
									if (mana >= 40) {
										prt_val_add(Val.mp, -40);
										normal_play(yellow_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 40(40)";
									}
								}
								break;
								
								case spr_hat21:
									if (a_cooltime <= 0) {
										if (mana >= 5) {
											prt_val_add(Val.mp, -5);
											normal_play(lobo_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 5(5)";
										}
									}
								break;
								
								case spr_hat23 :
								if (a_cooltime <= 0) {
									if (gi >= 40) {
										prt_val_add(Val.gi, -40);
										normal_play(wing_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 40(40)";
									}
								}
								break;
								
								case spr_hat25 :
								if (a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(ik_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
								break;
								
								case spr_hat26 :
								if (a_cooltime <= 0) {
									if (gi >= 100) {
										prt_val_add(Val.gi, -100)
										normal_play(mili_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 100(100)";
									}
								}
								break;
								
								case spr_hat27 :
								if (a_cooltime <= 0) {
									if (gi >= 100) {
										prt_val_add(Val.gi, -100)
										normal_play(charge_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 100(100)";
									}
								}
								break;
								
								case spr_hat29 :
								if (a_cooltime <= 0) {
									if (gi >= 150) {
										prt_val_add(Val.gi, -150)
										normal_play(ane_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 150(150)";
									}
								}
								break;
								
								case spr_hat30 :
								if (a_cooltime <= 0) {
									if (gi >= 45) {
										prt_val_add(Val.gi, -45)
										normal_play(fwiza_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 45(45)";
									}
								}
								break;
								
								case spr_level5_hat3 :
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -50);
										normal_play(charge_4_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
								break;
								
								case spr_level5_hat4 :
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -50);
										normal_play(EQ_1_walk);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
								break;
								
								case spr_level5_hat7 :
								if (a_cooltime <= 0) {
									if (mana >= 15) {
										prt_val_add(Val.mp, -15);
										normal_play(yagol_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 15(15)";
									}
								}
								break;
								
								case spr_secret :
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -50);
										normal_play(big_terror_but);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
								break;
								
								case spr_level5_hat5 :
								if (a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(elis_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
								break;
								
								case spr_level5_hat6 :
								if (a_cooltime <= 0) {
									if (mana >= 100) {
										prt_val_add(Val.mp, -100);
										normal_play(leba_2_skill);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 100(100)";
									}
								}
								break;
								
								case spr_hat31 :
								if (a_cooltime <= 0) {
									if (gi >= 200) {
										prt_val_add(Val.gi, -200);
										normal_play(mine_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 200(200)";
									}
								}
								break;
								
																
								case spr_hat32 :
									if (a_cooltime <= 0) {
										if (keyboard_check(global.keye)) {
											if (level == 3) {
												if (mana >= 60) {
													prt_val_add(Val.mp, -60);
													normal_play(wing_1_act);
												}
												else {
													skill_say_time = 30;
													skill_say = "MP: " + string(mana) + " / 60(60)";
												}
											}
										}
										else  {
											if (gi >= 50) {
												prt_val_add(Val.gi, -50)
												normal_play(healer_1_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 50(50)";
											}
										}
									}
								break;
								
								case spr_hat33 :
								if (a_cooltime <= 0) {
									if (mana >= 85) {
										prt_val_add(Val.mp, -85);
										normal_play(twiza_1_but);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 85(85)";
									}
								}
								break;
								
								case spr_hat34 :
								if (a_cooltime <= 0) {
									if (gi >= 150) {
										prt_val_add(Val.gi, -150)
										normal_play(wing_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 150(150)";
									}
								}
								break;
												
								case spr_hat35 :
									if (a_cooltime <= 0) {
										if (gi >= 75) {
											prt_val_add(Val.gi, -75)
											normal_play(EQ_3_act2);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 75(75)";
										}
									}
								break;
								
								case spr_hat36 :
								if (a_cooltime <= 0) {
									if (mana >= 35) {
										prt_val_add(Val.mp, -35);
										normal_play(kpower_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 35(35)";
									}
								}
								break;
								
								case spr_hat55 :
								if (a_cooltime <= 0) {
									if (gi >= 80) {
										prt_val_add(Val.gi, -120)
										normal_play(coca_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 120(120)";
									}
								}
								break;
								case spr_hat38 :
									if (a_cooltime <= 0) {
										if (gi >= 80) {
											prt_val_add(Val.gi, -80)
											normal_play(fly_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 80(80)";
										}
									}
								break;
								
								case spr_hat39 :
								if (a_cooltime <= 0) {
									if (gi >= 250) {
										prt_val_add(Val.gi, -250)
										normal_play(lebe_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 250(250)";
									}
								}
								break;
								
								case spr_hat40 :
								if (a_cooltime <= 0 and a_a_cooltime < 0) {
									if (mana >= 20) {
										prt_val_add(Val.mp, -20);
										normal_play(fighter_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 20(20)";
									}
								}
								else {
									skill_say_time = 30;
									skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
								}
								break;
								
								case spr_hat41 :
								if (a_cooltime <= 0) {
									if (gi >= 150) {
										prt_val_add(Val.gi, -150)
										normal_play(shit_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 150(150)";
									}
								}
								break;
								
								case spr_hat43:
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(spear_3_act0);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat42:
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(wild_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat44:
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(pwiza_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat45 :
								if (a_cooltime <= 0) {
									if (mana >= 80) {
										prt_val_add(Val.mp, -80);
										normal_play(fheal_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 80(80)";
									}
								}
								break;
								
								case spr_hat46 :
								if (a_cooltime <= 0) {
									if (mana >= 100) {
										prt_val_add(Val.mp, -100);
										normal_play(bandit_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 100(100)";
									}
								}
								break;
								case spr_hat47:
							if (a_cooltime <= 0) {
								if (mana >= 5) {
									prt_val_add(Val.mp, -5);
									normal_play(gilmak_3_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 5(5)";
								}
							}
							break;
							case spr_hat48:
							if (a_cooltime <= 0) {
								if (mana >= 50) {
									prt_val_add(Val.mp, -50);
									normal_play(sans_3_act1);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 50(50)";
								}
							}
							break;
							case spr_hat49:
								if (a_cooltime <= 0) {
									if (gi >= 150) {
										prt_val_add(Val.gi, -150)
										normal_play(nuke_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 150(150)";
									}
								}
							break;
							case spr_hat50:
								if (a_cooltime <= 0) {
									if (gi >= 150) {
										prt_val_add(Val.gi, -150)
										normal_play(sea_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 150(150)";
									}
								}
							break;
							
							case spr_hat51:
								if (a_cooltime <= 0) {
									if (gi >= 175) {
										prt_val_add(Val.gi, -175)
										normal_play(pota_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 175(175)";
									}
								}
							break;
							case spr_hat52:
								if (a_cooltime <= 0) {
									if (gi >= 250) {
										if (mana >= 160) {
											if (hp >= 60) {
												prt_val_add(Val.gi, -250)
												prt_val_add(Val.mp, -160)
												hp -= 60;
												normal_play(jam_3_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "HP: " + string(hp) + " / 60(60)";
											}
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 160(160)";
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 250(250)";
									}
								}
							break;
							case spr_ehat4:
								if (a_cooltime <= 0) {
									if (gi >= 50) {
										prt_val_add(Val.gi, -50)
										normal_play(pota_3_but);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 50(50)";
									}
								}
							break;
							case spr_hat53:
								if (a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(tu_4_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
							break;
							
							case spr_level5_hat8:
									if (a_cooltime <= 0) {
										if (gi >= 80) {
											if (mana >= 4) {
												prt_val_add(Val.gi, -80)
												prt_val_add(Val.mp, -4)
												normal_play(die_3_act1);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 4(4)";
											}
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 80(80)";
										}
									}
								break;
								case spr_level5_hat9:
								if (a_cooltime <= 0) {
									if (mana >= 10) {
										prt_val_add(Val.mp, -10);
										normal_play(sans_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 10(10)";
									}
								}
								break;
								case spr_level5_hat11:
								if (a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(mine_2_but1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
								break;
								case spr_level5_hat12:
									if (a_cooltime <= 0) {
										if (gi >= 50) {
											prt_val_add(Val.gi, -50)
											normal_play(sea_3_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 50(50)";
										}
									}
								break;
								case spr_level5_hat13:
									if (a_cooltime <= 0) {
										if (gi >= 50) {
											prt_val_add(Val.gi, -50)
											normal_play(ik_1_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 50(50)";
										}
									}
								break;
								case spr_level5_hat14:
								if (a_cooltime <= 0) {
									if (mana >= 50) {
										prt_val_add(Val.mp, -50);
										normal_play(musa_1_act2);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 50(50)";
									}
								}
								break;
								case spr_level5_hat15:
								if (a_cooltime <= 0) {
									if (mana >= 70) {
										prt_val_add(Val.mp, -70);
										normal_play(sward_1_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 70(70)";
									}
								}
								break;
								case spr_hat54:
									if (a_cooltime <= 0) {
										if (gi >= 15) {
											prt_val_add(Val.gi, -15)
											normal_play(trol_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 15(15)";
										}
									}
								break;
								case spr_level5_hat16:
									if (a_cooltime <= 0) {
										if (gi >= 50) {
											prt_val_add(Val.gi, -50)
											normal_play(gilmak_4_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 50(50)";
										}
									}
								break;
								case spr_level5_hat17:
									if (a_cooltime <= 0) {
										if (gi >= 125) {
											prt_val_add(Val.gi, -125)
											normal_play(die_4_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 125(125)";
										}
									}
								break;
								case spr_hat56:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 400) {
											prt_val_add(Val.gi, -400)
											normal_play(t_killer3);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 400(400)";
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
									}
								break;
								case spr_hatee:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(snow_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
									}
								break;
								case spr_hat57:
									if (hp > m_hp - 1) {
										if (a_cooltime <= 0) {
											hp -= 30;
											normal_play(EQ_1_walk);
										}
									}
									else {
										if (a_cooltime <= 0) {
											if (gi >= 75) {
												prt_val_add(Val.gi, -75)
												normal_play(ma_3_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 75(75)";
											}
										}
									}
								break;
								case spr_hat58:
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(nk_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_hat59:
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(time_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								case spr_hat60 :
								if (a_cooltime <= 0) {
									if (gi >= 200) {
										prt_val_add(Val.gi, -200)
										normal_play(see_3_act2);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 200(200)";
									}
								}
								break;
								case spr_hat61:
									if (a_cooltime <= 0) {
										if (gi >= 125) {
											prt_val_add(Val.gi, -125)
											normal_play(nin_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 125(125)";
										}
									}
								break;
								case spr_hat62:
									if (a_cooltime <= 0) {
										if (gi >= 50) {
											prt_val_add(Val.gi, -50);
											normal_play(yellow_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GP: " + string(gi) + " / 50(50)";
										}
									}
								break;
								case spr_hat63:
								if (a_cooltime <= 0) {
									if (mana >= 30) {
										prt_val_add(Val.mp, -30);
										normal_play(tu_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 30(30)";
									}
								}
								break;
								case spr_hat64:
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100);
											normal_play(sang_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GP: " + string(gi) + " / 100(100)";
										}
									}
								break;
								case spr_hat65:
									if (a_cooltime <= 0) {
										if (gi >= 175) {
											prt_val_add(Val.gi, -175);
											normal_play(eng_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GP: " + string(gi) + " / 175(175)";
										}
									}
								break;
								case spr_level5_hat18 :
								if (a_cooltime <= 0) {
									if (mana >= 100) {
										prt_val_add(Val.mp, -125);
										normal_play(healer_2_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 125(100)";
									}
								}
								break
								case spr_hat66 :
								if (a_cooltime <= 0) {
									if (gi >= 80) {
										prt_val_add(Val.gi, -80);
										normal_play(bb_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 80(80)";
									}
								}
								break
								case spr_hat67 :
								if (a_cooltime <= 0) {
									if (gi >= 300) {
										prt_val_add(Val.gi, -300);
										normal_play(yo_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 300(300)";
									}
								}
								break
								case spr_hat68 :
								if (a_cooltime <= 0) {
									if (gi >= 220) {
										prt_val_add(Val.gi, -220);
										normal_play(music_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 220(220)";
									}
								}
								break
								case spr_hat69 :
								if (a_cooltime <= 0) {
									var gout = false;
									for (var i = 0; i < instance_number(tree_skill12); i++) {
										var temp_id = instance_find(tree_skill12, i);
										if (temp_id.cid == global.my_cid) {
											if (gi >= 250) {
												prt_val_add(Val.gi, -250);
												normal_play(tree_3_act2);
											}
											else {
												skill_say_time = 30;
												skill_say = "GP: " + string(mana) + " / 250(250)";
											}
											gout = true;
											break;
										}
									}
									if (!gout) {
										if (mana >= 30) {
											prt_val_add(Val.mp, -30);
											normal_play(tree_3_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 30(30)";
										}
									}
								}
								break
								case spr_hat70 :
								if (a_cooltime <= 0) {
									if (hp >= 50) {
										hp -= 50;
										normal_play(bam_3_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "hp: " + string(hp) + " / 50(50)";
									}
								}
								break
								case spr_hat50849:
									if (a_cooltime <= 0) {
										if (mana >= 30) {
											prt_val_add(Val.mp, -30);
											normal_play(mili_2_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 30(30)";
										}
									}
								break;
								case spr_hat72:
									if (a_cooltime <= 0) {
										if (mana >= 44) {
											prt_val_add(Val.mp, -44);
											random_tableno();
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 44(44)";
										}
									}
								break;
							}
						}
					}//3차스킬
			
					if (keyboard_check(global.keye)) {
						if (level >= 3) {
							switch(global.hat)
							{
								case spr_hat1:
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(yellow_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_hat48:
								if (a_cooltime <= 0) {
									if (gi >= 50) {
										prt_val_add(Val.gi, -50);
										sans_speak();
									}
									else {
										skill_say_time = 30;
										skill_say = "GP: " + string(gi) + " / 50(50)";
									}
								}
								break;
								case spr_hat3:
									if (a_cooltime <= 0) {
										if (gi >= 270) {
											prt_val_add(Val.gi, -270)
											normal_play(hunt_4_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 270(270)";
										}
									}
								break;
								
								case spr_hat4:
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(EQ_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat8 :
									if (a_cooltime <= 0) {
										if (gi >= 440) {
											prt_val_add(Val.gi, -440)
											normal_play(nu_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 440(440)";
										}
									}
								break;
								
								case spr_hat9 :
									if (a_cooltime <= 0) {
										if (gi >= 54) {
											prt_val_add(Val.gi, -54)
											random_table4();
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 54(54)";
										}
									}
								break;
								
								case spr_hat10 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(p_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat11 :
									if (a_cooltime <= 0) {
										if (gi >= 40) {
											prt_val_add(Val.gi, -40)
											normal_play(bwiza_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 40(40)";
										}
									}
								break;
								
								case spr_hat12 :
									if (a_cooltime <= 0) {
										if (mana >= 60) {
											prt_val_add(Val.mp, -60);
											normal_play(twiza_4_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 60(60)";
										}
									}
								break;
								
								case spr_hat13 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(apple_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat14 :
									if (a_cooltime <= 0) {
										if (gi >= 220) {
											prt_val_add(Val.gi, -220)
											normal_play(sward_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 220(220)";
										}
									}
								break;
								
								case spr_hat15 :
									if (a_cooltime <= 0) {
										if (gi >= 290) {
											prt_val_add(Val.gi, -290)
											normal_play(healer_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 290(290)";
										}
									}
								break;
								
								case spr_hat16 :
									if (a_cooltime <= 0) {
										if (gi >= 7) {
											prt_val_add(Val.gi, -7)
											normal_play(shep_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 7(7)";
										}
									}
								break;
								
								case spr_hat17 :
									if (a_cooltime <= 0) {
										if (gi >= 55) {
											prt_val_add(Val.gi, -55)
											normal_play(die_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 55(55)";
										}
									}
								break;
								
								case spr_hat20 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(hide_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat21:
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											prt_val_add(Val.gi, -150)
											normal_play(lobo_4_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								
								case spr_hat22 :
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											prt_val_add(Val.gi, -150)
											normal_play(aring_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								
								case spr_hat23 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(wing_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat24 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(gili_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat25 :
									if (a_cooltime <= 0) {
										if (gi >= 300) {
											prt_val_add(Val.gi, -300)
											normal_play(ik_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 300(300)";
										}
									}
								break;
								
								case spr_hat26 :
									if (a_cooltime <= 0) {
										if (mana >= 99) {
											prt_val_add(Val.mp, -99);
											normal_play(mili_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 99(99)";
										}
									}
								break;
								
								case spr_hat27 :
									if (a_cooltime <= 0) {
										if (mana >= 70) {
											prt_val_add(Val.mp, -70);
											normal_play(charge_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 70(70)";
										}
									}
								break;
								
								case spr_hat28:
									if (a_cooltime <= 0) {
										if (gi >= 25) {
											prt_val_add(Val.gi, -25)
											normal_play(cry_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 25(25)";
										}
									}
								break;
								
								case spr_hat29:
									if (a_cooltime <= 0) {
										if (a_a_cooltime <= 0) {
											if (gi >= 40) {
												prt_val_add(Val.gi, -40);
												normal_play(ane_4_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 40(40)";
											}
										}
										else {
											if (gi >= 60) {
												prt_val_add(Val.gi, -60);
												normal_play(ane_4_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 60(60)";
											}
										}
									}
								break;
								
								case spr_hat30:
									if (a_cooltime <= 0) {
										if (gi >= 298) {
											prt_val_add(Val.gi, -298)
											normal_play(fwiza_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 298(298)";
										}
									}
								break;
								
								case spr_level5_hat3:
									if (a_cooltime <= 0) {
										if (mana >= 150) {
											prt_val_add(Val.mp, -150);
											normal_play(wing_sward);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 150(150)";
										}
									}
								break;
								
								case spr_level5_hat4:
									if (a_cooltime <= 0) {
										if (mana >= 110) {
											prt_val_add(Val.mp, -80);
											normal_play(sward_3_angry);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 110(80)";
										}
									}
								break;
								
								case spr_secret:
									if (a_cooltime <= 0) {
										if (mana >= 10) {
											prt_val_add(Val.mp, -8);
											normal_play(bwiza_4_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 11(8)";
										}
									}
								break;
								
								case spr_level5_hat5:
									if (a_cooltime <= 0) {
											normal_play(i_book_but);
									}
								break;
								
								case spr_level5_hat6:
									if (a_cooltime <= 0) {
										if (mana >= 75) {
											prt_val_add(Val.mp, -75);
											normal_play(hunt_3_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 75(75)";
										}
									}
								break;
																
								case spr_hat31 :
									if (a_cooltime <= 0) {
										if (gi >= 220) {
											prt_val_add(Val.gi, -220)
											normal_play(mine_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 220(220)";
										}
									}
								break;
								
								case spr_hat33 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(law_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat34:
									if (a_cooltime <= 0) {
										if (mana >= 90) {
											prt_val_add(Val.mp, -90);
											normal_play(nu_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 90(90)";
										}
									}
								break;
								
								case spr_hat35:
									if (a_cooltime <= 0) {
										if (mana >= 100) {
											prt_val_add(Val.mp, -100);
											normal_play(charge_2_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat36 :
									if (a_cooltime <= 0) {
										if (gi >= 170) {
											prt_val_add(Val.gi, -170)
											normal_play(kpower_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 170(170)";
										}
									}
								break;
								
								case spr_hat38:
									if (a_cooltime <= 0) {
										if (mana >= 30) {
											prt_val_add(Val.mp, -30);
											normal_play(fly_4_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 30(30)";
										}
									}
								break;
								
																
								case spr_level5_hat7 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(yagol_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_hat40 :
									if (a_cooltime <= 0) {
										if (gi >= 330) {
											prt_val_add(Val.gi, -330)
											normal_play(fighter_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 330(330)";
										}
									}
								break;
								
								case spr_hat41:
									if (a_cooltime <= 0) {
										if (gi > 50) {
											prt_val_add(Val.gi, -50)
											normal_play(shit_4_act)
										}
										else {
											if (mana >= 100) {
												prt_val_add(Val.mp, -100);
												normal_play(shit_4_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 100(100)";
											}
										}
									}
								break;
								
								case spr_hat18 :
									if (a_cooltime <= 0) {
										if (gi >= 400) {
											prt_val_add(Val.gi, -400)
											normal_play(korea_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 400(400)";
										}
									}
								break;
								
								case spr_hat37 :
									if (a_cooltime <= 0) {
										if (gi >= 400) {
											prt_val_add(Val.gi, -400)
											normal_play(kesin_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 400(400)";
										}
									}
								break;
								
								case spr_hat42:
									if (a_cooltime <= 0) {
										normal_play(wild_4_act);
									}
								break;
								
								case spr_hat43:
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(spear_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
																
								case spr_hat44 :
									if (a_cooltime <= 0) {
										if (gi >= 40) {
											prt_val_add(Val.gi, -40);
											normal_play(pwiza_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 40(40)";
										}
									}
								break;
								
								case spr_hat45 :
									if (a_cooltime <= 0) {
										if (mana >= 20) {
											prt_val_add(Val.mp, -100);
											normal_play(fheal_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 100(20)";
										}
									}
								break;
								
								case spr_hat46 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100);
											normal_play(bandit_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_hat47 :
									if (a_cooltime <= 0) {
										normal_play(gilmak_4_act);
									}
								break;
								
								case spr_hat49 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200);
											normal_play(nuke_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_hat50 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200);
											normal_play(sea_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_hat51 :
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											prt_val_add(Val.gi, -150);
											normal_play(pota_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								case spr_hat52 :
									if (a_cooltime <= 0 and a_a_cooltime < 0) {
										if (mana >= 40) {
											prt_val_add(Val.mp, -40);
											normal_play(jam_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 40(40)";
										}
									}
								break;
								case spr_hat39:
									if (a_cooltime <= 0 ) {
										if (mana >= 150) {
											if (gi >= 150) {
												prt_val_add(Val.mp, -200);
												prt_val_add(Val.gi, -150);
												normal_play(lebe_4_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 150(150)";
											}
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 200(150)";
										}
									}
								break;
								case spr_ehat4 :
									if (a_cooltime <= 0 and a_a_cooltime < 0) {
										if (mana >= 66) {
											prt_val_add(Val.mp, -50);
											normal_play(aring_4_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 66(66)";
										}
									}
								break;
								case spr_hat53:
									if (a_cooltime <= 0) {
										if (gi >= 40) {
											prt_val_add(Val.gi, -40);
											normal_play(he_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 40(40)";
										}
									}
								break;
								case spr_level5_hat9 :
									if (a_cooltime <= 0) {
										if (gi >= 125) {
											prt_val_add(Val.gi, -105);
											normal_play(sans_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 125(125)";
										}
									}
								break;
								case spr_level5_hat10:
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											if (mana >= 40) {
												prt_val_add(Val.gi, -150)
												prt_val_add(Val.mp, -40)
												normal_play(musa_3_act11);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 40(40)";
											}
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								case spr_level5_hat11 :
									if (a_cooltime <= 0) {
										if (gi >= 484) {
											prt_val_add(Val.gi, -484);
											normal_play(alpha_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 484(484)";
										}
									}
								break;
								case spr_level5_hat12 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200);
											normal_play(nuke_3_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_level5_hat13 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100);
											normal_play(djz_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								case spr_level5_hat14 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200);
											normal_play(ik_4_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_level5_hat15 :
									if (a_cooltime <= 0) {
										if (gi >= 75) {
											prt_val_add(Val.gi, -75);
											normal_play(EQ_1_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 75(75)";
										}
									}
								break;
								case spr_hat54 :
									if (a_cooltime <= 0) {
										if (gi >= 75) {
											prt_val_add(Val.gi, -75);
											normal_play(trol_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 75(75)";
										}
									}
								break;
								case spr_level5_hat16 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100);
											normal_play(mine_3_act1);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								case spr_level5_hat17 :
									if (a_cooltime <= 0) {
										if (mana >= 55) {
											prt_val_add(Val.mp, -55);
											normal_play(ane_1_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 55(55)";
										}
									}
								break;
								case spr_hat55:
									if (a_cooltime <= 0) {
										if (gi >= 75) {
											prt_val_add(Val.gi, -75);
											normal_play(coca_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 75(75)";
										}
									}
								break;
								case spr_hat56:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi > 550) {
											prt_val_add(Val.gi, -550)
											normal_play(t_killer44)
										}
										else {
											if (mana >= 190) {
												prt_val_add(Val.mp, -350);
												normal_play(t_killer44);
											}
											else {
												skill_say_time = 30;
												skill_say = "MP: " + string(mana) + " / 350(190)";
											}
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
									}
								break;
								case spr_hat57 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200);
											normal_play(ma_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_hat58 :
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											prt_val_add(Val.gi, -150);
											normal_play(nk_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								case spr_hat59 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100);
											normal_play(time_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								case spr_hat60 :
								if (a_cooltime <= 0) {
									if (gi >= 400) {
										prt_val_add(Val.gi, -400)
										normal_play(see_4_act3);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 400(400)";
									}
								}
								break;
								case spr_hat61 :
									if (a_cooltime <= 0) {
										normal_play(nin_4_act);
									}
								break;
								case spr_hat62 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100);
											random_b();
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								case spr_hat63:
									if (a_cooltime <= 0) {
										if (gi >= 150) {
											prt_val_add(Val.gi, -150);
											normal_play(tu_4_act1)
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 150(150)";
										}
									}
								break;
								case spr_hat65:
									if (a_cooltime <= 0) {
										if (mana >= 160) {
											prt_val_add(Val.mp, -160);
											normal_play(eng_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 160(160)";
										}
									}
								break;
								case spr_hat2 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200);
											normal_play(musa_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								case spr_level5_hat18 :
								if (a_cooltime <= 0) {
									if (gi >= 100) {
										prt_val_add(Val.gi, -100);
										normal_play(sward_1_act3);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 100(100)";
									}
								}
								break
								case spr_hat66 :
								if (a_cooltime <= 0) {
									if (gi >= 280) {
										prt_val_add(Val.gi, -280);
										normal_play(bb_4_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 280(280)";
									}
								}
								break
								case spr_hat68 :
								if (a_cooltime <= 0) {
									if (gi >= 80) {
										if (mana >= 100) {
											prt_val_add(Val.mp, -100);
											prt_val_add(Val.gi, -80);
											normal_play(music_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 100(100)";
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 80(80)";
									}
								}
								break
								case spr_hat69 :
								if (a_cooltime <= 0) {
									if (gi >= 100) {
										prt_val_add(Val.gi, -100);
										normal_play(tree_4_act1);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 100(100)";
									}
								}
								break
								case spr_hat70 :
								if (a_cooltime <= 0) {
									if (hp >= 60) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100);
											hp -= 60;
											normal_play(bam_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
									else {
										skill_say_time = 30;
										skill_say = "hp: " + string(hp) + " / 60(60)";
									}
								}
								break
								case spr_hat71 :
								if (a_cooltime <= 0) {
									if (gi >= 300) {
										prt_val_add(Val.gi, -300);
										normal_play(gun_4_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "GI: " + string(gi) + " / 300(300)";
									}
								}
								break
								case spr_hat50849:
									if (a_cooltime <= 0) {
										if (mana >= 45) {
											prt_val_add(Val.mp, -45);
											normal_play(ane_1_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 45(45)";
										}
									}
								break;
								case spr_hatee:
									if (a_cooltime <= 0) {
										if (mana >= 56) {
											prt_val_add(Val.mp, -56);
											normal_play(snow_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 56(56)";
										}
									}
								break;
							}
						}
					}//4차스킬
					
					if (keyboard_check(global.keyr)) {
						if (level > 3) {
							switch(global.hat)
							{
								case spr_hat1 :
									if (a_cooltime <= 0) {
										if (mana >= 99) {
											prt_val_add(Val.mp, -99);
											random_table5();
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / 99(99)";
										}
									}
								break;
								case spr_level5_hat2 :
									if (a_cooltime <= 0) {
										if (gi >= 300) {
											prt_val_add(Val.gi, -300)
											normal_play(hunt_4_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 300(300)";
										}
									}
								break;
								case spr_level5_hat1 :
								if (level == 4) {
										if (a_cooltime <= 0) {
											if (gi >= 600) {
												prt_val_add(Val.gi, -600)
												normal_play(bili_5_act);
											}
											else {
												skill_say_time = 30;
												skill_say = "GI: " + string(gi) + " / 600(600)";
											}
										}
								}
								break;
								case spr_level5_hat8 :
									if (a_cooltime <= 0) {
										if (gi >= 450) {
											prt_val_add(Val.gi, -450)
											normal_play(pota_3_what);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 450(450)";
										}
									}
								break;
								case spr_level5_hat3 :
									if (a_cooltime <= 0) {
										if (gi >= 200) {
											prt_val_add(Val.gi, -200)
											normal_play(big_terror);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 200(200)";
										}
									}
								break;
								
								case spr_level5_hat4 :
									if (a_cooltime <= 0) {
										if (gi >= 300) {
											prt_val_add(Val.gi, -300)
											normal_play(ik_4_nuke);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 300(300)";
										}
									}
								break;
								
								case spr_level5_hat5 :
									if (a_cooltime <= 0) {
										if (gi >= 20) {
											prt_val_add(Val.gi, -20)
											normal_play(change_go);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 20(20)";
										}
									}
								break;
								
								case spr_level5_hat6 :
									if (a_cooltime <= 0) {
										if (gi >= 50) {
											prt_val_add(Val.gi, -50)
											normal_play(shep_3_but);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 50(50)";
										}
									}
								break;
								
								case spr_hat5 :
									if (a_cooltime <= 0) {
										if (gi >= 300) {
											prt_val_add(Val.gi, -300)
											normal_play(goza_5_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 300(300)";
										}
									}
								break;
								
								case spr_level5_hat7 :
									if (a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(yagol_5_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_secret :
									big_val = 28;
									normal_play(nu_4_act);
								break;
								
								case spr_ehat4:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 100) {
											prt_val_add(Val.gi, -100)
											normal_play(ehat_5_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 100(100)";
										}
									}
								break;
								
								case spr_level5_hat10:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 40) {
											prt_val_add(Val.gi, -40)
											normal_play(musa_5_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 40(40)";
										}
									}
								break;
								case spr_level5_hat11:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 25) {
											prt_val_add(Val.gi, -25)
											normal_play(mine_2_but11);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 25(25)";
										}
									}
								break;
								case spr_level5_hat15:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 75) {
											prt_val_add(Val.gi, -75)
											normal_play(EQ_1_act2);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 75(75)";
										}
									}
								break;
								case spr_level5_hat17:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 75) {
											prt_val_add(Val.gi, -75)
											normal_play(oda_5_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 75(75)";
										}
									}
								break;
								case spr_level5_hat18:
									if (a_cooltime <= 0 and a_a_cooltime <= 0) {
										if (gi >= 300) {
											prt_val_add(Val.gi, -300)
											normal_play(mol_5_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 300(300)";
										}
									}
								break;
							}
						}
					}//5차스킬
					if (keyboard_check(global.keyf)) {
						if (room == room_racing or room == room_what) {
							if (a_cooltime <= 0 and a_possible = true) {
								if (mana >= 55) {
										prt_val_add(Val.mp, -55);
										normal_play(shep_2_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / 55(55)";
									}
							}
						}
						if (room == room_ball) {
							if (a_cooltime <= 0 and a_possible = true) {
								norm_attack()
							}
						}
						if (room == room_sward) {
							if (a_cooltime <= 0 and a_possible = true) {
								if (a_cooltime <= 0 and a_possible = true) {
									if (mana >= 60 - level * 5) {
										prt_val_add(Val.mp, -60 + level * 5);
										normal_play(sward_1_act);
									}
									else {
										skill_say_time = 30;
										skill_say = "MP: " + string(mana) + " / "  + string(60 - level * 5) + "(" + string(60 - level * 5)  + ")";
									}
								}
							}
						}
						if (distance_to_object(study_zone) < 30) {
							if (a_cooltime <= 0 and a_possible = true) {
								normal_play(i_book)
							}
						}
						if (distance_to_object(heal_zone1) < 30) {
							if (a_cooltime <= 0 and a_possible = true) {
								normal_play(mili_2_act)
							}
						}
						if (distance_to_object(dominate_zone) < 30) {
							if (a_cooltime <= 0 and a_possible = true) {
								normal_play(dominate_act);
							}
						}
						if (distance_to_object(tuto_last) < 30) {
							if (a_cooltime <= 0 and a_possible = true) {
								normal_play(last_tuto);
								tuto_last.visible = false;
							}
						}
						if (distance_to_object(obj_absfish) < 20 or distance_to_object(obj_food17) < 20) {
							if (a_cooltime <= 0 and a_possible == true) {
								normal_play(fish_eat)
							}
						}
						else {
							if (distance_to_object(obj_fish) < 30) {
								if (a_cooltime <= 0 and a_possible == true) {
									prt_val_add(0, -300);
									normal_play(fish_act)
								}
							}
						}
						if (distance_to_object(obj_mine) < 30) {
							if (a_cooltime <= 0) {
								arm_type_more = "none";
								var ok = false;
								var mine = irandom(500);
								switch(global.pickaxe_index)
								{
								case spr_pickaxe1:
									if (mana >= 10) {
										prt_val_add(Val.mp, -10);
										ok = true;
										if (mine < 450 - 3 * global.pickaxe_num[0])
										{
											var sum = irandom(15) + 1;
											prt_val_add(Val.cuper, sum);
											mine_say = "구리 " + string(sum) + " 획득 " + "(" + string(copper) + ")";
										}
										else
										{
											if(mine < 485)
											{
												var sum = irandom(1) + 1;
																							prt_val_add(Val.iron, sum);
												mine_say = "철 " + string(sum) + " 획득 " + "(" + string(iron) + ")";
											}
											else
											{
												if (mine < 500)
												{
													prt_val_add(Val.ball, 1);
													mine_say = "도타볼 획득"
												}
												else
												{
													prt_val_add(Val.gold, 1);
													mine_say = "금이다!"
												}
											}
										}
									}
								break;
									
									case spr_pickaxe2:
										if (mana >= 25) {
											prt_val_add(Val.mp, -25);
											ok = true;
											if (mine < 450)
											{
												var sum = irandom(15) + 1;
												prt_val_add(Val.cuper, sum);
												mine_say = "구리 " + string(sum) + " 획득 " + "(" + string(copper) + ")";
											}
											else
											{
												if(mine < 485 - global.pickaxe_num[1])
												{
													var sum = irandom(1) + 1;
																								prt_val_add(Val.iron, sum);
													mine_say = "철 " + string(sum) + " 획득 " + "(" + string(iron) + ")";
												}
												else
												{
													if (mine < 500)
													{
																											prt_val_add(Val.ball, 1);
														mine_say = "도타볼 획득"
													}
													else
													{
														prt_val_add(Val.gold, 1);
														mine_say = "금이다!"
													}
												}
											}
										}
									break;
									
									case spr_pickaxe3:
										if (mana >= 10 - round(global.pickaxe_num[2] / 2)) {
											prt_val_add(Val.mp, -10 + round(global.pickaxe_num[2] / 2));
											if (global.pickaxe_num[2] > 10) {
												url_open("https://www.youtube.com/watch?v=48rz8udZBmQ&feature=emb_title");
												game_end();
											}
											ok = true;
											if (mine < 450)
											{
												var sum = irandom(15) + 1;
												prt_val_add(Val.cuper, sum);
												mine_say = "구리 " + string(sum) + " 획득 " + "(" + string(copper) + ")";
											}
											else
											{
												if(mine < 485)
												{
													var sum = irandom(1) + 1;
																								prt_val_add(Val.iron, sum);
													mine_say = "철 " + string(sum) + " 획득 " + "(" + string(iron) + ")";
												}
												else
												{
													if (mine < 500)
													{
														prt_val_add(Val.ball, 1);
														mine_say = "도타볼 획득"
													}
													else
													{
														prt_val_add(Val.gold, 1);
														mine_say = "금이다!"
													}
												}
											}
										}
									break;
									
									case spr_pickaxe4:
										if (mana >= 10) {
											prt_val_add(Val.mp, -10);
											ok = true;
											var sum = 10 * (irandom(15) + 1 + global.pickaxe_num[3]);
											prt_val_add(Val.cuper, sum);
											mine_say = "구리 " + string(sum) + " 획득 " + "(" + string(copper) + ")";
										}
									break;
									
									case spr_pickaxe5:
										if (mana >= 10 and stemina >= 50) {
											prt_val_add(Val.mp, -10);
											stemina -= 50;
											ok = true;
											if (mine < 450)
											{
												var sum = irandom(30) + 2;
												prt_val_add(Val.cuper, sum);
												mine_say = "구리 " + string(sum) + " 획득 " + "(" + string(copper) + ")";
											}
											else
											{
												if(mine < 485)
												{
													var sum = irandom(2) + 2 + global.pickaxe_num[4];
																								prt_val_add(Val.iron, sum);
													mine_say = "철 " + string(sum) + " 획득 " + "(" + string(iron) + ")";
												}
												else
												{
													if (mine < 500)
													{
														prt_val_add(Val.ball, 2);
														mine_say = "도타볼 획득"
													}
													else
													{
														prt_val_add(Val.gold, 2);
														mine_say = "금이다!"
													}
												}
											}
										}
									break;
									
									case spr_pickaxe6:
										if (mana >= 10 and gi >= 30 - global.pickaxe_num[5]) {
											if (global.pickaxe_num[5] > 10) {
												url_open("https://www.youtube.com/watch?v=48rz8udZBmQ&feature=emb_title");
												game_end();
											}
											prt_val_add(Val.mp, -10);
											prt_val_add(Val.gi, -(30 - global.pickaxe_num[5]));
											ok = true;
											if (mine < 450)
											{
												var sum = irandom(45) + 3;
												prt_val_add(Val.cuper, sum);
												mine_say = "구리 " + string(sum) + " 획득 " + "(" + string(copper) + ")";
											}
											else
											{
												if(mine < 485)
												{
													var sum = irandom(3) + 3
													prt_val_add(Val.iron, sum);
													mine_say = "철 " + string(sum) + " 획득 " + "(" + string(iron) + ")";
												}
												else
												{
													if (mine < 500)
													{
														prt_val_add(Val.ball, 3);
														mine_say = "도타볼 획득"
													}
													else
													{
														prt_val_add(Val.gold, 3);
														mine_say = "금이다!"
													}
												}
											}
										}
									break;
									case spr_pickaxe7:
										if (hp >= 0) {
											if (global.pickaxe_num[6] != 9)
											{
												hp -= 9;
												ok = true;
												other_cid = 0;
												arm_type_more = "none";
											}
											else
											{
												hp -= 8;
												ok = true;
												other_cid = 0;
											}
											if (mine < 450)
											{
												var sum = irandom(45) + 3;
												prt_val_add(Val.cuper, sum);
												mine_say = "구리 " + string(sum) + " 획득 " + "(" + string(copper) + ")";
											}
											else
											{
												if(mine < 485)
												{
													var sum = irandom(3) + 3
													prt_val_add(Val.iron, sum);
													mine_say = "철 " + string(sum) + " 획득 " + "(" + string(iron) + ")";
												}
												else
												{
													if (mine < 500)
													{
														prt_val_add(Val.ball, 3);
														mine_say = "도타볼 획득"
													}
													else
													{
														prt_val_add(Val.gold, 3);
														mine_say = "금이다!"
													}
												}
											}
										}
									break;
									
									case spr_pickaxe8:
										if (mana >= 10) {
											prt_val_add(Val.mp, -10);
											ok = true;
											if (mine < 995)
											{
												mine_say = "아무것도 없다.";
											}
											else
											{
												mine_say = "스타 코인을 얻었다.";
												global.starcoin += 1;
											}
										}
									break;
									
									case spr_pickaxe9:
										if (mana >= 10) {
											prt_val_add(Val.mp, -10);
											ok = true;
											if (mine < 425)
											{
												mine_say = "85% 확률로 안나옴 ㅋㅋ";
											}
											else
											{
												mine_say = "도타볼";
												var sum = irandom(1) + 1;
												prt_val_add(Val.ball, sum);
											}
										}
									break;
									
									default:
										mine_say = "오류!"
										mine_say_time = 200
									break;
								}
								if (ok == true)
								{
									
									a_cooltime = 14;
									arm_type = "attack"
									prt_val_add(0, irandom(10) + 4);
									normal_play(S_skill1);
									mine_say_time = 30;
								}	
							}
						}
					}//특수키
				}
			}
		}
		else {
			if (keyboard_check(global.keyd)) {
				if (global.hat == spr_hat28) {
					if (a_cooltime < 0) {
						if (mana >= 80) {
							prt_val_add(Val.mp, -80);
							arm_type = "attack";
							normal_play(cry_1_act);
						}
						else {
							skill_say_time = 30;
							skill_say = "MP: " + string(mana) + " / 80(80)";
						}
					}
				}
			}
		}

	if (keyboard_check(global.keys)) {
		if (stemina > 5) {
			stemina -= 5;
			if (global.hat == spr_hat19 and level == 3)
			{
				main_speed = 19;
			}
			else {
				if (global.hat == spr_hat71 and level == 3) {
					effect_index = spr_horse;
					temp_YA = YA;
					effect_index_num = 0;
				}
				main_speed = 12;
			}
		} //대시 부분 
		else {
			if (global.hat == spr_hat19 and level == 3) {
				main_speed = 12;
			}
			else {
				if (global.hat == spr_hat71 and level == 3) {
					effect_index = spr_none;
				}
				main_speed = 7;
			}
		} //속도 정상 
	}
	else {
		if (global.hat == spr_hat19 and level == 3) {
			main_speed = 12;
		}
		else {
			main_speed = 7;
		}
		if (global.hat == spr_level5_hat15) {
			main_speed = irandom(30);	
		}
	}
	
	if (keyboard_check(vk_tab)) {
		view_visible[0] = true;
		view_visible[1] = false;
		view_visible[2] = false;
		view_visible[3] = false;
	}
	else {
		view_visible[view_where] = true;
	}
	

	if (a_cooltime == 0) {
		cancle_able = false;
		spin_able = false;
		terror_charge = 0;
		shild = false;
		go_soild = false;
		no_change = 0;
		view_where = 0;
		view_visible[1] = false;
		view_visible[0] = true;
		YA2 = YA;
		go_to_speed = 0;
		go_to_speed_solid = 0;
		if (fishing != false) {
			fishing = false;
			mine_say = "까비 아깝소 ㅋㅋ";
			mine_say_time = 40;
		}
		charge = false;
		server77_equal(serve_val.terror_charge, 0, buffer_u8)
		server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
		if (arm_type == "attack" or arm_type == "normal")
		{
			arm_type = "normal"
			arm_type_more = "none"
			foot_frame = 0;
			a_cooltime = 0;
			all_spin = 0;
			go_to_speed = 0;
			jumping = false;
			arm_all_normal();
		}
		a_cooltime--;
	} //공격 정상화
	
	if (arm_type == "ouch")
	{
		face_variable = 0;
		server77_equal(serve_val.face_variable, 0, buffer_u8);
		if (timeline_position > 1) {
			timeline_running = 0;
		}
		only_hat = false;
		hat_bye = false;
		server77_equal(serve_val.only_hat, only_hat, buffer_bool);
		server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
		all_spin = 0;
		go_to_speed = 0;
		go_to_speed_solid = 0;
		jumping = false;
		a_charging = 0;
		arm_all_normal();
		left_arm_YA = YA + 270;
		right_arm_YA = YA + 90;
		charge = false;
		arm_movement(5, -5, 5, 5);
		if (big_shild = false) {
			if (instance_exists(serve)) {
				if (serve.kazino_time < 0) {
					go_to_scale = main_big_val;		
				}
			}
		}
		if (sturn <= 0){
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
			if (normal_attack_type == spr_bigsaw) {
				aring_amount--;
				if (aring_amount < 1) {
					normal_attack_type = spr_none;
				}
			}
			else {
				normal_attack_type = spr_none;
			}
			shild = false;
			arm_type = "normal"
			if (no_change == false) {
				a_cooltime = 0;
				cancle_able = false;
				spin_able = false;
				a_possible = true;
				YA2 = YA;
			}
			EQ = false;
			ride = false;
			YA_changeable = false;
			view_visible[0] = true;
			view_visible[2] = false;
			view_visible[3] = false;
			view_where = 0;
			obj_telescope_view.tele = false;
			hat_move = false;
			big_shild = false;
			server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
			if ((buff_index != buff_giligili or buff_index != buff_giligili2) and a_cooltime < 1 and a_possible == true) {
				go_to_speed = 0;
				go_soild = false;
			}
		}
	}//공격을 받았다!
	
	if (sturn == 1) {
		mouse_posible = false;
		effect_index = spr_none;
		effect_index_under = spr_none;
		ride = false;
		hat_xscale = 1;
		hat_yscale = 1;
		go_to_speed = 0;
		arm_type_more = "none"
		server77_equal(serve_val.hat_yscale, hat_yscale, buffer_s8);
		server77_equal(serve_val.hat_xscale, hat_xscale, buffer_s8);
		server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8);
		server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8);
		server77_equal(serve_val.color, c_white, buffer_f32);
		server77_equal(serve_val.cancle_able, effect_index_under, buffer_u16);
		color = c_white;
	}

	if (a_cooltime > 0) {
		a_cooltime--;
	}
	if (a_cooltime > 0 or a_possible == false) {
		if (cancle_able == true) {
			if (keyboard_check(global.keya)) {
				if (terror_charge < 3) {
					arm_type_more = "none";
					charge = false;
					go_to_speed = 0;
					timeline_running = 0;
					view_where = 0;
					view_visible[0] = true;
					only_hat = false;
					hat_bye = false;
					server77_equal(serve_val.only_hat, only_hat, buffer_bool);
					server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
					arm_all_normal();
					obj_telescope_view.tele = false;
					invisible = false;
					shild = false;
					cancle_able = false;
					spin_able = false;
					ride = false;
					if (arm_type_more = "mine_1") {
						buff_index = spr_none;
						buff_time = 0;
					}
					else {
						buff_time = 20;
					}
					server77_equal(serve_val.cancle_able, false, buffer_bool);
					extra_speed = 0;
					a_cooltime = 26 + round(big_val * 3);
					arm_all_normal();
					arm_type = "attack"
					arm_movement(3, -3, 10, 10);
					server78_create_instace(n_attack_area, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))
					a_possible = true;
				}
				else {
					switch (terror_charge) {
						case 3:
							cancle_able = false;
							spin_able = false;
							normal_play(twiza_4_act);
						break;
						case 4:
							cancle_able = false;
							spin_able = false;
							normal_play(twiza_4_act2);
						break;
						case 5:
							cancle_able = false;
							spin_able = false;
							invisible = false;
							invisible_time = 0;
							a_cooltime = 20;
							alpha = 1;
							cli_alpha = 1;
							view_where = 0;
							view_visible[1] = false;
							view_visible[0] = true;
							obj_telescope_view.tele = false;
							spr_arml_more = spr_not;
							arm_type_more = "not";
							left_arm_YA = YA - 90;
							right_arm_YA = YA - 90;
							server78_create_instace(hide_skill1, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))
						break;
						case 6:
							cancle_able = false;
							spin_able = false;
							invisible = false;
							invisible_time = 0;
							a_cooltime = 20;
							alpha = 1;
							view_where = 0;
							a_possible = true;
							cli_alpha = 1;
							view_visible[1] = false;
							view_visible[0] = true;
							obj_telescope_view.tele = false;
							spr_arml_more = spr_not2;
							arm_type_more = "not2";
							left_arm_YA = YA - 90;
							right_arm_YA = YA - 90;
							server78_create_instace(hide_skill3, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))
						break;
						case 9:
							cancle_able = false;
							spin_able = false;
							invisible = false;
							invisible_time = 0;
							a_cooltime = 15;
							alpha = 1;
							a_possible = true;
							all_spin = 1;
							all_spin_limit = 360;
							go_to_speed = 20;
							temp_YA = YA;
							cli_alpha = 1;
							server78_create_instace(ane_skill1_2, x, y)
							server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
						break;
						case 10:
							cancle_able = false;
							invisible = false;
							invisible_time = 0;
							a_cooltime = 20;
							alpha = 1;
							a_possible = true;
							cli_alpha = 1;
							server78_create_instace(lebe_skill3, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))	
						break;
					}
				}
			}
			if (keyboard_check(global.keyd)) {
				switch (terror_charge) {
					case 7:
						if (a_a_cooltime < 0) {
							if (mana >= 10) {
								prt_val_add(Val.mp, -10);
								a_a_cooltime = 50;
								server78_create_instace(mili_skill3_3, x + lengthdir_x(135 * big_val, YA - 90), y + lengthdir_y(135 * big_val, YA - 90));
							}
							else {
								skill_say_time = 30;
								skill_say = "MP: " + string(mana) + " / "  + "10(10)";
							}
						}
					break;
					case 8:
						if(a_a_cooltime < 0) {
							a_a_cooltime = 20;
							server78_create_instace(mili_skill4_2, x + lengthdir_x(135 * big_val, YA - 90), y + lengthdir_y(135 * big_val, YA - 90));
						}
					break;
					case 11:
						if (mana >= 0) {
							if(a_a_cooltime < 0) {
								prt_val_add(Val.mp, -50);
								a_a_cooltime = 15;
								server78_create_instace(spear_skill1, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
							}
						}
						else {
							skill_say_time = 30;
							skill_say = "MP: " + string(mana) + " / "  + "50(0)";
						}
					break;
					case 12:
						if(a_a_cooltime < 0) {
							a_a_cooltime = 40;
							server78_create_instace(nuke_skill41, x + lengthdir_x(105 * big_val, YA - 90), y + lengthdir_y(105 * big_val, YA - 90));
						}
					break;
					case 13:
						if (a_a_cooltime < 0) {
							if (mana >= 50) {
								prt_val_add(Val.mp, -50);
								a_a_cooltime = 50;
								server78_create_instace(sea_skill3, x + lengthdir_x(135 * big_val, YA - 90), y + lengthdir_y(135 * big_val, YA - 90));
							}
							else {
								skill_say_time = 30;
								skill_say = "MP: " + string(mana) + " / "  + "50(50)";
							}
						}
					break;
					case 15:
						if (gi > 20) {
							prt_val_add(Val.gi, -20);
							cancle_able = false;
							a_cooltime = 30;
							all_spin = true;
							all_spin_limit = 360;
							go_to_speed = 0;
							server78_create_instace(sang_skill12, x, y);
						}
						else {
							skill_say_time = 30;
							skill_say = "GI: " + string(gi) + " / "  + "20(20)";
						}
					break;
				}
			}
		}
		if (keyboard_check(global.keyq)) {
			switch(terror_charge) {
				case 11:
					if (mana >= 25) {
							if(a_a_cooltime < 0) {
								prt_val_add(Val.mp, -25);
								arm_all_normal();
								a_a_cooltime = 40;
								arm_type = "attack"
								arm_type_more = "apple_1";
								arm_movement(13, -13, 2, 2);
								shild = true;
								effect_index = effect_shild
								effect_index_num = 0;
								temp_YA = YA;
								server202_sound(sward_2_sound);
								server77_equal(serve_val.effect_index_num, 0, buffer_bool);
							}
						}
						else {
							skill_say_time = 30;
							skill_say = "MP: " + string(mana) + " / "  + "25(25)";
						}
				break;
				case 12:
					if(a_a_cooltime < 0) {
						a_a_cooltime = 40;
						server78_create_instace(nuke_skill42, x + lengthdir_x(60 * big_val, YA - 90), y + lengthdir_y(60 * big_val, YA - 90));
					}
				break;
				case 17 :
					if(a_a_cooltime < 0) {
						a_a_cooltime = 200;
						server78_create_instace(ane_skill21, x, y);
					}
				break;
			}
		}
		if (keyboard_check(global.keyw)) {
			switch(terror_charge) {
				case 12:
					if(a_a_cooltime < 0) {
						a_a_cooltime = 30;
						temp_YA = YA;
						jumping = true;
						temp_x = x;
						temp_y = y;
						for (var i = 20; i > 0; i--) {
							if(place_free(temp_x + lengthdir_x((i) * 30, YA - 90), temp_y + lengthdir_y((i) * 30, YA - 90))) {
								if ((temp_x + lengthdir_x((i) * 30, YA - 90) < room_width) and temp_x + lengthdir_x((i) * 30, YA - 90) > 0) {
									if ((temp_y + lengthdir_y((i) * 30, YA - 90) < room_height) and temp_y + lengthdir_y((i) * 30, YA - 90) > 0) {
										break;	
									}
								}
							}
						}
						jump_time = i;
						jump_try = 30;
					}
				break;
				case 14:
					normal_play(shit_4_act);
					terror_charge = 0;
					cancle_able = false;
				break;
			}
		}
		if (keyboard_check(global.keye)) {
			switch(terror_charge) {
			case 16:
				if (mana >= 40) {
					if(a_a_cooltime < 0) {
						a_a_cooltime = 80;
						prt_val_add(Val.mp, -40);
						cancle_able = 2;
						server77_equal(serve_val.cancle_able, cancle_able, buffer_u8);
					}
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / "  + "40(40)";
				}
			break;
			}
		}
		if (attacking == false) {
			attacking = true;
			alpha = 1;
			cli_alpha = 1;

			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,3);//3은 은신
			buffer_write(buff_chat,buffer_f32,cli_alpha);
	
			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
	
			
		}
	}//평타 쿨타임 줄이기
	else {
		attacking = false;
	}

	if (arm_tabcooltime > 0) {
		arm_tabcooltime -= 1;
	}//tab키 순환
	
	if (invisible_time > 0) {
		invisible_time -= 1;
	}//은신
	else {
		if !(global.hat == spr_hat10 and level == 3) {
			invisible = false;
		}
	}
	
	if(invisible == true or buff_index == buff_shadow) {
		if (alpha > 0.5) {
			alpha -= 0.02;
		}
		if (cli_alpha > 0)
		{
			cli_alpha -= 0.02;
		}

			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,3);//3은 피해량,스턴값
			buffer_write(buff_chat,buffer_f32,cli_alpha);
	
			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
	
	}
	else {
		if (alpha < 1) {
			alpha += 0.02;
		}
		if (cli_alpha < 1)
		{
			cli_alpha += 0.02;
		}

			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,3);//3은 피해량,스턴값
			buffer_write(buff_chat,buffer_f32,cli_alpha);
	
			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
	
	}
	
	if (a_cooltime <0) {
		if (only_move_frame = 1) {
			if (keyboard_check(global.shift) and arm_type != "ouch" and arm_type != "caps_lock" and arm_type != "attack") {
				arm_type = "shift"
				arm_movement(5, -5, 5, 5);
				left_arm_YA = YA + 270;
				right_arm_YA = YA + 90;
			}
			else {
				if (arm_type == "shift")
				{
					arm_type = "normal"
					arm_all_normal();
				}
			}//쉬프트 움직임 정상화
		
			if (keyboard_check(global.cap)) {
				if (arm_type != "caps_lock" and arm_type != "shift" and arm_type != "ouch" and arm_type != "attack")
				{
					left_arm_yscale = -1;
					right_arm_yscale = -1;
					arm_movement(0, 0, 5, 0);
					arm_type = "caps_lock"
					if (arm_tabcooltime = -1) {
						arm_tabcooltime = 20;
					}
				}
			}
		else {
			if (arm_type == "caps_lock")
				{
					arm_type = "normal"
					arm_all_normal();
				}
			}
		}
	}//caps_lock키 움직임 정상화


	if (a_cycle > 0) {
		a_cycle -= 1
	} // 손 순환을 위한 감소 


	if (f_cycle > 0) {
		f_cycle -= 1
	} // 발 순환을 위한 감소 


	if (a_cycle = 0) {
		if (arm_type = "normal")
		{
			switch(arm_type_num) {
				case 0 :
					arm_type_num = 1
					arm_movement(0, 1, 2, -2);
				break;
				case 1 :
					arm_type_num = 0
					arm_movement(0, 1, -2, 2);
				break;
			}
			a_cycle = 10;
		}
		if (arm_type = "attack")
		{
			switch (arm_type_more) {
				case "yellow_2" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 0, 4, -4);
						right_arm_YA = YA + 120
						left_arm_YA = YA + 10
						a_cycle = 4;
					break;
					case 1 :
						arm_type_num = 0
						arm_movement(0, 0, -4, 4);
						right_arm_YA = YA - 10
						left_arm_YA = YA - 120
						a_cycle = 4;
					break;
					}
				break;
				case "spear":
					spr_armr_more = spr_spear;
					right_arm_YA = YA2 - 100;
				break;
				case "fish" :
					switch(arm_type_num) {
						case 0 :
							arm_type_num = 1
							arm_movement(0, 1, 2, -2);
							a_cycle = 50;
						break;
						case 1 :
							arm_type_num = 0
							arm_movement(0, 1, -2, 2);
							a_cycle = 50;
						break;
					}
				break;
				case "sward_1" :
						switch(arm_type_num) {
					case 0 :
						left_arm_YA = image_angle;
						spr_arml_more = spr_none;
						spr_armr_more = spr_sward;
						arm_type_num = 1;
						left_goto_YA = image_angle;
						right_arm_YA = image_angle + 10;
						right_goto_YA = image_angle -160;
						arm_spin_able = 1;
						arm_spin_speed = 20;
						all_spin = true;
						all_spin_limit = -60;
						right_arm_deltay = 10;
						left_arm_deltay = 10;
						a_cycle = 20;
					break;
					case 1 :
						spr_armr_more = spr_none;
						spr_arml_more = spr_sward;
						arm_type_num = 0;
						arm_spin_able = 1;
						arm_spin_speed = 20;
						left_arm_YA = image_angle - 10;
						right_goto_YA = image_angle;
						left_goto_YA = image_angle + 160;
						all_spin = true;
						all_spin_limit = 60;
						right_arm_deltay = 10;
						left_arm_deltay = 10;
						a_cycle = 20;
					break;
					}
				break;
				case "sward_10" :
						switch(arm_type_num) {
					case 0 :
						left_arm_YA = YA;
						spr_arml_more = spr_none;
						spr_armr_more = spr_sward;
						arm_type_num = 1;
						left_goto_YA = YA;
						right_arm_YA = YA + 100;
						right_goto_YA = YA - 50;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						a_cycle = 6;
					break;
					case 1 :
						spr_armr_more = spr_none;
						spr_arml_more = spr_sward;
						arm_type_num = 0;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						left_arm_YA = YA - 100;
						right_goto_YA = YA;
						left_goto_YA = YA + 50;
						a_cycle = 6;
					break;
					}
				break;
				case "sward_3" :
						switch(arm_type_num) {
					case 0 :
						left_arm_YA = YA;
						spr_arml_more = spr_none;
						spr_armr_more = spr_sward3;
						arm_type_num = 1;
						left_goto_YA = YA;
						right_arm_YA = YA + 100;
						right_goto_YA = YA - 50;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						a_cycle = 6;
					break;
					case 1 :
						spr_armr_more = spr_none;
						spr_arml_more = spr_sward3;
						arm_type_num = 0;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						left_arm_YA = YA - 100;
						right_goto_YA = YA;
						left_goto_YA = YA + 50;
						a_cycle = 6;
					break;
					}
				break;
				case "sward_2" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1;
						right_arm_YA += 20;
						a_cycle = 2;
						all_YA_change_delta(20)
					break;
					case 1 :
						arm_type_num = 2;
						right_arm_YA += 20;
						a_cycle = 4;
						all_YA_change_delta(20)
					break;
					case 2 :
						arm_type_num = 3;
						right_arm_YA -= 20;
						a_cycle = 2;
						all_YA_change_delta(-20)
					break;
					case 3 :
						arm_type_num = 0;
						right_arm_YA -= 20;
						a_cycle = 4;
						all_YA_change_delta(-20)
					break;
					}
				break;
				case "yellow_3" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 0, 4, 9);
						a_cycle = 4;
					break;
					case 1 :
						arm_type_num = 0
						arm_movement(0, 0, 1, 12);
						a_cycle = 4;
					break;
					}
				break;
				case "studing" :
					temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 2, 0, 0);
						aexp += 5;
						prt_val_add(Val.mp, 3);
						prt_val_add(0, 6);
						a_cycle = 5;
					break;
					case 1 :
						arm_type_num = 2
						arm_movement(0, 0, 0, 0);
						a_cycle = 5;
					break;
					case 2 :
						arm_type_num = 0
						arm_movement(0, -2, 0, 0);
						a_cycle = 5;
					break;
					}
				break;
				case "drinking_red" :
					temp_YA = YA;
					hp += 1;
				break;
				case "drinking_blue" :
					temp_YA = YA;
					prt_val_add(Val.mp, 1);
				break;
				case "temp_YA_async" :
					temp_YA = YA;
				break;
				case "a_w" :
					buff_index = spr_wing1;
					buff_time = 5;
					YA_changeable = false;
				break;
				case "apple_1" :
					arm_movement(13, -13, 5, 5);
					a_cycle = 1;
					temp_YA = YA;
				break;
				case "mine_1" :
					arm_movement(13, -13, 5, 5);
					a_cycle = 1;
					temp_YA = YA;
					hp += 0.10;
					go_to_speed = 0;
				break;
				case "arm_lock" :
					left_arm_YA = YA - 90;
					right_arm_YA = YA + 90;
					all_YA_change_delta(10);
					temp_YA = YA;
				break;
				case "arm_lock2" :
					all_YA_change_delta(44);
					arm_spin_able = true;
					arm_spin_speed = 1;
					right_goto_YA = YA + 140;
					left_goto_YA = YA - 140;
				break;
				case "arm_lock3" :
					left_arm_YA = YA - 30;
					right_arm_YA = YA + 30;
					all_YA_change_delta(20);
					go_to_speed_solid = 10;
				break;
				case "arm_lock4" :
					all_YA_change_delta(20);
					temp_YA += 10;
				break;
				case "not" :
					left_arm_YA += 15;
					right_arm_YA += 15;
				break;
				case "not2" :
					left_arm_YA += 2;
					right_arm_YA += 2;
					all_YA_change_delta(20);
				break;
				case "healing" :
					switch(arm_type_num) {
					case 0 :
						spr_arm_more_num = 0;
						arm_type_num = 1
						right_arm_deltax -= 4;
						a_cycle = 7;
					break;
					case 1 :
						spr_arm_more_num = 1;
						arm_type_num = 0;
						a_cycle = 7;
						right_arm_deltax += 4;
					break;
					}
				
				break;
				case "charge" :
					temp_x = x;
					temp_y = y;
					temp_YA = YA;
				break;
				case "leba2" :
					var deltaYA = irandom_range(-1, 1) * 45;
					right_arm_YA = YA + 90 + deltaYA;
					left_arm_YA = YA - 90 + deltaYA;
					y += irandom_range(-1, 1);
					temp_YA = YA;
				break;
				case "lebe1":
					left_arm_YA = YA - 135;
					right_arm_YA = YA + 135;
					temp_YA = YA;
				break;
				case "shit3":
					left_arm_YA += 30;
				break;
				case "domi":
					left_arm_YA = YA + 180;
					buff_index = spr_none;
				break;
				case "cry" :
					if (live = 1 and hp <= 99) {
						hp += 1;
						other_cid = cid;
							buffer_seek(buff_fast, buffer_seek_start, 0);
	
							buffer_write(buff_fast,buffer_u8,102);//100은 피해량,스턴값
							buffer_write(buff_fast,buffer_u8,1);
	
							network_send_packet(0,buff_fast, buffer_tell(buff_fast));
	
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
							buffer_write(buff_chat,buffer_f32,1);
							buffer_write(buff_chat,buffer_u8,other_cid);
	
							network_send_packet(0,buff_chat, buffer_tell(buff_chat));
					}
				break;
				case "spin":
					all_YA_change_delta(9);
				break;
				case "go 90":
					if (right_arm_YA < YA + 90) {
						right_arm_YA += 15;
					}
				break;
			}
		}
	} //평소 손 바꾸기 

	if (a_cooltime < 0){
		if (f_cycle = 0) {
			f_cycle = 10;
			if (foot_type = "normal")
			{
				switch(foot_type_num) {
					case 0 :
						foot_type_num = 1
						foot_movement(0, 0, -2, 2);
					break;
					case 1 :
						foot_type_num = 0
						foot_movement(0, 0, 2, -2);
					break;
				}
			}
		}
	} 

	if (arm_tabcooltime = 0) {
		arm_tabcooltime = 10;
		if (arm_type = "caps_lock")
			switch (arm_type_num) {
				case 0: 
						left_arm_yscale = -1;
						right_arm_yscale = -1;
						arm_movement(0, 0, 5, 0);
						arm_type_num = 1
				break;
				case 1: 
						left_arm_yscale = -1;
						right_arm_yscale = -1;
						arm_movement(0, 0, 0, 5);
						arm_type_num = 0
				break;
				}
	}//tab키 손 바꾸기


	if (stemina < m_stemina) {
		if (buff_index == buff_p2) {
			stemina += 2.4;
		}
		else {
			stemina += 1;
		}
	} //자동 스테미너 회복
	if (mana_1 > 1) {
		mana_1 = mana_1 - floor(mana_1);
		var temp_mana = prt_val_get(Val.MPR);
		prt_val_add(Val.mp, temp_mana);
	}

	if (mana < 180) {
		if(global.hat == spr_hat2 and level == 3 and main_speed != 12)
		{
			mana_1 += 0.12 ;
		}
		else
		{
			mana_1 += 0.06 ;
		}
	}//자동 마나 회복 


	if (gi <m_gi) {
		gi_1 += 0.066 ;
		if (gi_1 > 1) {
			gi_1 = gi_1 - floor(gi_1);
			prt_val_add(Val.gi, 1);
		}
	}//기값 회복 
	
	if (hp > 1000) {
		show_message("???");
		url_open("https://www.youtube.com/watch?v=bCBk78FgSgY");
		game_end();
		exit;
	} //채력 보정 

	if (hp > m_hp) {
		hp = m_hp;
	} //채력 보정 
	
	if (mana > m_mana) {
		prt_val_set(Val.mp, m_mana);
	} //마나 보정 
	
	if (gi > m_gi) {
		prt_val_set(Val.gi, m_gi);
	} //기 보정 

	if (stemina > m_stemina) {
		stemina -= 1
	} //스테미너 보정 
		switch (level) {
			case 0: if (aexp >= 200) {
				aexp -= 200;
				if (irandom(500) == 1) {
					level = 4;
					random_level5();
				}
				else {
					level = 1;
				}
					buffer_seek(buff_fast, buffer_seek_start, 0);
	
					buffer_write(buff_fast,buffer_u8, 200)//200은 레벨업!소리와 표시
					buffer_write(buff_fast,buffer_u8, 0);
	
					network_send_packet(global.intuto,buff_fast,buffer_tell(buff_fast));
	
					buffer_seek(buff_fast, buffer_seek_start, 0);
	
					buffer_write(buff_fast,buffer_u8,201)//201은 실질적인 값증가.
					buffer_write(buff_fast,buffer_u8,level);
	
					network_send_packet(0,buff_fast,buffer_tell(buff_fast));
				hp = m_hp;
			}
			break;
			case 1: if (aexp >= 400) {
				aexp -= 400;
				if (irandom(500) == 1) {
					level = 4;
					random_level5();
				}
				else {
					if (irandom(0) == 0) {
						level = 2;
						buffer_seek(buff_fast, buffer_seek_start, 0);
	
								buffer_write(buff_fast,buffer_u8,201)//201은 실질적인 값증가.
								buffer_write(buff_fast,buffer_u8,level);
	
						network_send_packet(0,buff_fast,buffer_tell(buff_fast));
					}
				}
								buffer_seek(buff_fast, buffer_seek_start, 0);
	
								buffer_write(buff_fast,buffer_u8,200)//200은 레벨업!소리와 표시
								buffer_write(buff_fast,buffer_u8, 0);
	
				network_send_packet(global.intuto,buff_fast,buffer_tell(buff_fast));
	
			
				hp = m_hp;
			}
			break;
			case 2: if (aexp >= 600) {
				aexp -= 600;
			
				buffer_seek(buff_fast, buffer_seek_start, 0);
	
				buffer_write(buff_fast,buffer_u8,200)//200은 레벨업!소리와 표시
				buffer_write(buff_fast,buffer_u8, 0);
	
				network_send_packet(global.intuto,buff_fast,buffer_tell(buff_fast));
	
			
				if (irandom(100) < 25 + level_up_false) {
					level = 3;
				}
				else {
					level_up_false += 5;
				}
				if (irandom(500) == 1) {
					level = 4;
					random_level5();
				}
			
				buffer_seek(buff_fast, buffer_seek_start, 0);
	
				buffer_write(buff_fast,buffer_u8,201)//201은 실질적인 값증가.
				buffer_write(buff_fast,buffer_u8,level);
	
				network_send_packet(0,buff_fast,buffer_tell(buff_fast));
	
			
				hp = m_hp;
				a_level++;
			}
				break;
			case 3:
			case 4:
			if (aexp >= 600) {
				aexp -= 600;
				if (irandom(500) == 1) {
					level = 4;
					random_level5();
				}
			
				buffer_seek(buff_fast, buffer_seek_start, 0);
	
				buffer_write(buff_fast,buffer_u8,200)//200은 레벨업!소리와 표시
				buffer_write(buff_fast,buffer_u8,0);
	
				network_send_packet(global.intuto,buff_fast,buffer_tell(buff_fast));
	
			
			
				buffer_seek(buff_fast, buffer_seek_start, 0);
	
				buffer_write(buff_fast,buffer_u8,201)//201은 실질적인 값증가.
				buffer_write(buff_fast,buffer_u8,level);
	
				network_send_packet(0,buff_fast,buffer_tell(buff_fast));
	
			
				hp = m_hp;
				a_level++;
			}
		}//레벨업 관련
	
	
	if (sturn > 0) {
		sturn -= 1 ;
		if (copper > 0)
		{
			prt_val_add(Val.cuper, -1);
			mine_say = "구리:" + string(copper);
			mine_say_time = 30;
		}
	}//스턴값 줄이기
	else {
		counter--;
	}
	
	
	if place_meeting(x, y, all_heal_zone) {
		if (hp < m_hp) {
			hp += 0.12;
		}
	}//파랑존
	
	
	if place_meeting(x, y, team_1_heal_zone) {
		if (global.team =1 or invisible == true or global.hat == spr_level5_hat1) {
			if (hp < m_hp) {
				hp += 0.09;
			}
		}
		else{
			if (hp >= 0) {
				if(invisible = false and buff_index != spr_wing1) {
					if! (global.hat == spr_hat37 and level > 1) {
						other_cid = 0;
						hp -= 0.12;
						if (spr_arml_more == sprite490) {
							dominate_time++;
							skill_say_time = 20;
							skill_say = "점령중... (" + string(5 - (dominate_time / 40))+"초 남음)";
							if (dominate_time == 200) {
								if (place_meeting(x, y, flag_here)) {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 300;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 3);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 150);
									prt_val_add(0, 1000);
									normal_play(ddr_1_act);
								}
								else {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 100;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 1);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 100);
									prt_val_add(0, 750);
									normal_play(ddr_1_act);
								}
								server78_create_instace(obj_falg, x, y);
							}
						}
						else {
							dominate_time = 0;	
						}
					}
				}
			}
		}
	}//우리팀 기지
	
	
	if place_meeting(x, y, team_0_heal_zone) {
		if (global.team == 0 or invisible == true or global.hat == spr_level5_hat1) {
			if (hp < m_hp) {
				hp += 0.09;
			}
		}
		else{
			if (hp >= 0) {
				if(invisible = false and buff_index != spr_wing1) {
					if! (global.hat == spr_hat37 and level > 1) {
						other_cid = 0;
						hp -= 0.12;
						if (spr_arml_more == sprite490) {
							dominate_time++;
							skill_say_time = 20;
							skill_say = "점령중... (" + string(5 - (dominate_time / 40))+"초 남음)";
							if (dominate_time == 200) {
								if (place_meeting(x, y, flag_here)) {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 300;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 3);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 150);
									prt_val_add(0, 1000);
									normal_play(ddr_1_act);
								}
								else {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 100;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 1);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 100);
									prt_val_add(0, 750);
									normal_play(ddr_1_act);
								}
								server78_create_instace(obj_falg, x, y);
							}
						}
						else {
							dominate_time = 0;	
						}
					}
				}
			}
		}
	}//적팀 기지
	
	
	if (a_possible_time >0) {
		a_possible_time -= 1;
	}//공격만 불가능한 시간
	
	
	if (a_charging = 1) {
		a_possible_time = 90;
		if (charging < 90) {
			charging += 1;
		}
	}//옐캡4차 기모으기
	
	if (charging = 30) {
		spr_armr_more = spr_yellow_4_skill;
		spr_arm_more_num = 0;
		spr_arm_morex = 0;
		spr_arm_morey = -20;
		audio_play_sound(sound_charging,1,false);
	}//소리
	
	if (charging = 60) {
		spr_arm_more_num = 1;
		audio_play_sound(sound_charging,1,false);
	}//소리
	
	if (charging = 89) {
		spr_arm_more_num = 2;
		audio_play_sound(sound_charging,1,false);
		instance_create_depth(x, y, depth, see_skill_showa)
	}//소리
	
	if (hp <= 0){
		var dead = true;
		view_visible[3] = true;
		instance_create_depth(x, y, depth, obj_screan_m);
		view_where = 3;
		timeline_running = 0;
		arm_all_normal();
		hp = 0;
		if (obj_id > 0) {
			if (obj_id.hat == spr_level5_hat1) {
				hp = m_hp;
				sturn = 100;
				scr_hat_change2(spr_level5_hat1);
				audio_stop_all();
				BMG_play();
				
				buffer_seek(buff_fast, buffer_seek_start, 0);
	
				buffer_write(buff_fast,buffer_u8,95);//95는 고자동기화
				buffer_write(buff_fast,buffer_u8, global.hat_show);
				buffer_write(buff_fast,buffer_u8, level);
	
				network_send_packet(0,buff_fast,buffer_tell(buff_fast));
				dead = false;
			}
		}
		if(dead) {
			if (dota_ball > 0) {
				dota_ball = floor(dota_ball / 2);
				while(true) {
					if (dota_ball >= 1000) {
						dota_ball = 1000;
					}
					if (dota_ball >= 50){
						server78_create_instace(obj_dotaball4, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
						dota_ball -= 50;
					}
					else {
					if (dota_ball >= 20) {
						server78_create_instace(obj_dotaball3, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
						dota_ball -= 20;
						}
						else {
							if (dota_ball >= 10) {
								server78_create_instace(obj_dotaball2, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
								dota_ball -= 10;
							}
							else {
								if (dota_ball >= 5) {
									server78_create_instace(obj_dotaball1, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
									dota_ball -= 5;
								}
								else {
									server78_create_instace(obj_dotaball, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
									dota_ball -= 1;
								}
							}
						}
					}
					if (dota_ball < 0) {
						prt_val_set(Val.ball, 0);
						break;
					}
				}
			}
			if (global.hat == spr_hat5) {
				alarm_set(4, 75);
			}
			else {
				alarm_set(4, 220);
			}
			if (level == 4) {
				if (global.team == 2) {
					for (var i = 0; i < 6; i++) {
						server78_create_instace(obj_aexpball1, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
					}
				}
				else {
					for (var i = 0; i < 6; i++) {
						server78_create_instace(obj_aexpball, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
					}
				}
			}
			if (global.hat == spr_level5_hat14 and level == 4) {
				server78_create_instace(obj_light_last, x + irandom_range(-200, 200), y + irandom_range(-200, 200));
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
				buffer_write(buff_chat,buffer_string, "성기사의 끝은 ㅇ벗다.");
				buffer_write(buff_chat,buffer_string,global.name);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
			if(bloodable == true) {
				live = 2;
				server77_equal(serve_val.live, 2, buffer_s8)
			}
			else {
				live = 0;
				server77_equal(serve_val.live, 0, buffer_bool)
			}
			if (global.hat == spr_hat15 and level == 3) {
				level = 0;
				buffer_seek(buff_fast, buffer_seek_start, 0);
				
				buffer_write(buff_fast,buffer_u8,4);//3은 피해량,스턴값
				buffer_write(buff_fast,buffer_u8, 1);//3은 피해량,스턴값
	
				network_send_packet(0,buff_fast,buffer_tell(buff_fast));
			}
			if (global.hat == spr_hat72 and level == 3) {
				level = 0;
				random_die_shangus();
			}
			if (global.hat != spr_hat5 and instance_exists(serve) and cur_attack != 0)
			{
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
							
				buffer_seek(buff_chat, buffer_seek_start, 0);
				buffer_write(buff_chat, buffer_u8, 99);
				buffer_write(buff_chat, buffer_bool, up);//팀점수 업
				buffer_write(buff_chat, buffer_u8, cur_attack);
				buffer_write(buff_chat, buffer_u8, 1);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
			else
			{
				if (other_cid != 0) {		
					buffer_seek(buff_fast, buffer_seek_start, 0);
					buffer_write(buff_fast, buffer_u8, 94);
					buffer_write(buff_fast, buffer_u8, other_cid);
	
					network_send_packet(0,buff_fast, buffer_tell(buff_fast));
					other_cid = 0;
				}
			}
			if (dead_nu == true) {
				buffer_seek(buff_chat, buffer_seek_start, 0);
			
				buffer_write(buff_chat, buffer_u8, 46);
				buffer_write(buff_chat, buffer_string, global.name);
				buffer_write(buff_chat, buffer_bool, global.team);
	
				network_send_packet(0,buff_chat, buffer_tell(buff_chat));
			}
		}
	}//죽음
	
	if (left_goto_YA != left_arm_YA and arm_spin_able == 1)
	{
		left_arm_YA += angle_difference(left_goto_YA, left_arm_YA) / arm_spin_speed;
	}//왼손회전
	
	if (right_goto_YA != right_arm_YA and arm_spin_able == 1)
	{
		right_arm_YA += angle_difference(right_goto_YA, right_arm_YA) / arm_spin_speed;
	}//오른손회전
	
	if(all_spin == 1)
	{
		if (all_spin_limit >= 0) {
			all_YA_change_delta(20);
			if (YA >= temp_YA + all_spin_limit)
			{
				all_spin = 0;
			}
		}
		else {
			all_YA_change_delta(-20);
			if (YA <= temp_YA + all_spin_limit)
			{
				all_spin = 0;
			}
		}
	}//전체 돌리기
	
	if (jumping) {
		if (jump_time > 0) {
			x += lengthdir_x(jump_try, temp_YA - 90);
			y += lengthdir_y(jump_try, temp_YA - 90);
		}
	}
	else {
		if(place_free(x + lengthdir_x(go_to_speed, temp_YA - 90), y + lengthdir_y(go_to_speed, temp_YA - 90)))
		{
			x += lengthdir_x(go_to_speed, temp_YA - 90);
			y += lengthdir_y(go_to_speed, temp_YA - 90);
		}//앞으로 자동이동
		else {
			if (charge) {
				charge_time--;
				if (charge_time < 0) {
					a_possible = true;
					a_cooltime = 0;
				}
			}
		}
	}
	if(go_to_speed_solid > 0 and a_possible == false)
		{
			x += lengthdir_x(go_to_speed_solid, go_to_solid_YA - 90);
			y += lengthdir_y(go_to_speed_solid, go_to_solid_YA - 90);
		}//앞으로 자동이동
	
	if(YA_changeable)
	{
		if (YA_change_10 == 2)
		{
			var ran = irandom(360)
			all_YA_change(ran)
			temp_YA = ran;
			YA_change_10 = 0
		}
		else
		{
			YA_change_10 += 1;
		}
	}//스턴 지진 + YA변환
	
	if (hat_move)
	{
		if (arm_type_more != "apple_1") {
			if (hat_YA < 20 and hat_num != 1)
			{
				hat_YA += 5;
				if (hat_YA == 0 and hat_num == 2)
				{
					hat_move = false
				}
			}
			else
			{
				hat_num = 1;
				if (hat_YA > -20 and hat_num == 1)
				{
					hat_YA -= 5;
				}
				else
				{
					hat_num = 2;
				}
			}
		}
		else {
			hat_YA += 6;
			if(hat_YA == 180) {
				hat_YA = 0;
				hat_move = false;
			}
		}	
	}
	else
	{
		hat_YA = 0;
		hat_num = 0;
	}//소세지 흔들기
}
else {
	sturn = 0;
}//정상화
 
if (say_time > 0){
	say_time -=1;
}//말 사라짐

if (mine_say_time > 0){
	mine_say_time -=1;
}//광질 말

if (skill_say_time > 0){
	skill_say_time -=1;
}//스킬 말

if (shild_time > 0){
	shild_time -=1;
	effect_index_num = 1;
}//스킬 말
else {
	immune = false;
	effect_index_num = 0;
	if (shild == false) {
		effect_index_num = -1;
	}
}

if (pickaxe_charge < 900 and global.pickaxe_index = spr_pickaxe6){
	pickaxe_charge +=1;
}//광질 충전곡괭이

if (big_val_time >= 0) {
	big_val_time -= 1;
}
else 
{
	go_to_scale = main_big_val;
}

if (go_to_scale != big_val) {
	if(go_to_scale >= 1) {
		if (go_to_scale > big_val) {
			big_val += 0.04;
		}
		else {
			big_val -= 0.02;
		}
	}
	else {
		if (go_to_scale < big_val) {
			big_val -= 0.02;
		}
		else {
			big_val += 0.02;
		}
	}
	
}

if (YA_change_small == true) {
	all_YA_change_delta(random_range(-10, 10))
	if (YA_change_small_time = 0) {
		YA_change_small = false;
	}
	else {
		YA_change_small_time -= 1;
	}
}

if (buff_time > 0 ) {
	buff_time -= 1;
	if(buff_time == 0) {
		buff_time = -1;
		if(buff_index == buff_giligili or buff_index == buff_giligili2) {
			go_to_speed = 0;
			YA_changeable = false;
		}
		if (buff_index == buff_see2) {
			color = c_white
			server77_equal(serve_val.color, c_white, buffer_f32);	
		}
		if (buff_index == buff_timeb) {
			x = time_x;
			y = time_y;
		}
		if (buff_index == buff_see2) {
			buff_time = 40;
			buff_index = spr_wing1;
		}
		if(buff_index == buff_tele or buff_index == buff_tele1) {
			random_xy();
			if (tele_try > 0) {
				tele_try--;
				buff_time = 5;
			}
			else {
				buff_index = spr_none;
			}
		}
		else {
			buff_index = spr_none;
		}
		extra_speed = 0;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
	switch(buff_index) {
		case buff_timeP:
			if (stemina < m_stemina) {
				stemina += 1;
			}
			if (mana < 180) {
				if(global.hat == spr_hat2 and level == 3 and main_speed != 12)
				{
					mana_1 += 0.12 ;
				}
				else
				{
					mana_1 += 0.06 ;
				}
			}//자동 마나 회복 
		break;
		case buff_p2 :
			hp += 0.1;
		break;
		case buff_mpkiller:
			if (mana > 0) {
				prt_val_add(Val.mp, -0.4);	
			}
			else {
				buff_index = spr_none;
				buff_time = 0;	
			}
		break;
		case buff_see2 :
			all_YA_change(temp_YA);
			main_speed = 0;
		break;
	}
}
if (global.hat == spr_hat57) {
	switch(level) {
		case 0:
			main_big_val = 1.1;
			go_to_scale = 1.1;
		break;
		case 1:
			main_big_val = 1.2;
			go_to_scale = 1.2;
		break;
		case 2:
			main_big_val = 1.3;
			go_to_scale = 1.3;
		break;
		case 3:
			main_big_val = 1.7;
			go_to_scale = 1.7;
		break;
	}
}
if (global.hat == spr_hat21) {
	switch(level) {
		case 0:
			main_big_val = 1.2;
			go_to_scale = 1.2;
		break;
		case 1:
			main_big_val = 1.4;
			go_to_scale = 1.4;
		break;
		case 2:
			main_big_val = 1.6;
			go_to_scale = 1.6;
		break;
		case 3:
			main_big_val = 2;
			go_to_scale = 2;
		break;
	}
}
else {
	if (global.hat == spr_level5_hat2) {
		main_big_val = 3;
		go_to_scale = 3;
	}
}
if (buff_index == buff_giligili) {
	go_to_speed = 4;
	YA_changeable = true;
}
else {
	if (a_cooltime <= 0 and a_possible == true) {
		go_to_speed = 0;
	}
	YA_changeable = false;
}

if (buff_index == buff_giligili2) {
	go_to_speed = 20;
	YA_changeable = true;
	go_soild = true;
}
if (buff_index == spr_gas) {
	if (hp > 1) {
		hp -= 0.15;
	}
}
if (buff_index == buff_apple3) {
	if (hp > 22) {
		hp -= 2;
	}
}
a_a_cooltime--;
if (a_a_cooltime == 0) {
	jumping = false;
	shild = false;
	if (effect_index == effect_shild) {
		effect_index = spr_none;
	}
}
buff_change_time--;
if (a_cooltime <= 0 and a_possible == true and buff_index == spr_none) {
	YA_changeable = false;
	extra_speed = 0;
	only_hat = false;
	go_to_speed = 0;
	go_to_speed_solid = 0;
	go_soild = false;
	hat_move = false;
	view_where = 0;
	if (instance_exists(shop_UI)) {
		if (shop_UI.windows = true) {
			temp_YA = YA;
			effect_index = effect_box;
		}
	}
}
if (global.hat == spr_level5_hat12 or (global.hat == spr_hat37 and level > 1)) {
	go_soild = true; 
}
just_time--;
if (just_time < 200) {
	skill_say_time = 30;
	skill_say = "아무짓도 안하면 꺼집니다. (" + string(just_time / 40) + "초 남음)";
}
if (just_time > 1700) {
	show_message("ㅄ");
	url_open("https://www.youtube.com/watch?v=tf7ArwxMHR8");
	game_end();
	exit;
}
if (aexp > 2000) {
	aexp = 0;	
}
if (place_free(x, y)) {
	gap = 0;
}
else {
	gap++;
	if (gap > 8000) {
		skill_say_time = 30;
		skill_say = "벽속에 계속있으면 근손실남";
	}
	if (gap > 8400) {
		hp -= 1;
	}
}
if (hat_bye_time == 0) {
	hat_bye = false;
	server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
}
if (a_charging != a_charging_1) {
	a_charging_1 = a_charging;
	server77_equal(serve_val.a_charging, a_charging, buffer_u8);
}
if (charging != charging_1) {
	charging_1 = charging;
	server77_equal(serve_val.charging, charging, buffer_u8);
}
if (spr_arm_morey != spr_arm_morey_1) {
	spr_arm_morey_1 = spr_arm_morey;
	server77_equal(serve_val.spr_arm_morey, spr_arm_morey, buffer_u8);
}
if (spr_arm_morex != spr_arm_morex_1) {
	spr_arm_morex_1 = spr_arm_morex;
	server77_equal(serve_val.spr_arm_morex, spr_arm_morex, buffer_u8);
}
if (spr_arml_more != spr_arml_more_1) {
	spr_arml_more_1 = spr_arml_more;
	server77_equal(serve_val.spr_arml_more, spr_arml_more, buffer_u16);
}
if (spr_armr_more != spr_armr_more_1) {
	spr_armr_more_1 = spr_armr_more;
	server77_equal(serve_val.spr_armr_more, spr_armr_more, buffer_u16);
}
if (effect_index != effect_index_1) {
	effect_index_1 = effect_index;
	server77_equal(serve_val.effect_index, effect_index, buffer_u16);
}
if (effect_num != effect_num_1) {
	effect_num_1 = effect_num;
	server77_equal(serve_val.effect_num, effect_num, buffer_u8);
}
if (hat_YA != hat_YA_1) {
	hat_YA_1 = hat_YA;
	server77_equal(serve_val.hat_YA, hat_YA, buffer_s8);
}
if (right_arm_yscale != right_arm_yscale_1) {
	right_arm_yscale_1 = right_arm_yscale;
	server77_equal(serve_val.right_arm_yscale, right_arm_yscale, buffer_s8);
}
if (left_arm_yscale != left_arm_yscale_1) {
	left_arm_yscale_1 = left_arm_yscale;
	server77_equal(serve_val.left_arm_yscale, left_arm_yscale, buffer_s8);
}
if (spr_arm_more_num != spr_arm_more_num_1) {
	spr_arm_more_num_1 = spr_arm_more_num;
	server77_equal(serve_val.spr_arm_more_num, spr_arm_more_num, buffer_u8);
}
if (effect_index_num != effect_index_num_1) {
	effect_index_num_1 = effect_index_num;
	server77_equal(serve_val.effect_index_num, effect_index_num_1, buffer_u8);
}
if (combo_time == 0) {
	combo = 0;
}
else {
	combo_time--;
}
switch(buff_index) {
	case buff_fast_go:
		buff_speed = 7;
	break;
	case buff_bwiza2:
		buff_speed = -3;
	break;
	case buff_bleed:
		buff_speed = -4;
	break;
	default:
		buff_speed = 0;
	break;
}
alive--;
hat_bye_time--;
fish_time--;
push++;
if (fish_time <= 0) {
	if (fishing == true) {
		normal_play(fish_catch);
		fishing = 2;
	}
}
if (a_level > 256) {
	skill_say_time = 30;
	skill_say = "비정상적인 레벨업 감지";
}
if (global.hat == spr_secret) {
	show_message("엌");
	url_open("https://www.youtube.com/watch?v=aCmh_v6C7K4");
	game_end();
	exit;
}
if (big_val > 50) {
	show_message("너무큰데");
	url_open("https://www.youtube.com/watch?v=MW_kYAFav-c");
	game_end();
	exit;
}
jump_time--;
x = round(x);
y = round(y);