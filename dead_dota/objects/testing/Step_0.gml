if (room == room_in) {
	exit;
}
else if (room == room_temp and global.online == 1) {
	exit;
}
mask_index = spr_wall_mask
gi = prt_val_get(Val.gi);
mana = prt_val_get(Val.mp);
copper = prt_val_get(Val.cuper);
iron= prt_val_get(Val.iron);
gold = prt_val_get(Val.gold);
dota_ball = prt_val_get(Val.ball);
global.money = prt_val_get(0);
item_time--
flash_time = max(flash_time - 1, 0);
endemic_time = max(endemic_time - 1, 0);

card_name = "none";

if (instance_exists(obj_card_manager)) {
	if (obj_card_manager.timer > 0) {
		moveable = false;
		buff_index = effect_card_gag;
		buff_time = 3;
		undying = false
		arm_type = "ouch"
		a_possible = false;
		temp_YA = YA;
		counter = 2;
	}
	card_name = obj_card_manager.get_name();
}
else {
	if (buff_index = effect_card_gag) {
		effect_index = spr_none;
		moveable = true;
	}
}

if (alive > 0) {
	server78_create_instace(obj_spawn, x, y);
}
if (bullet >= 7) {
	bullet = 6
}// 불릿 초기화

if (bullet < 0) {
	bullet = 0	
}// 불릿 초기화2

if (up_skill > 3) {
	up_skill = 0
}// 투사 초기화


switch(global.hat) {
    case spr_hat71:
	    if (skill_con >= 7) {
			skill_con = 7
		}
	break;
	default:
	    if (skill_con >= 6) {
			skill_con = 6
		}
	break;
}

var speedd = (main_speed + extra_speed + stats_speed + buff_speed) * high_speed;
if (speedd < 0) speedd = 0;
move_x = 0;
move_y = 0;
if (instance_exists(grvity)) {
	if (go_soild == false) {
	   if (place_meeting(x, y, water_zone)) {
		  if (grv < 0) {
			  grv += 1;
		  }
		  else {
			grv = 0.1;  
		  }
		  move_y += 2;
		  is_ground = false;
	   } 
	   else {
	      grv += 0.8; // 하락
		  if (jump == false) {
			 is_ground = !place_free(x, y + 1);
		  }
	   }
	   
	   if (is_ground) {
		  if (jump) {
			if(grv >= 0) {
				jump = false;
			}
		  }
		  else {
			grv = 0;  
		  }
	   } 
	   else {
	      move_y += grv;
	   }
	}
}
if (speedd < 0) {
	speedd = 0;
}
/*
if (mouse_check_button(mb_left)) {
	var _id = instance_create_depth(mouse_x, mouse_y, depth, choose(bwiza_skill2 , yellow_skill1));
	_id.cid = global.my_cid;
	_id.team = !global.team;
	_id.cid_id = global.cid_array[global.my_cid];
}
*/
if(global.hat = spr_hat74) {
   if (stats_speed > 2 or extra_speed > 2 or buff_speed > 2) {
      if (speedd > 16 or go_to_speed > 10 ) {
         server78_create_instace(ski_skill_p, x, y);
      }
   }
   else {
      if(stemina >= 10) {
         if (sturn == 0) {
            if (speedd > 16 or go_to_speed > 10 ) {
               server78_create_instace(ski_skill_p, x, y);
            }
         }
      }
   }
}
main_big_val_step();
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
if (go_to_speed < go_to_speed2) {
    go_to_speed += 0.1;
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

if(global.hat = spr_hat57) {
    if (heal_stack >= 5) {
        heal_stack = 0
       server78_create_instace(ma_skill0, x, y);
    }// 대지은혜 스택
}

if( global.hat = spr_hat75) {
    if (heal_stack >= 1) {
      combo = 0
    }
    if (combo >= 1) {
      heal_stack= 0
    }
}
        


if (instance_exists(diediedie)) {
   if (distance_to_point(diediedie.x, diediedie.y) < 100) {
      hp -= 0.2;
   }
   if (global.hat == spr_level5_hat8) {
      hp += 0.3;
   }
   else {
      if (distance_to_point(diediedie.x, diediedie.y) < 300) {
         hp -= 0.1;
      }
      if (global.hat == spr_level5_hat8) {
          hp += 0.2;
       }
   }
}
/*
if (global.hat == spr_hat57) {
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
//삭제된 마론 패시브*/
else {
   m_hp = 100 ;
}
if (global.stats == spr_stats4 and level >= 0) {
   m_mana = 250;   // 대현자
}
if (global.stats == spr_stats3 and level >= 0) {
   m_stemina = 180;   // 겁쟁이
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

   case spr_hat75: 
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
            prt_val_add(Val.mp, -0);
         }
      }
   break;
}

