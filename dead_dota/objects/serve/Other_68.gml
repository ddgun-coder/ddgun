buff = ds_map_find_value(async_load,"buffer");
buff_size = ds_map_find_value(async_load,"size");
tp = ds_map_find_value(async_load,"type");

if (tp == network_type_non_blocking_connect) {
	connecting = false;
	if (ds_map_find_value(async_load, "succeeded")) {
		global.online = 1;
		room_goto(room_temp);
	}	
	else {
		show_message_async("개인 서버 아이피를 입력하지 않았거나 \n서버가 없다:[" + string(global.version) + "버전]");
		global.online = 0;
		room_goto(room_temp);
	}
}

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
               chat =   buffer_read(buff, buffer_string)
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
            var len = ds_list_size(global.ban_say);
            for (var i = 0; i < len; i++) {
               if (global.ban_say[| i] == serve_name[cid]) {
                  exit;
               }   
            }
            if (instance_exists(testing)) {
               chat =   buffer_read(buff,buffer_string)
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
            if (cid < 0) {
               exit    
            }
            if (cid > 25) {
               exit   
            }
			var obj = global.cid_array[cid];
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
					 cid = buffer_read(buff, buffer_u8);
                     server79_create_instace_ext(obj_last, testing.x, testing.y - 50, cid);
                  }
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
						server202_sound(cry_3_sound)
                        buffer_seek(buff_chat, buffer_seek_start, 0);
   
                        buffer_write(buff_chat,buffer_u8,1)//1은 이제	
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
            if(testing.level < 4) {
               testing.other_cid = 0;
               testing.cur_attack = cid;
               testing.hp = -101;
               testing.arm_type = "ouch";
               testing.sturn = 200;
               testing.YA_changeable = true;
               audio_play_sound(apple_4_sound, 1, false);
            }
            else {
				
            }
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
			   if (team[cid] != global.team) {
                   with (testing) {
                      prt_val_add(Val.mp, 150);
					  if(global.hat = spr_hat70) {
                          prt_val_add(Val.mp, 225);
                      }
                      server78_create_instace(twiza_skill3_2, x, y);
                   }
			   }
               break;
               case 2:
			   if (team[cid] != global.team) {
                   with (testing) {
                      go_to_scale = big_val + 1;
                      big_val_time = 300;
                      server78_create_instace(fheal_skill2, x, y);
                   }
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
            }//점수
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
				  skill_index = nu_3_act
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
            
			if (object_exists(aname)) {
	            var ida = instance_create_depth(xxx, yyy, 0, aname);
	            ida.cid = other.cid;
	            ida.cid_id = global.cid_array[cid];
	            ida.fish_len = size;
	            ida.image_xscale = size / 70;
	            ida.image_yscale = size / 70;
			}
         }
      break;
      case 77://equal
         if (buff_size > 2) {
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
            set_s(temp_id, varname, realvar);
         }
      break;
	  case 117 :
		if (buff_size > 8) {
            var _to_cid = buffer_read(buff,buffer_u8);
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
            var _teama = buffer_read(buff,buffer_u8);   
			
			if (object_exists(aname)) {
				var ida = instance_create_depth(xxx, yyy, -100, aname);
	            ida.team = _teama;
	            ida.cid = other.cid;
	            ida.cid_id = global.cid_array[cid];
				ida.to_cid = _to_cid;
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
			
			if (object_exists(aname)) {
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
         }
      break;
	  case 49 :
		if (buff_size > 7) {
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
            var addition = buffer_read(buff,buffer_string);

            var ida = instance_create_depth(xxx, yyy, -100, aname);
            ida.team = teama;
            ida.cid = other.cid;
            ida.cid_id = global.cid_array[cid];
            server_switch(aname, addition, ida);
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
         if (buff_size > 10) {
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
            var addition = buffer_read(buff,buffer_u16);
         
            var ida = instance_create_depth(xxx, yyy, -100, aname);
            ida.team = teama;
            ida.cid = other.cid;
            ida.cid_id = global.cid_array[cid];
            server_switch(aname, addition, ida);
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
         if (testing.live = 1 and global.hat!= spr_hat5) {
            if (testing.hp > 80 and testing.sturn < 10) {
               testing.sturn = 100;
               testing.hp -= 80;
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
               testing.main_big_val = 1;
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
                  buffer_write(buff_chat, buffer_u8, 98);
                  buffer_write(buff_chat, buffer_bool, up);//팀점수 업
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
      /*case 96:
         if (buff_size > 7) {
            var kind = buffer_read(buff, buffer_u8);
            var enemy_x = buffer_read(buff, buffer_u16);
            var enemy_y = buffer_read(buff, buffer_u16);
            var ehp = buffer_read(buff, buffer_u16);
            instance_create_depth(0, 0, testing.depth - 1, obj_enemy)
            switch(kind) {
               case 1:
                  if (!instance_exists(obj_enemy)) {
                     var idd = instance_create_depth(enemy_x, enemy_y, testing.depth - 1, obj_enemy);
                     idd.hp = ehp;
                  }
               break;
            }
         }
      break;
      case 97:
         if (buff_size > 8) {
            if (instance_exists(obj_enemy)) {
               obj_enemy.x = buffer_read(buff, buffer_u16);
               obj_enemy.y = buffer_read(buff, buffer_u16);
               obj_enemy.image_angle = buffer_read(buff, buffer_u16);
               obj_enemy.hp = buffer_read(buff, buffer_u16);
            }
            else {
               //instance_create_depth(0, 0, testing.depth - 1, obj_enemy);
            }
         }
      break;*/
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
				  if (global.achievement[7] == false) {
						if (global.hat == spr_hat15 and other_cid.hat == spr_hat38) {
							achi_get(7);
						}
				  }
				  if (global.achievement[7] == false) {
						if (global.hat == spr_hat18 and other_cid.hat == spr_hat2) {
							achi_get(7);
						}
				  }
				  if (global.achievement[8].comple == false) {
					  var check_all = false;
					  for (var i = 0; i < MAX_ITME_BOX; i++) {
						  if (global.item[i] != noone) {
								check_all = true;
								break;
						  }
					  }
					  if (check_all == false) {
							achi_get(8);  
					  }
				  }
               }
               if(global.stats == spr_stats5) { // 폭군
                  if (team[cid] != global.team) { // 다른팀 작용
                    if (other_cid < 25) {
							server78_create_instace(obj_stats5_skill, global.cid_array[cid].x, global.cid_array[cid].y);
							testing.hp += 20;
                        }
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
            if (sturn > 0) obj.sturn = sturn;
            obj.arm_type = "ouch"
            if (team[cid] != global.team or global.my_cid == cid) {
               if (sturn != 0) {
                  var show = instance_create_depth(obj.x, obj.y, obj.depth - 1, DMG_show);
                  show.d = D;
                  if (cid != global.my_cid) {
                     show.image_xscale = 1;
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
			   testing.aexp += D
			   
               with (testing) {
			   
			   if (D >= 1) {
                 DMG_item(D / 2);
               }
				  
			if (global.stats == spr_stats4){
					if (D / 2 > 1) {
						prt_val_add(Val.mp, floor(D * 0.3));
					}   
				}//대현자
				
				switch(global.stats) {
				    case spr_stats4:
				        if(global.hat = spr_hat70) {
					        if (D / 2 > 1) {
                               prt_val_add(Val.mp, floor(D * 0.9));
                            }
						}
					break;
					default:
					if(global.hat = spr_hat70) {
					        if (D / 2 > 1) {
                               prt_val_add(Val.mp, floor(D * 0.37));
                            }
						}
				}//뱀파이어
				
				if (testing.buff_index == buff_sang){
					if (D / 2 > 1) {
						prt_val_add(Val.gi, floor(D * 0.25));				
				    } //상투
				}
						
                  if (testing.buff_index == buff_musa) {
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
                     if (testing.level > 0){
                        if (D > 1) {
                           combo++;
                           combo_time = 240;
                           if (combo > 8) {
                              if (buff_time < 1) {
                                 buff_time = 120;
                                 buff_index = buff_nu2;
                                 server77_equal(serve_val.buff_index, buff_index, buffer_u16);
                              }
                           }
                        }
					 }
                     break;
                     case spr_hat75:
					 if (D > 1) {
                           combo++;
                           combo_time = 80;
						   heal_stack_time = 0
					 }
					 break;
					 case spr_hat63:
						switch(up_skill) {
							case 0:
								if (D > 1) {
									up_skill = 1;
									server78_create_instace(tu_skill21, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
								}
							break;
							case 1:
								if (D > 1) {
									up_skill = 2;
									server78_create_instace(tu_skill22, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
								}
							break;
							case 2:
								if (D > 1) {
									up_skill = 3;
									server78_create_instace(tu_skill23, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
								}
							break;
					 }
                     break;
                     case spr_level5_hat9:
                        prt_val_add(Val.gi, D * 0.2);
                     break;
                  }
				  if (global.stats = spr_stats2) {
					  if (b_cooltime <= 0) {
				          if (D > 1) {
					         b_cooltime = 160
						     buff_time = 72;
                             buff_index = buff_nu2;
                             server77_equal(serve_val.buff_index, buff_index, buffer_u16);
						  }
				      }
					  else {
				           b_cooltime = 160
					  }
			      }// 안다미로
              }// 콤보
			  
					   
			   switch(testing.buff_index) {
				   
			   case buff_noheal :
			   break;
			   
			   default :
               if (global.stats == spr_stats5){
				switch(testing.level) {
				   /* case 0 :
				        testing.hp += D/6.5;
				    break;
				    case 1 :
				        testing.hp += D/5;
				    break;
				    case 2 :
				        testing.hp += D/4;
				    break;
				    case 3 :
				        testing.hp += D/3.3;
				    break;*/
				    default :
					    testing.hp += D * 0.28;
				    break;
				    }
				break;
			   }// 폭군
		    }
			/*
			break;
            if (global.stats == spr_stats1) {
               if (D / 8 > 1) {
               prt_val_add(Val.gi, floor(D/4));
               }
            }
			*/
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
                     show.image_xscale = 1;
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
               with (testing) {
				   
			   if (D >= 1) {
                 DMG_item(D / 2);
               }
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
					 if (testing.level > 0){
                        if (D > 1) {
                           combo++;
                           combo_time = 240;
                           if (combo > 8) {
                              if (buff_time < 1) {
                                 buff_time = 120;
                                 buff_index = buff_nu2;
                                 server77_equal(serve_val.buff_index, buff_index, buffer_u16);
                              }
                           }
                        }
					 }
                     break;
					 case spr_hat75:
					 if (D > 1) {
                           combo++;
                           combo_time = 80;
						   heal_stack_time = 0
					 }
					 break;
					 case spr_hat63:
						switch(up_skill) {
							case 0:
								if (D > 1) {
									up_skill = 1
									server78_create_instace(tu_skill21, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
								}
							break;
							case 1:
								if (D > 1) {
									up_skill = 2
									server78_create_instace(tu_skill22, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
								}
							break;
							case 2:
								if (D > 1) {
									up_skill = 3
									server78_create_instace(tu_skill23, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
								}
							break;
					 }
                     break;
                     case spr_level5_hat9:
                        prt_val_add(Val.gi, D / 10);
                     break;
                  }
				  if (global.stats = spr_stats2) {
				      if (b_cooltime <= 0) {
				          if (D > 1) {
					         b_cooltime = 160
						     buff_time = 72;
                             buff_index = buff_nu2;
                             server77_equal(serve_val.buff_index, buff_index, buffer_u16);
						  }
				      }
					  else {
				           b_cooltime = 160
					  }
			      }// 안다미로
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
			var level5_ration = buffer_read(buff,buffer_u8);
            cur_room = buffer_read(buff, buffer_string);
            team_score[0] = buffer_read(buff,buffer_u8);
            team_score[1] = buffer_read(buff,buffer_u8);
            var temp_time =  buffer_read(buff,buffer_u16);
            win =  buffer_read(buff,buffer_bool);
            if (cid == global.my_cid) {
               global.team = buffer_read(buff,buffer_bool);
            }
            else {
               var D = buffer_read(buff,buffer_bool);
            }
			last_time = temp_time;
            if (win != global.team) {
				game_end_lose = true;
            }
            for (var i = 1 ; i < 25 ; i++) {
               ary_cid[i] = buffer_read(buff,buffer_bool);
                  if (ary_cid[i] == 1) {
                     hat_frame[i] = buffer_read(buff,buffer_u8);
                     serve_name[i] = buffer_read(buff,buffer_string);
                     team[i] = buffer_read(buff,buffer_u8);
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
			prt_val_set(Val.level5_ration, level5_ration);
            
            for(var i = 1; i < 100; i++) {
               global.ban_list[i] = buffer_read(buff,buffer_bool);
               if (global.hat_show == i) {
                  if (global.ban_list[i]) {
                     scr_hat_change2(spr_hat);
                     buffer_seek(buff_chat, buffer_seek_start, 0);
   
                     buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
                     buffer_write(buff_chat,buffer_u8, global.hat_show);
                     buffer_write(buff_chat,buffer_u8, testing.level);
   
                     network_send_packet(0,buff_chat, 3);
                  }
               }
            }
			
			var num = array_length(shop_button1.item);
			for (var i = 0; i < num; i++) {
				shop_button1.item[i].ban = false;
			}
			
			for (var i = 0; i < 5; i++) {
				var item = buffer_read(buff, buffer_u8);
				var item_ind = buffer_read(buff, buffer_u8);
				if (item == 0) continue;
				var index = shop_button1.found_index(asset_get_index("spr_hat" + string(item)) , item_ind);
				if (index != -1) {
					shop_button1.item[index].ban = true;
					for (var j = 0; j < MAX_ITME_BOX; j++) {
						if (global.item[j] == index) {
							prt_val_add(0 ,1000);
							global.item[j] = spr_none;
						}
					}
				}
			}
			
			for (var i = 0; i < 5; i++) {
				var item = buffer_read(buff, buffer_u8);
				var item_ind = buffer_read(buff, buffer_u8);
				var item_time = buffer_read(buff, buffer_u16);
				if (item == 0) continue;
				var index = shop_button1.server_array[i];
				if (index != -1) {
					shop_button1.item[index].sprite = asset_get_index("spr_hat" + string(item));
					shop_button1.item[index].sprite_ind = item_ind;
					shop_button1.item[index].max_time = item_time;
				}
			}
            for (var i = 1 ; i < 25 ; i++) {
               var obji = global.cid_array[i];
               obji.hat_frame = hat_frame[i];
               obji.x = xx[i];
               obji.y = yy[i];
               obji.name = serve_name[i];
               obji.team = team[i];
			   
			   if (0 <= hat[i] and hat[i] < array_length(global.hat_array) - 1) {
					obji.hat = global.hat_array[hat[i]];
			   }
			   else {
					obji.hat = spr_face1;
			   }
			   
			   if (0 <= foot[i] and foot[i] < array_length(global.foot_array) - 1) {
					  obji.foot = global.foot_array[foot[i]];
			   }
			   else {
					  obji.foot = spr_foot1;
			   }
             
               obji.arm = arm[i];
               obji.face = face[i];
               obji.skin = skin[i];
            }
            var obj = global.cid_array[cid];
            obj.YA = 0;
            obj.live = 1;
            if (room != room_out) {
               room_pass(cur_room);
            }
            green_text_update(string(serve_name[cid]) + "님이 세상에서 태어났습니다.");
			shop_button1.item_surf();
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
	  case 114:
		var _num = buffer_read(buff, buffer_u8);
		for (var i = 0; i < _num; i++) {
			global.achievement[i].comple = buffer_read(buff, buffer_bool);
		}
		_num = buffer_read(buff, buffer_u8);
		for (var i = 0; i < _num; i++) {
			global.kill_array[i] = buffer_read(buff, buffer_u16);
			global.hat_aexp[i] = buffer_read(buff, buffer_u16);
			global.hat_death[i] = buffer_read(buff, buffer_u16);
			global.hat_time[i] = buffer_read(buff, buffer_u16);
			global.hat_aexp[i] = buffer_read(buff, buffer_u16);
			
			global.hat_aexp_remain[i] = global.hat_aexp[i];
			for (var j = 1; j < 100; j++) {
				global.hat_aexp_max[i] = round(power(1.1, j) * 50);
				if (global.hat_aexp_max[i] < global.hat_aexp_remain[i]) {
					global.hat_aexp_remain[i] -= j;
				}
				else {
					break;	
				}
			}
			global.hat_level[i] = j;
		}
		global.get_data = true;
	  break;
	  case 115:
		var to_cid = buffer_read(buff, buffer_u8);
	  	var id_array = [];//현재의 스킬을 담을 배열
		with (all) {
			if (string_count("skill", object_get_name(id.object_index)) >= 1) {
				if (id.alarm[0] >= 40) {	
					array_push(id_array, id);
				}
			}
			else if (asset_has_tags(object_index, "serve_load", asset_object)) {
				array_push(id_array, id);
			}
		}//여기서 오브젝트 이름에 skill혹은 serve_load란 tag가 존재하면 해당 값들을 하나식 가져옵니다.
		buffer_seek(buff_big, buffer_seek_start, 0);
		var _num = array_length(id_array);
		var _id;
		buffer_write(buff_big, buffer_u8, 116);
		buffer_write(buff_big, buffer_u8, to_cid);
		buffer_write(buff_big, buffer_u8, _num);
		for (var i = 0; i < _num; i++) {
			_id = id_array[i];
			buffer_write(buff_big, buffer_u16, _id.object_index);
			buffer_write(buff_big, buffer_u16, _id.x);
			buffer_write(buff_big, buffer_u16, _id.y);
			buffer_write(buff_big, buffer_u16, _id.alarm[0]);//해당 스킬의 object, x, y, alarm을 차례대로 적습니다.
			if(variable_instance_exists(_id, "cid")) {
				buffer_write(buff_big, buffer_u16, _id.cid);
			}//cid값도 추가로 넣습니다.
			else {
				buffer_write(buff_big, buffer_u16, 0);	
			}//해당 스키
			if (variable_instance_exists(id, "hp")) {
				buffer_write(buff_big, buffer_s16, _id.hp);
			}//포탑처럼 hp가 존재하면 이것도 넣습니다.
			else {
				buffer_write(buff_big, buffer_s16, -300);
			}
		}
		network_send_packet(0,buff_big,buffer_tell(buff_big));
	  break;
	  case 116:
		buffer_seek(buff, buffer_seek_start, 2);
		var _num = buffer_read(buff, buffer_u8);//버퍼에서 현재 가져온 오브젝트의 개수를 확인
		if (_num == 0) break;
		var _x, _y, _alarm, _object_index, _cid, ida, _hp;
		repeat (_num) {
			_object_index = buffer_read(buff, buffer_u16);
			_x = buffer_read(buff, buffer_u16);
			_y = buffer_read(buff, buffer_u16);
			_alarm = buffer_read(buff, buffer_u16);
			_cid = buffer_read(buff, buffer_u16);
			_hp = buffer_read(buff, buffer_s16);
			ida = instance_create_depth(_x, _y, depth, _object_index);
			ida.alarm[0] = _alarm;
	        ida.cid = _cid;
	        ida.cid_id = global.cid_array[_cid];
			ida.team = team[_cid];
	        ida.image_angle = ida.cid_id.YA;
			if (_hp != -300) ida.hp = _hp;
			global.cid_array[_cid].cancle_able = true;
			//해당 object_index, x, y, alarm, cid, hp 를 하나씩 가져오고 이를 오브젝트에 적용시켜 줍니다.
		}
	  break;
      case 198:
         if (testing.y < 1300) {
            server202_sound(gili_4_sound);
            buffer_seek(buff_chat, buffer_seek_start, 0);
   
            buffer_write(buff_chat, buffer_u8, 98);
            buffer_write(buff_chat, buffer_bool, global.team);//팀점수 업
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
            if (0 <= temp and temp <= 4) {
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
			if (audio_exists(sound)) {
				audio_play_sound(sound ,1,false);
			}
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
      break;
      case 205:
         if (buff_size > 1) {
            cur_room = buffer_read(buff, buffer_string);
            if (room != room_out) {
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
         if (global.version != buffer_read(buff,buffer_u16)) {
            show_message_async("당신의 버전이 해당 서버의 버전과 다릅니다.");
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
			last_time = 720;
            if (win != global.team) {
			   game_end_lose = true;
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
            prt_val_set(Val.mp, 0);
			testing.undying = false
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
		 ds_map_destroy(map);
         exit;
      break;
      /*
      case 211:
         instance_create_depth(0, 0, -500, obj_lll);
      break
      */
      case 212:
         if(instance_exists(obj_cart)) {
            var path_temp = buffer_read(buff, buffer_u8);
            obj_cart.path_position = path_temp / 100;
         }
      break;
   }
}