if (keyboard_check_released(global.keyf)) {
    if (instance_exists(grvity)) {
        if (!place_free(x, y + 2) or place_meeting(x, y, water_zone)) {
            jump = true;
			grv = -20;
			is_ground = false;
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
/*
for (var i = 0; i < 24; i++) {
	var _id = asset_get_index("testing" + string(i))
	_id.x = x + i * 64;
	_id.y = y;
}
*/
//타겟팅 테스트용, 함부로 건들면 큰 화를 부를거란다 

if (mana < -100){
	mana = 0;
}
if(live == 1) {
	if (babo_change == false) {
		if (babo_gage >= 100) {
			babo_change = true;	
			server77_equal(serve_val.babo_change, babo_change, buffer_bool);
		}
	}
	else {
		babo_gage -= 0.1;
		if (babo_gage <= 0) {
			babo_change = false;
			server77_equal(serve_val.babo_change, babo_change, buffer_bool);		
		}
	}
	if (global.hat == spr_hat77) {
		if (babo_time <= 0) {
			if (babo_change == false) {
				babo_time = 80;
				instance_create_depth(global.window_width - 256, global.window_height / 2 - 100, depth, obj_question_ui);
			}
		}
		else {
			if (!instance_exists(obj_question_ui)) babo_time--;	
		}
	}
	if (targeting) {
		targeting_array = [];
		for (var i = 0; i < 24; i++) {
			var _id = asset_get_index("testing" + string(i));
			if (point_in_rectangle(_id.x, _id.y, x - 512, y - 384, x + 512, y + 384) and global.my_cid != i) {
				array_push(targeting_array, _id);
			}
		}
		var num = array_length(targeting_array);
		if (num > 0) {
			array_sort(targeting_array,	function(elm1, elm2) {
			    return abs(point_direction(x, y, elm1.x, elm1.y)) - abs(point_direction(x, y, elm2.x, elm2.y))
			})
			var _bool = (cur_target == noone or !array_any(targeting_array, function(_val, _ind) {
				cur_target_index = _ind;
			    return _val == cur_target;
			}));
			
			if (_bool) {
				cur_target = targeting_array[0];
				targeting_time = 20;
			}
			else {
				targeting_time--;
				if (targeting_time < 0) {
					audio_play_sound(sound_charging , 1, false, 0.5);
					if (cur_target_index >= num - 1) {
						cur_target = targeting_array[0];
					}
					else {
						cur_target = targeting_array[cur_target_index + 1];
					}
					targeting_time = 20;
				}
			}
		}
	}
	if (spin_steadly) {
		spin_val += spin_val_delta;
		left_arm_YA += spin_val;
	}	
	if (left_arm_get_bigger) {
		left_arm_xscale += left_arm_get_bigger_delta;	
		left_arm_yscale += left_arm_get_bigger_delta;	
	}
	if (lighting) {
		if (light_time < 5) {
			light_time++;
		}
		else {
			light_time = 0;
			draw_lighting = !draw_lighting;
		} 
	}
	if (global.hat == spr_hat76) {
		if (protect_break == false){
			protection = true;
		}
		switch (level) {
			case 0 :
				protection_val_max = 5;
			break;
			case 1 :
				protection_val_max = 10;
			break;
			case 2 :
				protection_val_max = 10;
			break;
			case 3 :
				protection_val_max = 10;
			break;
		}
	}
	else {
		protection_val_max = 0;
	}
	if (protection == false) {
		if (protection_val > 0) {
			protection_val = max(protection - 1, 0);	
		}
	}
	else if (protect_break == false){
		if (protection_val < protection_val_max) {
			protection_val = min(protection_val_max, protection_val + 0.04);
		}
		else {
			protection_val = protection_val_max;	
		}
	}
	if (protect_break) {
		if (protect_break_time > 0) {
			protect_break_time--;
		}
		else {
			protect_break = false;	
		}
	}
	
	if (moveable) {
		if (a_cooltime <= 0) {
			with(obj_testing) {
				solid_pre = solid;
				solid = false;
			}
			if (!place_free(x, y) and go_soild == false) {
				var len_x, len_y;
				for (var i = 0; i < 36; i++) {
					len_x = lengthdir_x(10, 10 * i);
					len_y = lengthdir_y(10, 10 * i);
					if (place_free(x + len_x, y + len_y)) {
						x += len_x;
						y += len_y;
						break;
					}
				}
			}
			with(obj_testing) {
				solid = solid_pre;
			}
		}
		if (keyboard_check(global.left)) {
			if (sturn = 0) {
				if (a_cooltime <= 0) {
					if (only_move = 1) {
						if (keyboard_check(global.shift)) {
							if (keyboard_check(global.cap)) {
								if(place_free(x + (lengthdir_x(speedd - 4,YA2 - 180)), y + (lengthdir_y(speedd - 4,YA2 - 180))) or go_soild) {
									x += lengthdir_x(speedd - 4,YA2 - 180)
									if (!instance_exists(grvity) or go_soild == true) {
										y += lengthdir_y(speedd - 4,YA2 - 180)
									}
									all_YA_change_delta2(2);
								}
							}
							else {
								move_x -= speedd;
							}
						}//쉬프트
						else {
							if (keyboard_check(global.cap)) {
								all_YA_change_delta2(4);
								}//탭 (쉬프트 X)
							}
					}
				if (!keyboard_check(global.shift)) {
					 if (!keyboard_check(global.cap)) {
						 if (instance_exists(grvity)) {
                             for (var i = 0; i < 5; i++) {
                                 if(place_free(x - (speedd), y - i * 2) or go_soild) {
                                     x -= speedd;
                                     y -= i * 2;
                                     break;
                                 }
                             }
                         }
                         else {
							move_x -= speedd;
                         }
						 all_YA_change2(270);
					 	 // 탭x 쉬프트x
						 if (keyboard_check(global.up)) {
							 all_YA_change2(310);
						 }
						 if (keyboard_check(global.down)) {
							all_YA_change2(225);
							}
						}	
					}
				}
				else {
					if (spin_able == true) {
						if (a_a_cooltime < 0) {
							all_YA_change_delta2(4 * spin_scale);
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
								if (!instance_exists(grvity)) {
									move_y -= speedd;
								}
							}
						}
						if (keyboard_check(global.cap)) {
							if (keyboard_check(global.shift)) {
								if(place_free(x + lengthdir_x(speedd - 4,YA2-90), y + lengthdir_y(speedd - 4,YA2-90)) or go_soild) {
									x += lengthdir_x(speedd - 4,YA2-90);
									if (!instance_exists(grvity)) {
										y += lengthdir_y(speedd - 4,YA2-90);
									}
									}
								}
							else {
								var cap_speed = speedd + (ride * 7) + 2;
								if(place_free(x + lengthdir_x(cap_speed + 20,YA2-90), y + lengthdir_y(cap_speed + 20,YA2-90)) or go_soild) {
									x += lengthdir_x(cap_speed,YA2-90);
									if (!instance_exists(grvity) or go_soild == true) {
										y += lengthdir_y(cap_speed,YA2-90);
									}
									}
								}
								/*
		                        if (global.hat == spr_hat74 and level < 4) {
				                    var cap_speed = speedd + (ride * 7) + 2;
								    if(place_free(x + lengthdir_x(cap_speed, YA2-90), y + lengthdir_y(cap_speed, YA2-90)) or go_soild) {
								 	   x += lengthdir_x(cap_speed,YA2-90);
									   if (!instance_exists(grvity) or go_soild == true) {
									       y += lengthdir_y(cap_speed,YA2-90);
									 }
									 
								     }
							    }*/
						}
					}
					
					if (!keyboard_check(global.shift)) {
						if (!keyboard_check(global.cap)) {
							if (!instance_exists(grvity) or go_soild == true) {
								move_y -= speedd;
							}
							all_YA_change2(180);
							if (keyboard_check(global.left)) {
								all_YA_change2(225);
							}
							if (keyboard_check(global.right)) {
								all_YA_change2(135);
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
								if(place_free(x + (lengthdir_x(speedd - 4,YA2)), y + (lengthdir_y(speedd - 4,YA2))) or go_soild) {
									x += lengthdir_x(speedd - 4,YA2)
									if (!instance_exists(grvity) or go_soild == true) {
										y += lengthdir_y(speedd - 4,YA2)
									}
									all_YA_change_delta2(-2);
								}
							}
							else {
								move_x += speedd;
							}
					}
					else {
					if (keyboard_check(global.cap)) {
						all_YA_change_delta2(-4);
						}
					}
				}
					if (!keyboard_check(global.shift)) {
						if (!keyboard_check(global.cap)) {
							if (instance_exists(grvity)) {
                             for (var i = 0; i < 5; i++) {
                                 if(place_free(x + (speedd), y - i * 2) or go_soild) {
                                     x += speedd;
                                     y -= i * 2;
                                     break;
                                 }
                             }
                         }
                         else {
							move_x += speedd;         
                         }
						 all_YA_change2(90);
						 //탭x 쉬프트x 오른쪽
							all_YA_change2(90);
							if (keyboard_check(global.up)) {
								all_YA_change2(135);
							}
							if (keyboard_check(global.down)) {
								all_YA_change2(45);
								
							} 
						}
					}
				}
				else {
					if (spin_able == true) {
						if (a_a_cooltime < 0) {
							all_YA_change_delta2(-4 * spin_scale);
							
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
								move_y += speedd;
							}
						}
						if (keyboard_check(global.cap)) {
							if (keyboard_check(global.shift)) {
								if(place_free(x - lengthdir_x(speedd - 4,YA2-90), y - lengthdir_y(speedd - 4,YA2-90)) or go_soild) {
									x -= lengthdir_x(speedd - 4,YA2-90);
									y -= lengthdir_y(speedd - 4,YA2-90);
									
								}
							}
							else {
								var cap_speed = speedd + (ride * 7) + 2;
								if(place_free(x - lengthdir_x(cap_speed,YA2-90), y - lengthdir_y(cap_speed,YA2-90)) or go_soild) {
									x -= lengthdir_x(cap_speed,YA2-90);
									y -= lengthdir_y(cap_speed,YA2-90);
									
								}
								/*
								if (global.hat == spr_hat74 and level < 4) {  
				                    var cap_speed = speedd + (ride * 7) + 2;
								    if(place_free(x - lengthdir_x(cap_speed,YA2-90), y - lengthdir_y(cap_speed,YA2-90)) or go_soild) {
									     x -= lengthdir_x(cap_speed,YA2-90);
									     y -= lengthdir_y(cap_speed,YA2-90);
									     
									}	 
							    }*/
							}
						}
					}
					if (!keyboard_check(global.shift)) {
						if (!keyboard_check(global.cap)) {
							move_y += speedd;
							all_YA_change2(0);
							
							if (keyboard_check(global.left)) {
								all_YA_change2(315);
								
							}
							if (keyboard_check(global.right)) {
								all_YA_change2(45);
								
							}
						}
					}
				}
			}
		}
		if (move_x != 0 or move_y != 0) {
			if (go_soild) {
				x += move_x;
				y += move_y;
			}
			else {
				move_x = round(move_x);
				move_y = round(move_y);
				if (place_free(x, y)) {
					var dx = 0;
					for (var i = 0; i < abs(move_x); i++) {
						dx = move_x - sign(move_x) * i;
						if (place_free(x + dx, y)) {
							x += dx;
							break;
						}
					}
					if (move_y <= 0) {
						jump = true;
					}
					is_ground = true;
					for (var i = 0; i < abs(move_y); i++) {
						dx = move_y - sign(move_y) * i;
						if (place_free(x, y + dx)) {
							y += dx;
							jump = false;
							is_ground = false;
							break;
						}
					}
				}
				else {
					/*
					var _direction_multi;
					for (var i = 1; i < 15; i++) {
						_direction_multi = i * 0.1 + 1;
						if (place_free(x + move_x * _direction_multi, y + move_y * _direction_multi)) {
							x += move_x * _direction_multi;
							y += move_y * _direction_multi;
							break;
						}
					}
					*/
				}
			}
		}
	}
	if (sturn <= 0) {
		if (chat_point = 0) {
			if (keyboard_checkD) {
				if(arm_type_more != "hammer_end") {	
					if (a_cooltime <= 0) {
						if (keyboard_check_released(global.keyd)) {
							keyboard_checkD = false;
							switch (timeline_index) {
								case hammer_1_act :
									if (timeline_position > 30) {
										normal_play(hammer_1_act1);
									}
									else {
										arm_spin_speed = 4;
										left_goto_YA = 0 + 45;
										a_cooltime = 10;
										left_arm_get_bigger = false;
										normal_play(hammer_1_act0);
									}
									instance_destroy(hammer_skill1_gauge);
								break;
							}
						}
					}
				}
			}
			if (keyboard_checkQ) {
				if (keyboard_check_released(global.keyq)) {
					keyboard_checkQ = false;
					switch (timeline_index) {
						case babo_2_act1 :
							is_babo_angle = false;
							normal_play(babo_2_act2);
						break;
					}
				}
			}
			if (keyboard_checkW) {
				if (keyboard_check_released(global.keyw)) {
					keyboard_checkW = false;
					switch (timeline_index) {
						case hammer_3_act :
							arm_spin_speed = 4;
							right_goto_YA = 0 + 45;
							a_cooltime = 25;
							left_arm_get_bigger = false;
							cancle_able = false;
							spr_arml_more = spr_none;
							how_long = timeline_position;
							server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
							normal_play(hammer_3_act0);
							instance_destroy(hammer_skill3_gauge);
						break;
					}
				}
			}
			if (keyboard_checkE) {
				if (keyboard_check_released(global.keye)) {
					keyboard_checkE = false;
					switch (timeline_index) {
						case hammer_4_act :
							if (cur_target_index > 0 and cur_target_index <= 24) {
								a_cooltime = 40;
								spin_able = true;
								server79_create_instace_ext(hammer_skill4, x, y, cur_target_index);
							}
							else {
								arm_type = "ouch";
								sturn = 80;
								spin_able = true;
								server79_create_instace_ext(hammer_skill4, x, y, 0);
							}
							target_start(false);
						break;
					}
				}
			}
			if (a_possible) {
				if (keyboard_check(global.key4)) {
					if (a_cooltime <= 0) {
						normal_play(it_hing);
					}
				}
				if (keyboard_check(global.key5)) {
					if (a_cooltime <= 0) {
						normal_play(da_bong);
					}
				}
				if (keyboard_check(global.key6)) {
					if (a_cooltime <= 0) {
						normal_play(ap);
					}
				}
				if (keyboard_check(global.key7)) {
					if (a_cooltime <= 0) {
						normal_play(ap1);
					}
				}
				if (keyboard_check(global.keya)) {
					if (a_cooltime <= 0) {
						seq_end();
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
							case spr_korea3:
								normal_play(korea_3_act);
							break;
							case spr_nuke3:
								normal_play(nuke_3_act);
							break;
							case spr_bobo:
								normal_play(cry_4_act);
							break;
							default:
							if (a_possible == true) {
								switch (global.hat) {
									case spr_hat71:
									    switch(d_attack_type) {
										    case spr_sangbrush :
										         normal_play(gun_0_act);
										    break;
										    default :
										        normal_play(gun_0_act1);
										    break;
										    }
									break;
									case spr_hat70:
										normal_play(bam_1_act);
									break;
									case spr_hat37:
										if(room = room_ghost) {	
											normal_play(hide_4_act);
										}
										else {
											norm_attack()
										}
									break;
									case spr_hat10:
									     norm_attack()
									     normal_play(p_0_act);
									break;
									case spr_hat12 :
										norm_attack()
										normal_play(twiza_3_act);
									break;
									case spr_hat49 :
										normal_play(nuke_1_act);
									break;
										
									case spr_hat61 :
										if (stemina >= 80) {
											normal_play(nin_0_act);
											stemina -= m_stemina * 0.6
										}
										 {
											skill_say_time = 30;
											skill_say = "스테미나: " + string(stemina) + " / " + string(m_stemina * 0.6) + "(80)";
										}
									break;
									case spr_hat50 :
									if (level > 0) {
										if (stemina >= 80) {
											normal_play(sea_2_act2);
											stemina -= 150
										}
										else {
											norm_attack()
											skill_say_time = 30;
											skill_say = "스테미나: " + string(stemina) + " / 150(80)";
										}
									}
									else {
										norm_attack()
									}
									break;
									case spr_hat59 :
                                    if (level > 1) {
                                        if (stemina >= 80) {
                                            normal_play(time_0_act);
                                            stemina -= m_stemina * 1.5
                                        }
                                        else{
                                            skill_say_time = 30;
                                            skill_say = "스테미나: " + string(stemina) + " / " + string(m_stemina * 1.5) + "(80)";
                                        }
                                    }
                                    else {
                                        norm_attack()
                                    }
                                    break;		
									case spr_hat66 :
							        if (level > 1) {
								     if (a_cooltime <= 0) {
										normal_play(bb_1_act1);
									    }
									}
							        else {
								    if (a_cooltime <= 0) {
									    normal_play(bb_1_act);
									}
									}
								    break;
									case spr_hat11 :
										norm_attack()
										normal_play(bwiza_1_act);
										break;
									case spr_hat40:
										normal_play(fighter_1_act);
									break;
									/*
									case spr_hat45 :
									if (stemina >= 80) {
									    normal_play(fheal_0_act);
										stemina -= 150
									}
									else {
										skill_say_time = 30;
										skill_say = "스테미나: " + string(stemina) + " / 150(80)";
									}
									break;
									*/
									case spr_hat54 :
								        normal_play(trol_0_act);
							        break;
									case spr_hat58 :
								        normal_play(nk_1_act);
									break;
									case spr_hat65:
									    normal_play(eng_0_act);
									break;
									case spr_hat72:
									    if (a_cooltime <= 0) {
									        if (bullet > 0) {
												bullet -= 1
								                normal_play(snow_4_act);
									        }
											else {
											    norm_attack()
											}
										}
									break;
									case spr_hat73:
									    normal_play(ass_0_act);
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
									switch(level) {
											case 0:
												norm_attack()
											break;
											case 1:
												norm_attack()
											break;
											default:
											if(gi > 10) {
												a_cooltime = 36 + round(big_val * 3);
	                                            arm_all_normal();
	                                            jumping = false;
	                                            arm_type = "attack"
	                                            arm_movement(3, -3, 10, 10);
												prt_val_add(Val.gi, -10);
												server78_create_instace(healer_skill3, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
											}
											else {
												norm_attack()
											}
										break;
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
											normal_play(fly_0_act);
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
					if (keyboard_check_released(global.keyd)) {
						switch(global.hat) {
							case spr_hat27 :
							if (a_cooltime <= 0) {
								if (mana >= 50 - level * 5) {
									prt_val_add(Val.mp, -50 + level * 5);
									normal_play(charge_1_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / " + string(50 - level * 5) + "(" + string(50 - level * 5) + ")";
								}
							}
							break;
						}
					}
				}// 돌진D 부분

				if (a_possible and skill_posible = true and hat_bye == false) {
					//모든 공격의 시작.
					if (instance_exists(obj_card_manager)) { 
						if (first_item_play == true and obj_card_manager.get_name() == "두번 반복") {
							item_twice();
						}
					}
					if (keyboard_check_pressed(global.ctrl) and !instance_exists(obj_life_ui)) {
						instance_create_depth(x, y, depth - 1, obj_life_ui);
					}
					
					if (keyboard_check(global.keyd)) {
						skill_start(global.hat, 0);
					}//1차 스킬 

					if (keyboard_check(global.keyq)) {
						if (level >= 1) {
							skill_start(global.hat, 1);
						}
					}//2차 스킬
		
					if (keyboard_check(global.keyw)) {
						if (level >= 2) {
							skill_start(global.hat, 2);
						}
					}//3차스킬
			
					if (keyboard_check(global.keye)) {
						if (level >= 3) {
							skill_start(global.hat, 3);
						}
					}//4차스킬
					
					if (keyboard_check(global.keyr)) {
						if (level > 3) {
							skill_start(global.hat, 4);
						}
					}//5차스킬	
					if (keyboard_check(global.keyg)) {
							switch(global.stats) {
								case spr_stats4 :
									if (b_cooltime <= 0) {
										a_cooltime = -100
										normal_play(stats4_act)
									}
									else {
										skill_say_time = 30;
										skill_say = "스텟 쿨타임: " + string(b_cooltime / 40) + "초";
									}
								break;//대현자
							case spr_stats3:
								 if (b_cooltime <= 0) {
								    b_cooltime = 480
									server78_create_instace(stats3_skill, x, y);
								 }
								 else {
									skill_say_time = 30;
									skill_say = "스텟 쿨타임: " + string(b_cooltime / 40) + "초";
								 }
							break;//외눈박이
							case spr_stats6:
								 if (b_cooltime <= 0) {
								    b_cooltime = 1000
									stats6_type = 0
									server78_create_instace(stats6_skill, x, y);
								 }
								 else {
									skill_say_time = 30;
									skill_say = "스텟 쿨타임: " + string(b_cooltime / 40) + "초";
								 }
							break;//검삭신왕
				 	        }
					    }
					if (keyboard_check(global.keyf)) {
						if (room == room_racing) {
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
							if(big_val > 1) {
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
							else {
								if (a_cooltime <= 0 and a_possible = true) {
									if (a_cooltime <= 0 and a_possible = true) {
										if (mana >= 90 - level * 5) {
											prt_val_add(Val.mp, - 90 + level * 5);
											normal_play(sward_1_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "MP: " + string(mana) + " / "  + string(90 - level * 5) + "(" + string(90 - level * 5)  + ")";
										}
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
						if (distance_to_object(obj_absfish) < 20 or distance_to_object(yo_skill2) < 20) {
							if (a_cooltime <= 0 and a_possible == true) {
								normal_play(fish_eat)
							}
						}
						else {
							if (distance_to_object(obj_fish) < 30 or distance_to_object(yo_skill3) < 30) {
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
	var dash_type = 0;
	if (global.hat == spr_hat19 and level == 3) {
		dash_type = 1;
	}
	else if (global.hat == spr_level5_hat15) {
		dash_type = 2;	
	}
	else if (card_name_check("쓸만한 점멸")) {
		dash_type = 3;	
	}
	switch (dash_type) {
		case 0 :
			if (keyboard_check(global.keys) and stemina > 5) {	
				stemina -= 5;
				main_speed = 12;
			}
			else {
				main_speed = 7;
			}
			break;
		case 1:
			if (keyboard_check(global.keys) and stemina > 5) {	
				stemina -= 5;
				main_speed = 19;
			}
			else {
				main_speed = 12;
			}
			break;
		case 2:
			if (keyboard_check(global.keys) and stemina > 5) {	
				stemina -= 5;
				main_speed = 19;
			}
			else {
				main_speed = irandom(30);
			}
			break;
		case 3:
			if (keyboard_check(global.keys) and hp > 5) {
				if (flash_time <= 0) {
					hp -= 5;
					flash_time = 400;
					arm_type = "attack";
					server78_create_instace(obj_flash, x, y);
					for(var i = 50; i > 0; i--) {
						if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))
						{
							x += lengthdir_x(5 * i, YA - 90);
							y += lengthdir_y(5 * i, YA - 90);
							break;
						}//앞으로 자동이동
					}
					server78_create_instace(obj_flash_2, x, y);
					effect_card();
				}
				else {
					skill_say_time = 30;
					skill_say = "점멸 쿨타임: " + string(flash_time / 40) + "초";
				}
			}
			else {
				main_speed = 7;
			}
		break;
	}
	with (obj_crown) {
		if (cid == global.my_cid) {
			if (activate) {
				other.main_speed += 4;
			}
			else {
				other.main_speed -= 4;	
			}
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
	

	if (a_cooltime == 0 and horse == false) {
		cancle_able = false;
		spin_able = false;
		terror_charge = 0;
		shild = false;
		go_soild = false;
		left_arm_get_bigger = false;
		seq_end();
		spin_steadly_start(false);
		no_change = 0;
		ski_ready = false
		high_speed = 1
		hide_bam = false
		view_where = 0;
		view_visible[1] = false;
		view_visible[0] = true;
		YA2 = YA;
		light_set(false);
		go_to_speed = 0;
	    go_to_speed2 = 0;
		go_to_speed_solid = 0;
		if (fishing != 0) {
			fishing = 0;
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
		seq_end();
		first_item_play = false;
		keyboard_checkE = false;
		keyboard_checkQ = false;
		keyboard_checkD = false;
		keyboard_checkW = false;
		is_babo_angle_show = false;
		target_start(false);
		spin_steadly_start(false);
		left_arm_get_bigger = false;
		face_variable = 0;
		server77_equal(serve_val.face_variable, 0, buffer_u8);
		if(global.stats = spr_stats2){
		    b_cooltime = 200
		}
		if (timeline_position > 1) {
			timeline_running = 0;
		}
		only_hat = false;
		ski_ready = false
		hat_bye = false;
		server77_equal(serve_val.only_hat, only_hat, buffer_bool);
		server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
		all_spin = 0;
		go_to_speed = 0;
		go_to_speed_solid = 0;
		jumping = false;
		a_charging = 0;
		arm_all_normal();
		left_arm_YA = 0 + 270;
		right_arm_YA = 0 + 90;
		charge = false;
		arm_movement(5, -5, 5, 5);
		if (big_shild = false) {
			if (instance_exists(serve)) {
				if (serve.kazino_time < 0) {
					go_to_scale = main_big_val * stats_big_val;		
				}
			}
		}
		if (sturn <= 0){
			if (nu_on == true) {
				nu_on = false;
				if (go_to_scale < 1) {
					go_to_scale = main_big_val * stats_big_val;
				}
				big_val = 1;
				if (normal_attack_type == spr_bigsaw) {
					aring_amount--;
					if (aring_amount < 1) {
						normal_attack_type = spr_none;
					}
				}
				else {
					normal_attack_type = spr_none;
				}
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
			shild = false;
			arm_type = "normal"
			if (no_change == false) {
				a_cooltime = 0;
				cancle_able = false;
				spin_able = false;
				a_possible = true;
				YA2 = YA;
			}
			if (global.hat = spr_hat75) {
			    combo_time = 0
			}
			EQ = false;
			ride = false;
			spin_scale = 1
			counter_attak = false
			extra_speed = 0
			if (normal_attack_type == spr_bigsaw) {
					aring_amount -= 1;
					if (aring_amount < 1) {
						normal_attack_type = spr_none;
					}
				}
				else {
					normal_attack_type = spr_none;
				}
			high_speed = 1
			horse = false
			face_YA = 0
			hat_angle = 0
			hide_bam = false
			YA_changeable = false;
			view_visible[0] = true;
			view_visible[2] = false;
			view_visible[3] = false;
			view_where = 0;
			obj_telescope_view.tele = false;
			hat_move = false;
			big_shild = false;
			server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
			if (buff_index != buff_giligili2 and a_cooltime < 1 and a_possible == true) {
				go_soild = false;
			}
		}
	}//공격을 받았다!, 피격 상호작용
	
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
					jumping = false;
					seq_end();
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
					spin_scale = 1;
					hat_angle = 0
					face_YA = 0
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
					stats_speed = 0;
					a_cooltime = 26 + round(big_val * 3);
					arm_all_normal();
					arm_type = "attack"
					hide_bam = false
					left_arm_YA = 0
					right_arm_YA = 0 
					left_foot_YA = 0 - 5
					right_foot_YA = 0 + 5
					arm_movement(7, -6, 10, 10);
					foot_movement(-5, 5, -3, -3);
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
						    spr_armr_more = spr_not
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
							arm_type_more = "hide_1";
							arm_type_num = 0;
							server78_create_instace(hide_skill1, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))
						break;
						case 6:
						    arm_all_normal();
							temp_YA = YA;
						    arm_type_more = "hide_1";
							arm_type_num = 0
							spin_scale = 1.8
						    all_spin = 1
							all_spin_limit = 136
						    spr_armr_more = spr_not2
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
							server78_create_instace(hide_skill11, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))
						break;
						case 20221013:
						    arm_all_normal();
							temp_YA = YA;
						    arm_type_more = "hide_1";
							arm_type_num = 0
							spin_scale = 1.8
						    all_spin = 1
							all_spin_limit = 136
						    spr_armr_more = spr_not2
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
							server78_create_instace(hide_skill4, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))
						break;
						case 9:
                            arm_type = "attack";
                            arm_type_more = "none";
                            arm_movement(3, 0, 7, 0);
                            foot_movement(0, 0, 0, 0);
                            face_YA = 0
                            hat_angle = 0
                            right_arm_YA = 0 + 120
                            left_arm_YA = 0 + 10
                            right_foot_YA = 0
                            left_foot_YA = 0 
                            spin_able = false;
                            invisible = false
                            invisible_time = 0;
                            a_cooltime = 15;
                            terror_charge = 0
                            alpha = 1;
                            a_possible = true;
                            all_spin = 1;
                            face_YA = 0
                            hat_angle = 0
                            cancle_able = false
                            all_spin_limit = 360;
                            go_to_speed = 25;
                            temp_YA = YA;
                            cli_alpha = 1;
                            server78_create_instace(ane_skill11, x, y)
                            server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
                        break;
						case 10:
							cancle_able = false;
							invisible = false;
							invisible_time = 0;
							a_cooltime = 20;
							terror_charge = 0
							alpha = 1;
							a_possible = true;
							cli_alpha = 1;
							server78_create_instace(lebe_skill3, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90))	
						break;
						case 400:
							cancle_able = false;
							a_possible = true;
							spin_able = false;
							invisible = false;
							invisible_time = 0;	
							a_cooltime = 15;
							arm_type = "attack"
							arm_type_more = "spear";
                            arm_movement(2, -4, 10, -10);
                            foot_movement(-6, 5, -6, 5);
                            left_arm_YA = 0 + 25;
                            right_arm_YA = 0 + 25;
                            left_foot_YA = 0 + 110;
                            right_foot_YA = 0 - 10
                            temp_YA = YA;
                            switch(global.skin) {
							case 0:
								spr_arml_more = spr_ass_w1
							break;
							case 1:
								spr_arml_more = spr_blackass_w1
							break;
							}		    
                            go_to_speed = 30;
							cli_alpha = 1;
                            server78_create_instace(ass_skill4, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));
							server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
						break;
						case 20210802:
						   a_cooltime = 36 + round(big_val * 3);
	                       jumping = false;
	                       arm_movement(3, -3, 10, 10);
	                        server78_create_instace(n_attack_area, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
							arm_all_normal();
                            a_possible = true
                            arm_type = "normal";
                            arm_type_more = "none";
                            cancle_able = false;
                            go_to_speed = 0;
                            big_val_time = 0
                            charge = false;
                            all_spin_limit = 0;
                            obj_telescope_view.tele = false;
                            obj_telescope_view.go_pixel = 0;
                            view_visible[0] = false;
                            view_visible[1] = true;
                            view_where = 0;
                            server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);;
						break;
						case 20220111:
			                 invisible_time = 0;
			                 a_possible = true;
			                 cancle_able = false;
			                 normal_play(ass_3_act)
			            break;
						case 20230810:
							cancle_able = false;
							a_cooltime = 75
							spin_scale = 1
							arm_type_num = 0
							terror_charge = 0
							arm_type = "attack";
							arm_type_more = "ski_1";
							spin_able =  false
						break;
					}
				}
			}
			if (keyboard_check_released(global.keya)) {
				switch (terror_charge) {
					case 20220509:
			                 server78_create_instace(nk_skill11, x ,y);
			        break;
					case 20220813:
						a_cooltime = 20
						all_spin = 1
						spin_scale = 1.5
						effect_index = spr_none;
						all_spin_limit = 360
						terror_charge = 0
						arm_type = "normal";
						arm_type_more = "none";
						cancle_able = false
						server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
						a_possible = true;
						ride = false;
						temp_YA = YA;
						var t = instance_create_depth(x, y, depth, pota_skill31_back1)
						t.YA = YA
						server78_create_instace(jam_skill21, x, y);
						arm_type = "attack";
					break;
					case 17 :
					if(x_cooltime < 0) {
						x_cooltime = 400;
						server78_create_instace(ane_skill21, x, y);
					}
					break;
					case 20240128:
						a_cooltime = 30
						terror_charge = 0
						cancle_able = false
						norm_attack()
						jumping = false
						jump_time = 0;
						jump_try = 0;
						hide_bam = false

				}
			}
			
			if (keyboard_check(global.keyd)) {
				switch (terror_charge) {
					case 7:
						if (a_a_cooltime < 0) {
							if (mana >= 10) {
								prt_val_add(Val.mp, -10);
								a_a_cooltime = 40;
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
							a_a_cooltime = 40;
							server78_create_instace(mili_skill4_2, x + lengthdir_x(135 * big_val, YA - 90), y + lengthdir_y(135 * big_val, YA - 90));
						}
					break;
					case 11:
					if (a_possible = false) {
						if (mana >= 0) {
							if(a_a_cooltime < 0) {
								prt_val_add(Val.mp, -24);
								a_a_cooltime = 40;
								terror_charge = 11
								server78_create_instace(spear_skill1, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
							}
						}
						else {
							skill_say_time = 30;
							skill_say = "MP: " + string(mana) + " / "  + "24(0)";
						}
					}
					break;
					case 12:
					if (sturn <= 0){
						if(a_a_cooltime < 0) {
							a_a_cooltime = 40;
							server78_create_instace(nuke_skill41, x + lengthdir_x(105 * big_val, YA - 90), y + lengthdir_y(105 * big_val, YA - 90));
						}
					}
					break;
					case 13:
						if (a_a_cooltime < 0) {
							if (mana >= 45) {
								prt_val_add(Val.mp, -45);
								a_a_cooltime = 50;
								server78_create_instace(sea_skill3, x + lengthdir_x(135 * big_val, YA - 90), y + lengthdir_y(135 * big_val, YA - 90));
							}
							else {
								skill_say_time = 30;
								skill_say = "MP: " + string(mana) + " / "  + "45(45)";
							}
						}
					break;
					case 20210707:
						if (mana > 20) {
							prt_val_add(Val.mp, -20);
							cancle_able = false;
							go_to_speed = 0;
							a_cooltime = -1
							arm_type_num = 0
							terror_charge = 0
							a_possible = false
							arm_type = "attack";
							arm_type_more = "sang_1";
						}
						else {
							skill_say_time = 30;
							skill_say = "MP: " + string(mana) + " / "  + "20(20)";
						}
					break;
					case 16:
					if(a_a_cooltime < 0) {
	                    a_a_cooltime = 40;
						normal_play(sea_1_act11)
					}
					break;
				}
			}
		}
		if (keyboard_check_released(global.keyq)) {
			switch(terror_charge) {
				case 11:
					if (mana >= 25) {
							if(a_a_cooltime < 0) {
								prt_val_add(Val.mp, -25);
								arm_all_normal();
								a_a_cooltime = 200;
								arm_type = "attack"
								arm_type_more = "apple_1";
								arm_movement(13, -13, 2, 2);
								shild = true;
								effect_index = effect_shild;
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
				if (sturn <= 0){
					if(a_a_cooltime < 0) {
						a_a_cooltime = 40;
						server78_create_instace(nuke_skill42, x + lengthdir_x(5 * big_val, YA - 90), y + lengthdir_y(5 * big_val, YA - 90));
					}
				}
				break;
				case 20220111:
				    a_possible = true;
			         cancle_able = false;
					 spr_armr_more = spr_none;
				     spr_arml_more = spr_none;
                     right_arm_YA = 0;
					 terror_charge = 0
					 a_cooltime = 20
					 arm_type_more = "go 90";
					 invisible_time = 200;
                     server78_create_instace(ass_skill2, x, y);
				break;
				case 20220530:
				     a_cooltime = 30
					 spin_scale = 1
					 terror_charge = 0
			         server78_create_instace(sea_skill2, x, y);
					 arm_type = "attack";
				     spin_able =  false
				break;
			    }
		    }
		if (keyboard_check(global.keyw)) {
			switch(terror_charge) {
				case 12:
				if (sturn <= 0){
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
				}
				break;
				case 14:
					normal_play(shit_4_act);
					terror_charge = 0;
					cancle_able = false;
				break;
			    case 15:
				   if(a_a_cooltime <= 0) {
					  if(gi >= 150) {
					      hp = hp * 0.6;
					      prt_val_add(Val.gi, -150);
					      normal_play(he_3_act)
			          }
				      else {
					      skill_say_time = 30;
					      skill_say = "GI: " + string(gi) + " / "  + "150(150)";
				     }
			 }
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
						server78_create_instace(jam_skill41, x, y);
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
		sturn_alpha = false;
		invisible = false;
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
				left_arm_YA = 0 + 270;
				right_arm_YA = 0 + 90;
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
						arm_movement(6, -6, 12, -2);
                        foot_movement(11, -2, -6, -4);
                        face_YA = 10
                        hat_angle = 10
                        right_arm_YA = 0 + 90
                        left_arm_YA = 0 + 10
                        right_foot_YA = 0 + 30
                        left_foot_YA = 0 - 65
                        temp_YA = YA;
						a_cycle = 2
					break;
					case 1 :
						arm_type_num = 0
						arm_movement(6, -6, -2, 12);
                        foot_movement(2, -11, -4, -6);
                        face_YA = -10
                        hat_angle = -10
                        right_arm_YA = 0 - 10
                        left_arm_YA = 0 - 90
                        right_foot_YA = 0 + 65
                        left_foot_YA = 0 - 30
                        temp_YA = YA;
						a_cycle = 2
					break;
					}
				break;
				case "spear":
					spr_armr_more = spr_spear;
					right_arm_YA = 02 - 100;
				break;
				case "ma":
					 left_arm_YA = 0 + 51
					 right_arm_YA = 0 - 240;
					 arm_movement(0,0,15,0)
				break;
				case "ma_1":
					 left_arm_YA = 0 - 120;
					 right_arm_YA = 0
					 arm_movement(0, -3, 0, 10);
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
						left_arm_YA = 0;
						spr_arml_more = spr_none;
						spr_armr_more = spr_new_sward1;
						arm_type_num = 1;
						left_goto_YA = 0;
						right_arm_YA = - 10;
						right_goto_YA = + 160;
						arm_spin_able = 1;
						arm_spin_speed = 30;
						all_spin = true;
						all_spin_limit = -30;
						right_arm_deltay = 10;
						left_arm_deltay = 10;
						right_foot_deltay = 0;
						left_foot_deltay = 0;
						a_cycle = 20
					break;
					case 1 :
						spr_armr_more = spr_none;
						spr_arml_more = spr_new_sward1;
						arm_type_num = 0;
						arm_spin_able = 1;
						arm_spin_speed = 20;
						left_arm_YA =  - 10;
						right_goto_YA = 0;
						left_goto_YA = + 160;
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
						left_arm_YA = 0;
						spr_arml_more = spr_none;
						switch(global.skin) {
	                    case 3:
		                    spr_armr_more = spr_holysward1;
                        break;
                        default:
		                    spr_armr_more = spr_new_sward1;
                        break;
                        }
						arm_type_num = 1;
						left_goto_YA = 0;
						right_arm_YA = 0 + 120;
						right_goto_YA = 0 - 50;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						a_cycle = 12;
					break;
					case 1 :
						spr_armr_more = spr_none;
						switch(global.skin) {
	                    case 3:
		                    spr_arml_more = spr_holysward1;
                        break;
                        default:
		                    spr_arml_more = spr_new_sward1;
                        break;
                        }
						arm_type_num = 0;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						left_arm_YA = 0 - 120;
						right_goto_YA = 0;
						left_goto_YA = 0 + 50;
						a_cycle = 12;
					break;
					}
				break;
				case "sward_3" :
						switch(arm_type_num) {
					case 0 :
						left_arm_YA = 0;
						spr_arml_more = spr_none;
						switch(global.skin) {
	                    case 3:
		                    spr_armr_more = spr_holysward31;
                        break;
                        default:
		                    spr_armr_more = spr_sward3;
                        break;
                        }
						arm_type_num = 1;
						left_goto_YA = 0;
						right_arm_YA = 0 + 100;
						right_goto_YA = 0 - 50;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						a_cycle = 6;
					break;
					case 1 :
						spr_armr_more = spr_none;
						switch(global.skin) {
	                    case 3:
		                    spr_arml_more = spr_holysward31;
                        break;
                        default:
		                    spr_arml_more = spr_sward3;
                        break;
                        }
						arm_type_num = 0;
						arm_spin_able = 1;
						arm_spin_speed = 5;
						left_arm_YA = 0 - 100;
						right_goto_YA = 0;
						left_goto_YA = 0 + 50;
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
				case "hammer_2":
					 switch(arm_type_num) {
                    case 0 :
                        if (left_arm_YA > YA - 200) {
                            left_arm_YA -= 5;
                        }
                        right_arm_YA = -85;
                        face_YA = -20
                        hat_angle = -20 
                        left_foot_YA = 0 -25
                        right_foot_YA = 0 + 10
                        arm_movement(6,0,0,0)
                        foot_movement(-7,-5,2,5)
                        right_arm_yscale = -1
                    break;
                    case 1:
                        go_to_speed = 0
                        face_YA = 5
                        hat_angle = 5 
                        if (left_arm_YA < YA + 25) {
                            left_arm_YA += 35;
                        }
                        right_arm_YA = 0 -35;
                        arm_movement(6,2,8,12)
                        foot_movement(-5,5,0,0)
                        left_foot_YA = 0 -35
                        right_foot_YA = 0 + 35
                        right_arm_yscale = 1
                    break;
                    }
				break;
				case "sward_r" :
				temp_YA = YA;
				switch(arm_type_num) {
					case 0 :
						YA = 15
						spr_armr_more = spr_spener
						spr_arml_more = spr_none
					    arm_type_num = 1;
					    right_foot_YA = 0 + 7
					    left_foot_YA = 0 + 7;
						left_arm_YA = 0 - 24
						right_arm_YA = 0 + 100;
						arm_movement(6,-3,3,5)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 6; //동작 1
						server202_sound(eng_swing_sound);
						server202_sound(eng_swing_sound);
				   break;
				   case 1 :
						YA = -15
						spr_armr_more = spr_spener;
					    arm_type_num = 2;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 24
						right_arm_YA = 0 + 100;
						arm_movement(6,-3,3,5)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 2
				   break;
				   case 2 :
						YA = -75
					    arm_type_num = 3;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 24
						right_arm_YA = 0 + 100;
						arm_movement(6,-3,3,5)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 3
				   break;
				   case 3 :
						YA = -105
					    arm_type_num = 4;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 60
						right_arm_YA = 0 + 10;
						arm_movement(6,-3,3,0)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 4
				   break;
				   case 4 :;
						YA = -105
						spr_armr_more = spr_none
						spr_arml_more = spr_none
					    arm_type_num = 5;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 60
						right_arm_YA = 0 + 10;
						arm_movement(6,-3,3,0)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 5 
				   break;
				   case 5 :
						YA = -15
						spr_armr_more = spr_none
						spr_arml_more = spr_spener
					    arm_type_num = 6;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 100
						right_arm_YA = 0 + 24;
						arm_movement(3,-6,5,3)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 6; //동작 6
						server202_sound(eng_swing_sound);
						server202_sound(eng_swing_sound);
				   break;
				   case 6 :
						YA = 15
					    arm_type_num = 7;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 60
						right_arm_YA = 0 + 10;
						arm_movement(6,-3,3,0)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 7
				   break;
				   case 7 :
						YA = 75
					    arm_type_num = 8;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 60
						right_arm_YA = 0 + 10;
						arm_movement(6,-3,3,0)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 8
				   break;
				   case 8 :
						YA = 105
						spr_armr_more = spr_none
						spr_arml_more = spr_none
					    arm_type_num = 9;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 60
						right_arm_YA = 0 + 10;
						arm_movement(6,-3,3,0)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 9
				   break;
				   case 9 :
						YA = 105
					    arm_type_num = 0;
					    right_foot_YA = 0 + 4
					    left_foot_YA = 0 + 4;
						left_arm_YA = 0 - 60
						right_arm_YA = 0 + 10;
						arm_movement(6,-3,3,0)
						foot_movement(-6 ,4,-15,-15)
					    all_spin = 0
						a_cycle = 3; //동작 10
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
				case "bwiza_2" :
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						left_arm_YA = 0 - 75
						right_arm_YA = 0 + 144
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(7, -2, 12, 0);
						foot_movement(-4, 4, -7, -7);
						a_cycle = 5; 
					break;
					case 1 :
						arm_type_num = 0
						left_arm_YA = 0 - 144
						right_arm_YA = 0 + 75
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(2, -7, 0, 12);
						foot_movement(-4, 4, -7, -7);
						a_cycle = 5; 
					break;
					/*case 1 :
						arm_type_num = 0
						arm_movement(0, 0, 1, 12);
						a_cycle = 4;
					break;*/
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
				case "studing_1" :
					temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 2, 0, 0);
						aexp += 5;
						prt_val_add(Val.mp, 3);
						prt_val_add(0, 6);
						a_cycle = 3;
					break;
					case 1 :
						arm_type_num = 2
						arm_movement(0, 0, 0, 0);
						a_cycle = 3;
					break;
					case 2 :
						arm_type_num = 0
						arm_movement(0, -2, 0, 0);
						a_cycle = 3;
					break;
					}
				break;
				case "tu_3" :
					temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						left_arm_YA = 0 + 245;
                        right_arm_YA = 0 + 290;
                        arm_movement(0, 0, 0, 17)
						extra_speed = -2
						a_cycle = 5;
						server78_create_instace(tu_skill3_temp, x, y);
					break;
					case 1 :
						arm_type_num = 2
						arm_movement(2, -4, 10, -10);
						foot_movement(-6, 5, -6, 5);
						left_arm_YA = 0 + 25;
						right_arm_YA = 0 + 25;
						left_foot_YA = 0 + 110;
						right_foot_YA = 0 - 10	
						a_cycle = 5;
						extra_speed = -2
					break;
					case 2 :
						arm_type_num = 3
						arm_movement(-4, -5, 2, -6);
						foot_movement(4, -4, -3, -8)
						left_arm_YA = 0 + 220;
						right_arm_YA = 0 + 25
						left_foot_YA = 0 - 35;
						right_foot_YA = 0 + 45
						a_cycle = 5;
						extra_speed = -2
					break;
					case 3 :
						arm_type_num = 0
						arm_movement(-1, 2, -5, 5);
						foot_movement(3, -2, 3, -2);
						left_arm_YA = 0 + 12;
						right_arm_YA = 0 + 12;
						left_foot_YA = 0 + 55;
						right_foot_YA = 0 - 5
						a_cycle = 5;
						extra_speed = -2
					break;
					}
				break;
				case "tu_4" :
					temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						left_arm_YA = 0 + 245;
                        right_arm_YA = 0 + 290;
                        arm_movement(0, 0, 0, 17)
						extra_speed = -5
						a_cycle = 5;
						server78_create_instace(tu_skill3_temp, x, y);
					break;
					}
				break;
				case "seobu_3" :
					temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						left_arm_YA = 0 
						right_arm_YA = 0
						left_foot_YA = 0 - 40
						right_foot_YA = 0
						arm_movement(4, -2, 10, -1);
						foot_movement(5, 0, -5, -4);
						a_cycle = 3; 
					break;
					case 1 :
						arm_type_num = 2
						left_arm_YA = 0 - 20
						right_arm_YA = 0 + 20
						left_foot_YA = 0 + 20
						right_foot_YA = 0 + 35
						arm_movement(7, -2, 11, 3);
						foot_movement(-3, 0, 4, -4);
						a_cycle = 3 
					break;
					case 2 :
						arm_type_num = 3
						left_arm_YA = 0 - 20
						right_arm_YA = 0 + 20
						left_foot_YA = 0 + 20
						right_foot_YA = 0 + 35
						arm_movement(7, -5, -8, 8);
						foot_movement(-9, 0, -5, -4);
						a_cycle = 3; 
					break;
					case 3 :
						arm_type_num = 0
						left_arm_YA = 0 - 20
						right_arm_YA = 0 + 20
						left_foot_YA = 0 + 20
						right_foot_YA = 0 + 35
						arm_movement(15, -8, -8, 8);
						foot_movement(-10, 1, -6, -10);
						a_cycle = 3; 
					break;
					}
				break;
				case "sea_2" :
				    temp_YA = YA;
					    switch(arm_type_num) {
					case 0:
					    arm_type_num = 1
					    left_arm_YA = 0 + 245;
                        right_arm_YA = 0 + 290;
                        foot_movement(0, 0, 3 , -14)
                        arm_movement(0, 0, 0, 17)
					    a_cycle = 8;
				    break;
					case 1:
					    arm_type_num = 0
					    right_arm_YA = 0;
                        arm_movement(0, -3, 0, 10);
                        server78_create_instace(sea_skill21, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
					    a_cycle = 8;
				    break;
					}
				break;
				case "gun_2" :
				    temp_YA = YA;
					    switch(arm_type_num) {
					case 0:
						arm_movement(0, 0, -5, 14);
                        left_arm_YA = 0 + 220;
						right_arm_YA = 0 - 45;
						arm_type_num = 1;
						a_cycle = 4
				    break;
					case 1:
						arm_movement(0, 0, -5, 14);
                        left_arm_YA = 0 + 220;
						right_arm_YA = 0 - 45;
				    break;
					}
				break;
				case "nk_1" :
				    temp_YA = YA;
					    switch(arm_type_num) {
					case 0:
					    server78_create_instace(nk_skill1, x , y)
					    arm_movement(8, -8, 2, 2);
						arm_type_num = 1
					    a_cycle = 10;
				    break;
					case 1:
					    arm_movement(8, -8, 2, 2);
					    arm_type_num = 0
					    a_cycle = 10;
				    break;
					}
				break;
				case "seobu_4" :
					temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						left_foot_YA = 0 - 45
						left_arm_YA = 0 + 110
						arm_movement(5, 0, 20, 5);
						foot_movement(5, 0, -5, -4);
						a_cycle = 3;
					break;
					case 1 :
						arm_type_num = 0
						left_foot_YA = 0 - 45
						left_arm_YA = 0 + 110
						arm_movement(5, 0, 20, 0);
						foot_movement(5, 0, -5, -4);
						a_cycle = 3;
					break;
					}
				break;
				case "ik_1" :
					temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
					    all_YA_change_delta(65)
						spr_armr_more = spr_bucket;
						arm_type_num = 1
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 2; 
					break;
					case 1 :
					    all_YA_change_delta(-20)// 45
						arm_type_num = 2
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 2; 
					break;
					case 2 :
					    all_YA_change_delta(-30)//15
						arm_type_num = 3
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 2; 
					break;
					case 3 :
					    all_YA_change_delta(-50)// -65
						arm_type_num = 4
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 2; 
					break;
					case 4 :
					    all_YA_change_delta(-20)//-85
						arm_type_num = 5
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 2;
					break;
					case 5 :
					    all_YA_change_delta(-5)//-90
						arm_type_num = 6
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 2;
					break;
					case 6 :
					    all_YA_change_delta(-20)// -110
						arm_type_num = 7
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 10;
					break;
					case 7 :
					    all_YA_change_delta(80)
						arm_type_num = 8
						left_arm_YA = 0 - 14
						right_arm_YA = 0 + 50
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(6, -5, 4, 0);
						foot_movement(-6, 6, -15, -15);
						a_cycle = 2;
					break;
					/*case 8 :
						arm_type_num = 8
						spr_armr_more = spr_none
						left_arm_YA = 0 
						right_arm_YA = 0
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(0, 0, 0, 0);
                        foot_movement(0, 0, 0, 0);
						a_cycle = 2;
					break;*/
				}
				break
				case "hide_1" :
				    temp_YA = YA;
						switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						left_arm_YA = 0 - 40
						right_arm_YA = 0 + 110
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(5, -1, 15, 15);
						foot_movement(-6, 6, -7, -7);
						a_cycle = 2; 
					break;//동작 1
					case 1 :
						arm_type_num = 2
						left_arm_YA = 0 - 90
						right_arm_YA = 0 + 60
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(2, -1, 15, 15);
						foot_movement(-6, 6, -7, -7);
						a_cycle = 2; 
					break;//동작 2
					case 2 :
						arm_type_num = 3
						left_arm_YA = 0 - 45
						right_arm_YA = 0 - 37
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(5, -9, 15, 16);
						foot_movement(-6, 6, -7, -7);
						a_cycle = 2; 
					break;//동작 3
					case 3 :
					    spin_scale = 1
						arm_type_num = 4
						left_arm_YA = 0 + 45
						right_arm_YA = 0 - 70
						left_foot_YA = 0 
						right_foot_YA = 0
						arm_movement(2, -2, 13, 18);
						foot_movement(-6, 6, -7, -7);
						a_cycle = 30; 
					break;
					
					}
				break;
				case "drinking_red" :
					temp_YA = YA;
					hp += 0.5;
				break;
				case "drinking_blue" :
					temp_YA = YA;
					prt_val_add(Val.mp, 1);
					if(global.hat = spr_hat70) {
                        prt_val_add(Val.mp, 1.5);
                    }
				break;
				case "temp_YA_async" :
					temp_YA = YA;
				break;
				case "a_w" :
					buff_index = spr_wing1;
					buff_time = 5;
					YA_changeable = false;
				break;
				case "ass" :
				    temp_YA = YA;
				    left_arm_YA = 0 + 245;
                    right_arm_YA = 0 + 290;
                    arm_movement(0, 0, 0, 17)
				break;
				case "sang" :
					temp_YA = YA;
					switch(arm_type_num) {
						case 0 :
							arm_type_num = 0
							face_YA = - 15;
							hat_angle = -35;
							left_arm_YA = 0 - 135;
							right_arm_YA = 0 - 120;
							arm_movement(-4, -10, 0, 25)
							foot_movement(0, 0, -10, 5)
						break;
				}
				break;
				case "sang_swing" :
				switch(arm_type_num) {
					case 0 :
						face_YA = 20
						hat_angle = 45
						arm_type_num = 1
						right_arm_YA = 0 + 160
						left_arm_YA = 0 + 25
						left_foot_YA = 0 - 45
						right_foot_YA = 0 + 45
						all_spin = 1 ;
						spin_scale = 1.8
						all_spin_limit = 360;
						server78_create_instace_angle(sang_skill12, x, y);
						arm_movement(8, 0, 16, -2)
						foot_movement(0, 0, -10, 0)
						a_cooltime = 41
						a_cycle = 40
					break;
					case 1:
						face_YA = 0
						hat_angle = 0
						arm_type_num = 2
						right_arm_YA = 0 
						left_arm_YA = 0
						left_foot_YA = 0 
						right_foot_YA = 0 
						arm_movement(0, 0, 0, 0)
						foot_movement(0, 0, 0, 0)
						a_possible = true
					break;
					}
				break;
				case "sang_bow_ready" :
					face_YA = 20
					hat_angle = 45 
					arm_type_num = 1
					right_arm_YA = 0 - 35
					left_arm_YA = 0 + 45
					spr_arml_more = spr_sang_boweffect
					left_foot_YA = 0 - 45
					right_foot_YA = 0 + 45
					arm_movement(10, 0, 16, 10)
					foot_movement(0, 0, -10, 0)	
				break
				case "sang_bow" :
					switch(arm_type_num) {
						case 0 :
							face_YA = 20
							hat_angle = 45 
							arm_type_num = 1
							right_arm_YA = 0 - 35
							left_arm_YA = 0 + 45
							spr_arml_more = spr_sang_boweffect
							left_foot_YA = 0 - 45
							right_foot_YA = 0 + 45
							arm_movement(10, 0, 16, 10)
							foot_movement(0, 0, -10, 0)
							a_cycle = 33
						break;
						case 1 :
							face_YA = 20
							hat_angle = 45
							arm_type_num = 2
							right_arm_YA = 0 + 160
							left_arm_YA = 0 + 45
							left_foot_YA = 0 - 45
							right_foot_YA = 0 + 45
							arm_movement(8, 0, 16, -2)
							foot_movement(0, 0, -10, 0)
							a_cycle = 7
						break;
						case 2 :
							face_YA = 20
							hat_angle = 45 
							arm_type_num = 1
							right_arm_YA = 0 - 35
							left_arm_YA = 0 + 45
							spr_arml_more = spr_sang_boweffect
							left_foot_YA = 0 - 45
							right_foot_YA = 0 + 45
							arm_movement(10, 0, 16, 10)
							foot_movement(0, 0, -10, 0)
							a_cycle = 7
						break;
						case 3 :
							face_YA = 20
							hat_angle = 45
							arm_type_num = 4
							right_arm_YA = 0 + 160
							left_arm_YA = 0 + 45
							left_foot_YA = 0 - 45
							right_foot_YA = 0 + 45
							arm_movement(8, 0, 16, -2)
							foot_movement(0, 0, -10, 0)
							a_cycle = 2
						break;
						case 4 :
							face_YA = 20
							hat_angle = 45 
							arm_type_num = 3
							right_arm_YA = 0 - 35
							left_arm_YA = 0 + 45
							spr_arml_more = spr_sang_boweffect
							left_foot_YA = 0 - 45
							right_foot_YA = 0 + 45
							arm_movement(10, 0, 16, 10)
							foot_movement(0, 0, -10, 0)
							a_cycle = 2
						break;
						}
					break;
				case "newb_1" :
				temp_YA = YA;
					switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						left_arm_xscale = -1
						spr_arml_more = spr_newb1
						left_arm_YA = 0 - 160;
                        right_arm_YA = 0 + 290;
                        arm_movement(0, 0, 0, 17)
						a_cycle = 6;
					break;
					case 1 :
						arm_type_num = 2
						arm_movement(2, -4, 10, -10);
						foot_movement(-6, 5, -6, 5);
						left_arm_xscale = 1
						left_arm_YA = 0 + 25;
						right_arm_YA = 0 + 25;
						left_foot_YA = 0 + 110;
						right_foot_YA = 0 - 10	
						spr_arml_more = spr_none
						a_cycle = 6;
						server78_create_instace(newb_skill1, x + lengthdir_x(-30, YA - 90), y + lengthdir_y(-30, YA - 90))
					break;
					case 2 :
						arm_type_num = 3
						right_arm_yscale_1 = -1
						spr_armr_more = spr_newb1
						left_arm_YA = 0 - 290;
                        right_arm_YA = 0 + 130;
                        arm_movement(4, 4, 17, 0)
						a_cycle = 6;
					break;
					case 3 :
						switch(level) {
							case 0 : 
								arm_type_num = 4
							break;
							default:
								arm_type_num = 6
							break;
						}
						arm_movement(4, -2, -10, 10);
						foot_movement(-5, 6, -5, 6)
						right_arm_yscale = 1
						left_arm_YA = 0 - 25;
						right_arm_YA = 0 - 25;
						left_foot_YA = 0 + 10;
						right_foot_YA = 0 - 110	
						spr_armr_more = spr_none
						a_cycle = 6;
						server78_create_instace(newb_skill1, x + lengthdir_x(-30, YA - 90), y + lengthdir_y(-30, YA - 90))
					break;
					case 4:
						arm_type_num = 5
						left_arm_YA = 0 + 30;
						right_arm_YA = 0 + 120;
						left_foot_YA = 0
						right_foot_YA = 0 
						spr_armr_more = spr_newb4_2
						face_YA = 20
						a_cycle = 30;
						arm_movement(10, -3, 16, -8)
						foot_movement(-6, 5, -6, 5);
					break;
					case 5:
						arm_type_num = 12
						arm_movement(4, -2, -10, 10);
						foot_movement(-5, 6, -5, 6)
						left_arm_YA = 0 - 25;
						right_arm_YA = 0 - 25;
						left_foot_YA = 0 
						right_foot_YA = 0 
						spr_armr_more = spr_none
						face_YA = 0
						a_cooltime = 40
						a_cycle = 30;
						server78_create_instace(newb_skill11, x + lengthdir_x(-40, YA - 90), y + lengthdir_y(-30, YA - 90))
					break;
					case 6 :
						arm_type_num = 7
						left_arm_xscale = -1
						spr_arml_more = spr_newb1
						left_arm_YA = 0 - 160;
                        right_arm_YA = 0 + 290;
                        arm_movement(0, 0, 0, 17)
						a_cycle = 6;
					break;
					case 7 :
							switch(level) {
								case 1 : 
									arm_type_num = 4
								break;
								default:
									arm_type_num = 8
								break;
							}
						arm_movement(2, -4, 10, -10);
						foot_movement(-6, 5, -6, 5);
						left_arm_xscale = 1
						left_arm_YA = 0 + 25;
						right_arm_YA = 0 + 25;
						left_foot_YA = 0 + 110;
						right_foot_YA = 0 - 10	
						spr_arml_more = spr_none
						a_cycle = 6;
						server78_create_instace(newb_skill1, x + lengthdir_x(-30, YA - 90), y + lengthdir_y(-30, YA - 90))
					break;
					case 8 :
						arm_type_num = 9
						right_arm_yscale = -1
						spr_armr_more = spr_newb1
						left_arm_YA = 0 - 290;
                        right_arm_YA = 0 + 130;
                        arm_movement(4, 4, 17, 0)
						a_cycle = 6;
					break;
					case 9 :
						switch(level) {
							case 2 : 
								arm_type_num = 4
							break;
							default:
								arm_type_num = 10
							break;
						}
						arm_movement(4, -2, -10, 10);
						foot_movement(-5, 6, -5, 6)
						right_arm_yscale = 1
						left_arm_YA = 0 - 25;
						right_arm_YA = 0 - 25;
						left_foot_YA = 0 + 10;
						right_foot_YA = 0 - 110	
						spr_armr_more = spr_none
						a_cycle = 6;
						server78_create_instace(newb_skill1, x + lengthdir_x(-30, YA - 90), y + lengthdir_y(-30, YA - 90))
					break;
					case 10 :
						arm_type_num = 11
						left_arm_xscale = -1
						spr_arml_more = spr_newb1
						left_arm_YA = 0 - 160;
                        right_arm_YA = 0 + 290;
                        arm_movement(0, 0, 0, 17)
						a_cycle = 6;
					break;
					case 11 :
						arm_type_num = 4
						arm_movement(2, -4, 10, -10);
						foot_movement(-6, 5, -6, 5);
						left_arm_xscale = 1
						left_arm_YA = 0 + 25;
						right_arm_YA = 0 + 25;
						left_foot_YA = 0 + 110;
						right_foot_YA = 0 - 10	
						spr_arml_more = spr_none
						a_cycle = 6;
						server78_create_instace(newb_skill1, x + lengthdir_x(-30, YA - 90), y + lengthdir_y(-30, YA - 90))
					break;
					case 12 :
						a_possible = true;
						arm_type = "none"
						cancle_able = false;
						left_arm_YA = 0;
						right_arm_YA = 0 ;
						server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
						arm_movement(0,0,0,0)
						foot_movement(0,0,0,0)
						arm_type_more = "none"
						arm_type_num = 0
					break; 
					}
				break;
				case "ski_1" :
					switch(arm_type_num) {
						case 0 :
							arm_type_num = 0;
							temp_YA = YA;
							arm_movement(7, -6, 13, 13);
							left_arm_YA = 0 + 35
							right_arm_YA = 0 - 35
							spr_armr_more = spr_ski_arm;
							spr_arml_more = spr_ski_arm;
							extra_speed = 13
							go_to_scale = 1 * big_val;
							big_val = 1.5;
							left_arm_yscale = 1;
							right_arm_yscale = 1;
							arm_type_num = 1;
							foot_movement(-7, 7, 0, 0);
							server78_create_instace(ski_skill1, x, y);
							a_cycle = 10;
						break;
						case 1 :
							ski_ready = false
							arm_type_num = 2;
							temp_YA = YA;
							go_to_speed = 2
							extra_speed = 0
							arm_movement(0, 0, 18, 0);
							left_arm_YA = 0 + 45
							right_arm_YA = 0 +	75
							spr_armr_more = spr_ski_arm1;
							spr_arml_more = spr_ski_arm;
							left_foot_YA = 0 + 55;
							right_foot_YA  = YA + 125;
							foot_movement(0, -5, 13, 0);
							a_cycle = 55;
						break;
							case 2 :
							spr_armr_more = spr_none;
							spr_arml_more = spr_none;
							arm_type = "none"
							arm_type_more = "none"
							left_arm_YA = 0 ;
							right_arm_YA = 0 ;
							left_foot_YA = 0 ;
							right_foot_YA  = YA ;
							arm_movement(0, 0, 0, 0);
							foot_movement(0, 0, 0, 0);
							all_spin_limit = YA;
						break;
						}
					break;
				case "ski_2" :
				    temp_YA = YA;
				    left_arm_yscale = 1;
					right_arm_yscale = 1;
					left_arm_YA = 0 - 25;
					right_arm_YA = 0 + 25
					left_foot_YA = 0 - 25
					right_foot_YA = 0 + 25
					spr_armr_more = spr_ski_arm;
					spr_arml_more = spr_ski_arm;
				    arm_movement(0, 0, 10, 10);
					foot_movement(0, 0, 0, 0);
				break;;
				case "hammer_end" :
					switch(arm_type_num) {
						case 0 :
							arm_type_num = 1;
							temp_YA = YA;
							arm_spin_able = false
							keyboard_checkD = false;
							arm_movement(7, 10, 0, 15);
							left_arm_YA = 0 - 135
							right_arm_YA = 0 - 65
							left_arm_get_bigger = false;
							a_cooltime = 110;
							go_to_speed = 20
							go_to_scale = 1 * big_val;
							big_val = 1.5;
							foot_movement(-7, 7, 0, 0);
							a_cycle = 10
						break;
						case 1 :
							arm_type_num = 2;
							go_to_speed = -1
							a_cycle = 7
						break;
						case 2:
							arm_type_num = 3
							a_cycle = 5
							left_arm_YA = 0 + 35
							right_arm_YA = 0 - 45
							server78_create_instace(obj_hammer_skill1_1, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));
						break;
						case 3:
							a_cycle = 80
							arm_type_num = 4
							left_arm_YA = 0 - 135
							right_arm_YA = 0 - 65
						break;
						case 4:
							arm_type_num = 0
							arm_type = "none"
							arm_type_more = "none"
							arm_movement(0, 0, 0, 0);
							foot_movement(-0, 0, 0, 0);
							a_possible = true;
							cancle_able = false;
							server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
							left_arm_YA = 0
							right_arm_YA = 0 
							left_arm_xscale = 1;
							left_arm_yscale = 1;
							spr_arml_more = spr_none
							timeline_index = spr_none
						break;
						}
					break;
				case "sang_1" :
					switch(arm_type_num) {
						case 0 :
							normal_play(sang_1_act1)
						break;
						}
				break;
				case "bam_1" :
					switch(arm_type_num) {
						case 0 :
							temp_YA = YA;
							left_arm_YA = 0 ;
							left_arm_yscale = 1;
							right_arm_yscale = 1;
							right_arm_YA = 0 ;
							arm_type_num = 1;
							arm_movement(8, -8, 2, 2);
							a_cycle = 12;
						break;
						case 1 :
							arm_type_num = 2
							arm_movement(5, -5, 5, 5);
							left_arm_YA = 0 + 270;
							right_arm_YA = 0 + 90;
							all_YA_change_delta2(60);
							temp_YA += 1;
							server78_create_instace(bam_skill11, x, y);
							a_cycle = 38; 
						break;
							case 2 :
							arm_type = "none"
							arm_type_more = "none"
							arm_movement(0, 0, 0, 0);
							foot_movement(0, 0, 0, 0);
							all_spin_limit = YA;
						break;
						}
					break;
				case "eng_1" :
					right_arm_YA = 0 - 130;
					left_arm_YA = 0 + 45;
					spr_armr_more = spr_eng_mask;
					spr_arml_more = spr_eng_gun;
					arm_movement(0, 0, 20, 25);
				break;
				case "tu_1" :
					switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						temp_YA = YA;
						left_arm_yscale = -1
						right_arm_yscale = -1
						arm_movement(0, 0, -14, 1);
						foot_movement(-2, 2, -39, 3);
						a_cycle = 4
					break;
					case 1 :
						arm_type_num = 0
						temp_YA = YA;
						left_arm_yscale = -1
						right_arm_yscale = -1
						arm_movement(0, 0, -17, 4);
						foot_movement(-2, 2, -39, 3);
						a_cycle = 4
					break;
					}
				break;;
				case "nk_reload" :
				    left_arm_YA = 0 - 290;
                    right_arm_YA = 0 - 245;
                    arm_movement(0, 0, 17,0)
				break;
				case "reload" :
					right_arm_YA = 0 - 25;
                    left_arm_YA = 0 - 45
                    arm_movement(0, 0, 0, 10)
				break;
				case "reload_1" :
					right_arm_YA = 0 - 29;
                    left_arm_YA = 0 - 15
                    arm_movement(0, 0, 0, 10)
				break;
				case "reload_2" :
					right_arm_YA = 0 - 15;
                    left_arm_YA = 0 - 5
                    arm_movement(0, 0, 0, 10)
				break;
				case "shot" :
					right_arm_YA = 0 - 25;
                    left_arm_YA = 0 + 230 ;
                    arm_movement( 3, 0, -4, 15)
				break;
				case "apple_1" :
					arm_movement(8, -8, 2, 2);
					a_cycle = 1;
					temp_YA = YA;
				break;
				case "mili_1" :
					arm_movement(4, -3, 1, 17);
					a_cycle = 1;
					face_YA = -15
					hat_angle = -35
					right_arm_YA = 0 - 80
					left_arm_YA = 0
					temp_YA = YA;
				break;	
				case "ane_1" :
 switch(arm_type_num) {
                    case 0:
terror_charge = 20240524;
                        arm_type_num = 1
                        arm_movement(-1, 0, -11, 2);
                        foot_movement(-3, 0, -7, 2);
                        face_YA = -15
                        hat_angle = -15
                        right_arm_YA = 0 - 15
                        left_arm_YA = 0 - 90
                        right_foot_YA = 0 - 15
                        left_foot_YA = 0 - 15
                        temp_YA = YA;
                        a_cycle = 2
                    break;
                    case 1:
                        arm_type_num = 2
                        arm_movement(3, 0, 7, 0);
                        foot_movement(0, 0, 0, 0);
                        face_YA = 0
                        hat_angle = 0
                        right_arm_YA = 0 + 120
                        left_arm_YA = 0 + 10
                        right_foot_YA = 0
                        left_foot_YA = 0 
                        temp_YA = YA;
                        a_cycle = 2
                    break;
                    case 2:
                        arm_type_num = 3
                        arm_movement(12, -16, 16, -16);
                        foot_movement(13, -5, 4, -14);
                        face_YA = 25
                        hat_angle = 45
                        right_arm_YA = 145
                        left_arm_YA = 35
                        right_foot_YA = 0 + 100
                        left_foot_YA = 0  -10
                        temp_YA = YA;
                        terror_charge = 9;
                        server78_create_instace(ane_skill1, x, y);
                    break;
				}
				break;
				case "ane_2" :
                switch(arm_type_num) {
                    case 0:
                        arm_type_num = 1
                        arm_movement(4, 0, 10, 8);
                        foot_movement(0, 0, 0, 0);
                        right_arm_YA = 0 + 90
                        left_arm_YA = 0
                        right_foot_YA = 0 
                        left_foot_YA = 0 
                        temp_YA = YA;
                        a_cycle = 3
                    break;
                    case 1:
                        arm_type_num = 2
                        arm_movement(0, -4, 8, 10);
                        foot_movement(0, 0, -4, 0);
                        right_arm_YA = 0
                        left_arm_YA = 0 - 90
                        right_foot_YA = 0
                        left_foot_YA = 0 
                        temp_YA = YA;
                        a_cycle = 3
                    break;
                    case 2:
                        arm_type_num = 3
                        arm_movement(4, 0, 10, 8);
                        foot_movement(0, 0, 0, 0);
                        right_arm_YA = 0 + 90
                        left_arm_YA = 0
                        right_foot_YA = 0 
                        left_foot_YA = 0 
                        temp_YA = YA;
                        a_cycle = 3
						break;
                    case 3:
                        arm_type_num = 4
                        arm_movement(0, -4, 8, 10);
                        foot_movement(0, 0, -4, 0);
                        right_arm_YA = 0
                        left_arm_YA = 0 - 90
                        right_foot_YA = 0
                        left_foot_YA = 0 
                        temp_YA = YA;
                        a_cycle = 3
                    break;
                    case 4:
                        arm_type_num = 5
                        arm_movement(4, 0, 10, 8);
                        foot_movement(0, 0, 0, 0);
                        right_arm_YA = 0 + 90
                        left_arm_YA = 0
                        right_foot_YA = 0 
                        left_foot_YA = 0 
                        temp_YA = YA;
                    break;
                }
                break; 

				case "hide_ready" :
					arm_movement(8, -8, 2, 2);
					a_cycle = 1;
					temp_YA = YA;
					go_to_speed = 0
				break;
				case "mine_1" :
					arm_movement(13, -13, 5, 5);
					a_cycle = 1;
					temp_YA = YA;
					hp += 0.055;
					go_to_speed = 0;
				break;
				case "arm_lock" :
					left_arm_YA = 0 - 90;
					right_arm_YA = 0 + 90;
					all_YA_change_delta(10);
					temp_YA = YA;
				break;
				case "arm_lock2" :
					all_YA_change_delta(44);
					arm_spin_able = true;
					arm_spin_speed = 1;
					right_goto_YA = 0 + 140;
					left_goto_YA = 0 - 140;
				break;
				case "arm_lock3" :
					left_arm_YA = 0 - 30;
					right_arm_YA = 0 + 30;
					all_YA_change_delta(20);
					go_to_speed_solid = 10;
				break;
				case "arm_lock4" :
					all_YA_change_delta(20);
					temp_YA += 1;
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
					right_arm_YA = 0 + 90 + deltaYA;
					left_arm_YA = 0 - 90 + deltaYA;
					y += irandom_range(-1, 1);
					temp_YA = YA;
				break;
				case "lebe1":
					left_arm_YA = 0 - 135;
					right_arm_YA = 0 + 135;
					temp_YA = YA;
				break;
				case "shit3":
					left_arm_YA += 30;
				break;
				case "domi":
					left_arm_YA = 0 + 180;
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
				case "sang_3_ready":
					if (right_arm_YA < YA + 120) {
						right_arm_YA += 8;
					}
					if (left_arm_YA < YA + 65) {
						left_arm_YA += 5;
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
		if (global.stats = spr_stats3) {
			stemina += 1;
		}//스테미나
	} //자동 스테미너 회복
	if (mana_1 > 1) {
		mana_1 = mana_1 - floor(mana_1);
		var temp_mana = prt_val_get(Val.MPR);
		prt_val_add(Val.mp, temp_mana);
	}
    if(global.hat != spr_hat70) {
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
	}
	
	  if(global.stats = spr_stats2) {
	      if(global.hat == spr_hat2 and level == 3 and main_speed != 12)
		      {
			      mana_1 += 0.03 ;
		      }
		      else
		      {
			      mana_1 += 0.015 ;
		      }
	      }// 안다미로
	
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
			case 0:
			if (aexp >= 200) {
				aexp -= 200;
				try_level_up(level + 1);
			}
			break;
			case 1:
			if (aexp >= 400) {
				aexp -= 400;
				try_level_up(level + 1);
			}
			break;
			case 2:
			if (aexp >= 600) {
				aexp -= 600;
				try_level_up(level + 1);
				a_level++;
			}
			break;
            default:
			if (aexp >= 600) {
				aexp -= 600;
				try_level_up(level);
				a_level++;

			}
		}//레벨업 관련
	
	if (sturn > 0) {
		if (arm_type_more != "cry") { 
			if (instance_exists(obj_card_manager)) {
				if (obj_card_manager.get_playing_name() == "울보") {
					arm_type = "attack";
					normal_play(cry_1_act);
				}
			}
		}
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
			hp += 0.1;
		}
	}//파랑존
	
	
	if place_meeting(x, y, team_1_heal_zone) {
		if (global.team =1 or global.hat == spr_level5_hat1) {
			if (hp < m_hp) {
				hp += 0.07;
			}
		}
		else {
		if (global.team =1 and invisible == true) {
			if (hp < m_hp) {
				hp += 0.07;
			}
		}
		
			if (hp >= 0) {
				if(invisible = false and buff_index != spr_wing1) {
					if! (global.hat == spr_hat37 and level > 1) {
						other_cid = 0;
						hp -= 0.1;
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
		if (global.team == 0 or global.hat == spr_level5_hat1) {
			if (hp < m_hp) {
				hp += 0.07;
			}
		} 
		else{
			if (global.team =0 and invisible == true) {
			    if (hp < m_hp) {
				    hp += 0.07;
			    }
		    }
			
			if (hp >= 0) {
				if(invisible = false and buff_index != spr_wing1) {
					if! (global.hat == spr_hat37 and level > 1) {
						other_cid = 0;
						hp -= 0.1;
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
	switch(global.skin) {
	case 2:
		spr_armr_more = spr_new_yellow41;
		spr_arm_more_num = 0;
		spr_arm_morex = 0;
		spr_arm_morey = -20;
		audio_play_sound(sound_charging,1,false);
    break;
    default:
		spr_armr_more = spr_yellow_4_skill;
		spr_arm_more_num = 0;
		spr_arm_morex = 0;
		spr_arm_morey = -20;
		audio_play_sound(sound_charging,1,false);
	break;
	}
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
	
	if(global.hat == spr_hat70)
		{	
		 if (mana > 0) {
		    if (hp < 99) {
			    hp += 0.15
			    prt_val_add(Val.mp, -0.27);
	        }
	    }
	}
    // 혈변환
	
	if(global.hat == spr_hat75)
		{	
		 if (heal_stack > 0) {
		    if (hp < 99) {
			    hp += 0.125
	        }
	    }
	}
    // 생존본능

	
	if(undying = false) {
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
			if (!instance_exists(obj_hurt_list_UI)) instance_create_depth(0, 0, depth, obj_hurt_list_UI);
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
			if (room != room_tuto) {
				if(room != room_ghost) {
					if (serve.pow[global.my_cid] > 2) {
					 var num = serve.pow[global.my_cid] - 2;
						for (var i = 0; i < num; i++) {
							server78_create_instace(obj_aexpball, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
						}
					}
				}
				else {
					if (serve.pow[global.my_cid] > 0) {
						var num = serve.pow[global.my_cid];
						for (var i = 0; i < num; i++) {
							server78_create_instace(room_ghost_exp, x + irandom_range(-20, 20), y + irandom_range(-20, 20));
						}// 적 사망 exp (제압킬)
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
				var scr = 1;
				if (level >= 3) {
					scr = 2;
				}
				buffer_seek(buff_chat, buffer_seek_start, 0);
				buffer_write(buff_chat, buffer_u8, 99);
				buffer_write(buff_chat, buffer_bool, up);//팀점수 업
				buffer_write(buff_chat, buffer_u8, cur_attack);
				buffer_write(buff_chat, buffer_u8, scr);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
			else
			{
				if (other_cid != 0 and level > 0) {	//고자 레벨	
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
	}
	}//죽음
	else {
		if (hp <= 0){
			hp = 10
		}
	}
	
	if (left_goto_YA != left_arm_YA and arm_spin_able == 1)
	{
		left_arm_YA += angle_difference(left_goto_YA, left_arm_YA) / arm_spin_speed;
	}//왼손회전
	
	if (right_goto_YA != right_arm_YA and arm_spin_able == 1)
	{
		right_arm_YA += angle_difference(right_goto_YA, right_arm_YA) / arm_spin_speed;
	}//오른손회전
	
	if(arm_moveR) {
	   right_arm_YA += arm_move_speed;
	   arm_move_delta += arm_move_speed;
	   if (arm_move_delta > arm_move_limit) {
		   arm_moveR = false;
	   }
	}
	
if(all_spin == 1)
	{
		if (all_spin_limit >= 0) {
			all_YA_change_delta(20 * spin_scale);
			if (YA >= temp_YA + all_spin_limit)
			{
				all_spin = 0;
			}
		}
		else {
			all_YA_change_delta(-20 * spin_scale);
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
		if(ski_ready != true) {
			high_speed = 1
			if(place_free(x + lengthdir_x(go_to_speed, temp_YA - 90), y + lengthdir_y(go_to_speed, temp_YA - 90))){
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
	else {
		high_speed = 1.4
		if(place_free(x + lengthdir_x(speedd * high_speed, temp_YA - 90), y + lengthdir_y(speedd * high_speed, temp_YA - 90))){
			x += lengthdir_x(speedd * high_speed, temp_YA - 90);
			y += lengthdir_y(speedd * high_speed, temp_YA - 90);
		}//스키 자동이동
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
}//보호막
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
	go_to_scale = main_big_val * stats_big_val;
}// 거대화 지속시간

if(global.hat = spr_hat71) {
	if (skill_con > 0) {
		if (skill_con_time >= 0) {
			skill_con_time  -= 1;
		}
		else {
			skill_con -= 1
			skill_con_time = 100
		}
	}
}
else {
	if (skill_con_time >= 0) {
		skill_con_time  -= 1;
	}
	else {
		skill_con = 0
	}
}// 스택 코드 

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

if (buff_time > 0) {
	if (card_name == "고무모자") {
		buff_time = max(buff_time - 10, 0);
	}
	else {
		buff_time -= 1;		
	}
	if(buff_time == 0) {
		buff_time = -1;
		if (buff_index == buff_see2) {
			color = c_white
			server77_equal(serve_val.color, c_white, buffer_f32);	
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
		stats_speed = 0;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
	switch(buff_index) {
		case buff_endemic :
			hp -= 0.01;
			if (endemic_time <= 0) {
				endemic_time = 80;
				server79_create_instace_ext(obj_endemic, x, y, irandom(360));
			}
		break;
		case buff_timeP:
			if (stemina < m_stemina) {
				stemina += 1;
			}
			if (mana < 180) {
				if(global.hat == spr_hat2 and level == 3 and main_speed != 12)
				{
					mana_1 += 0.12 ;
				}
				if(global.stats == spr_stats2 and level >= 0)
				{
					mana_1 += 0.096;
				}
				else
				{
					mana_1 += 0.06 ;
				}
			}//자동 마나 회복 
		break;
		case buff_p2 :
			hp += 0.09;
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

buff_set();
a_a_cooltime--;
x_cooltime--;
if (a_a_cooltime == 0) {
	jumping = false;
	shild = false;
	if (effect_index == effect_shild) {
		effect_index = spr_none;
	}
}


if (b_cooltime > -1) {
    b_cooltime--;
}
buff_change_time--;
if (a_cooltime <= 0 and a_possible == true and buff_index == spr_none) {
	YA_changeable = false;
	extra_speed = 0;
	stats_speed = 0;
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
	skill_say = "";//"아무짓도 안하면 꺼집니다. (" + string(just_time / 40) + "초 남음)"
}
if (just_time > 1700) {
	show_message("헉");
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
set_val_dif("spr_armr_more", serve_val.spr_armr_more, buffer_u16);
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
if (face_YA != face_YA_1) {
	face_YA_1 = face_YA;
	server77_equal(serve_val.face_YA, face_YA, buffer_s8);
}
if (hat_angle != hat_angle_1) {
	hat_angle_1 = hat_angle;
	server77_equal(serve_val.hat_angle, hat_angle, buffer_s8);
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


set_val_dif("draw_lighting", serve_val.light, buffer_bool);
set_val_dif("protection_val", serve_val.protection_val, buffer_u8);
set_val_dif("armR_more_x", serve_val.armR_more_x, buffer_u16);
set_val_dif("armR_more_y", serve_val.armR_more_y, buffer_u16);
set_val_dif("armL_more_x", serve_val.armL_more_x, buffer_u16);
set_val_dif("armL_more_y", serve_val.armL_more_y, buffer_u16);
set_val_dif("arm_moreR_YA", serve_val.arm_moreR_YA, buffer_f16);
set_val_dif("arm_moreL_YA", serve_val.arm_moreL_YA, buffer_f16);
set_val_dif("right_arm_xscale", serve_val.right_arm_xscale, buffer_s8);
set_val_dif("right_arm_yscale", serve_val.right_arm_yscale, buffer_s8);

server77_equal(serve_val.face_YA, face_YA, buffer_s16);
if (combo_time == 0) {
	combo = 0;
}
else {
	combo_time--;
}

if(global.hat = spr_hat75) {
    if (heal_stack_time == 0) {
	    heal_stack = 0;
    }
    else {
	    heal_stack_time--;
    }
}

switch(buff_index) {
	case buff_fast_go:
		buff_speed = 4;
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
	if (fishing == 1) {
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
mask_index = spr_face1;


if (keyboard_check(vk_alt))
   {
   if (keyboard_check_released(vk_enter)) 
   {
	if (window_get_x() != 0) {
		scr_set_full();
    }
    else {
	    scr_reset_full();
    }
}
}//전체화면 인게임

if (keyboard_check(vk_enter))
   {
   if (keyboard_check_released(vk_alt)) 
   {
	if (window_get_x() != 0) {
		scr_set_full();
    }
    else {
	    scr_reset_full();
    }
}
}//전체화면 인게임

if(level > 2) {
    if (keyboard_check(global.keye)) {
	    if (global.hat == spr_hat70) {
		    if (gi >= 450) {
			    prt_val_add(Val.gi, -450);
			    server78_create_instace(bam_skill42, x, y);	
			    server78_create_instace(bam_skill43, x, y);		
		    }
		    else {
			    skill_say_time = 30;
			    skill_say = "GI: " + string(gi) + " / 450(450)";
			}
	    }
    }
}//뱀파이어 불사

if(a_cooltime <= 0 and sturn <= 0) {
	if(level > 1) {
	    if (keyboard_check(global.keyw)) {
		    if (global.hat == spr_hat77 and babo_change = false) {
			    if (gi >= 100) {
				    prt_val_add(Val.gi, -100);
					babo_change = true
					server77_equal(serve_val.babo_change, babo_change, buffer_bool);
					a_cooltime = 40
			    }
			    else {
				    skill_say_time = 30;
				    skill_say = "GI: " + string(gi) + " / 100(100)";
				}
		    }
	    }
	}//바보 바로변신
}



if (is_babo_angle) {
	spr_arml_more = spr_babo_ruler;
	spr_armr_more = spr_babo_ruler;
	all_YA_change(temp_YA + 90);
	left_arm_YA = babo_angle2 + 90;
	right_arm_YA = babo_angle1 + 90;
	babo_angle1 += 1;
	babo_angle2 -= 1;
}

if (place_free(x + lengthdir_x(buff_goto_speed, temp_YA - 90), y + lengthdir_y(buff_goto_speed, temp_YA - 90))){
	x += lengthdir_x(buff_goto_speed, temp_YA - 90);
	y += lengthdir_y(buff_goto_speed, temp_YA - 90);
}//앞으로 자동이동

var check_lose = false;
with(serve) {
	check_lose = game_end_lose;
}
if (check_lose) {
	effect_index = effect_gag;
}