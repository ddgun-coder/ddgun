/// @description Insert description here
// You can write your code in this editor
if (global.my_cid == cid) {
	switch(other.object_index) {
		case obj_fish1:
			with(testing) {
				hp += 20;
				aexp += 10;
			}
		break;
		case obj_fish2:
			with(testing) {
				hp -= 33;
				buff_index = buff_see2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 200;
			}
		break;
		case obj_fish4:
			with(testing) {
				hp += 20;
				aexp += 200;
				buff_index = buff_see2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 200;
			}
		break;
		case obj_fish5 :
			with(testing) {
				hp += 77;
				aexp += 500;
				buff_index = buff_p2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 200;
			}
		break;
		case obj_fish7:
			with(testing) {
				hp += 33;
				aexp += 50;
				buff_index = buff_p2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 200;
			}
		break;
		case obj_fish8:
			with(testing) {
				hp += 10;
				aexp += 10;
				buff_index = buff_p2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 40;
			}
		break;
		case obj_fish9:
			with(testing) {
				hp += 20;
				aexp += 20;
				buff_index = spr_wing1;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 80;
			}
		break;
		case obj_fish10:
			prt_val_add(0, 1000);
		break;
		case obj_fish11:
			with(testing) {
				hp -= 200;
			}
		break;
		case obj_fish13:
			with(testing) {
				aexp += 10;
			}
		break;
		case obj_fish12:
			with(testing) {
				aexp += 50;
			}
		break;
		case obj_fish14:
			prt_val_add(0, 20000);
		break;
		case obj_fish15:
			prt_val_add(Val.gi, 400);
		break;
		case obj_fish16:
		with(testing) {
			scr_hat_change(irandom(array_length(global.hat_array - 3)));
			level = irandom(3);
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
			buffer_write(buff_chat,buffer_u8, global.hat_show);
			buffer_write(buff_chat,buffer_u8, level);
	
			network_send_packet(0,buff_chat,3);
			normal_play(bili_5_act);
		}
		break;
		case obj_fish18:
			with(testing) {
				random_level5();
			}
		break;
		case obj_fish19:
			with(testing) {
				hp -= 10;
				buff_index = buff_fast_go;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 200;
			}
		break;
		case obj_fish20:
			with(testing) {
				buff_index = buff_apple3;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 200;
			}
		break;
		case obj_fish21:
			with(testing) {
				aexp += 200;
				buff_index = buff_jaja;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 240;
			}
		break;
		case obj_fish22:
			with(testing) {
				aexp += 20;
				buff_index = buff_bwiza2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 240;
			}
		break;
		case obj_fish23:
			with(testing) {
				prt_val_add(0, 5000);
				aexp += 250;
			}
		break;
		case obj_fish24:
			with(testing) {
				prt_val_set(Val.mp, 200);
				normal_play(nu_3_act);
			}
		break;
		case obj_fish25:
			with(testing) {
				hp += 40;
			}
		break;
		case obj_fish26:
			with(testing) {
				prt_val_set(Val.mp, 200);
				normal_play(goza_2_act);
			}
		break;
		case obj_fish27:
			with(testing) {
				aexp += 100;
				prt_val_add(0, 6500);
			}
		break;
		case obj_fish28:
			with(testing) {
				prt_val_add(Val.mp, 30);
			}
		break;
		case obj_fish29:
			global.face = spr_e46
			with(testing) {
				server77_equal(serve_val.face, global.face, buffer_u16);
			}
		break;
		case obj_fish30:
			global.face = sprite7193;
			with(testing) {
				server77_equal(serve_val.face, global.face, buffer_u16);
			}
		break;
		case obj_fish31:
			with(testing) {
				aexp += 100;
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
				buffer_write(buff_chat,buffer_string, "알게뭐야 ㄹㄹㄹㄹㄹ");
				buffer_write(buff_chat,buffer_string,global.name);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
		break;
		case obj_fish32:
		with(testing) {
			buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
			buffer_write(testing.buff_chat, buffer_u8, 78);//78은 모두에게 보내기
			buffer_write(testing.buff_chat, buffer_u8, 0);
			buffer_write(testing.buff_chat, buffer_u16, lebe_skill3);
			buffer_write(testing.buff_chat, buffer_u16, x);
			buffer_write(testing.buff_chat, buffer_u16, y);
			buffer_write(testing.buff_chat, buffer_u8, 3);
	
			network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));
		}
		break;
		case obj_fish33:
			with(testing) {
				go_to_scale = 10;
				big_val_time = 400;
			}
		break;
		case obj_fish34:
			with(testing) {
				buff_index = buff_nu2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 120;
			}
		break;
		case obj_fish35:
			with(testing) {
				buff_index = buff_jaja;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 120;
			}
		break;
		case obj_fish36:
			with(testing) {
				aexp += 150;
			}
		break;
		case obj_fish37:
			with(testing) {
				buffer_seek(buff_chat, buffer_seek_start, 0);
			
				buffer_write(buff_chat, buffer_u8, 5);
				buffer_write(buff_chat, buffer_string, global.name);
				buffer_write(buff_chat, buffer_u8, 2);

				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
		break;
		case obj_fish38:
			with(testing) {
				normal_play(sans_3_act1);
			}
		break;
		case obj_fish39:
			with(testing) {
				normal_play(gili_4_act);
			}
		break;
		case obj_fish40:
			with(testing) {
				normal_play(yagol_5_act);
			}
		break;
		case obj_fish41:
			global.face = spr_e47;
			global.arm = spr_arm27;
			global.foot = spr_foot21;
			with(testing) {
				server77_equal(serve_val.face, global.face, buffer_u16);
			}
		break;
		case obj_fish42:
			global.face = spr_e48;
			with(testing) {
				server77_equal(serve_val.face, global.face, buffer_u16);
			}
		break;
		case obj_fish43:
			with(testing) {
				server78_create_instace(obj_ballbox, other.x, other.y);
			}
		break;
		case obj_fish44:
			with(testing) {
				hp += 20;
				stemina += 200;
			}
		break;
		case obj_fish45:
			with(testing) {
				prt_val_add(Val.gi, 10);
			}
		break;
		case obj_fish46:
			with(testing) {
				stemina += 600;
			}
		break;
		case obj_fish47:
			with(testing) {
				normal_play(p_2_act);
			}
		break;
		case obj_fish48:
			with(testing) {
				random_table4();
			}
		break;
		case obj_fish49:
			with(testing) {
				go_to_scale = irandom(10);
				big_val_time = 400;
				mine_say = string(go_to_scale) + "크기 당첨!(10초)";
				mine_say_time = 80;
			}
		break;
		case obj_fish50:
			with(testing) {
				normal_play(charge_4_act);
			}
		break;
		case obj_fish51:
			with(testing) {
				global.team = 2;
			}
		break;
		case obj_fish52:
			with(testing) {
				aexp += 15;
			}
		break;
		case obj_fish53:
			with(testing) {
				normal_play(goza_1_act);
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
				buffer_write(buff_chat,buffer_string, "님은바로 사회주의 낙원을 말하는것입니다 여러분~~~");
				buffer_write(buff_chat,buffer_string,global.name);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
		break;
		case obj_fish54:
			with(testing) {
				aexp += 300;
				normal_play(hide_1_act);
			}
		break;
		case obj_fish55:
			with(testing) {
				aexp += 555;
				buff_index = buff_fast_go;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 4000;
			}
		break;
		case obj_fish56:
			with(testing) {
				aexp += 30;
			}
		break;
		case obj_fish57:
			with(testing) {
				aexp += 30;
				prt_val_add(0, 1000);
			}
		break;
		case obj_food:
			with(testing) {
				buff_index = buff_apple3;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 160;
				server78_create_instace(food_skill, x, y);
			}
		break;
		case obj_food1:
			with(testing) {
				buff_index = buff_apple3;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_time = 40;
			}
		break;
		case obj_food2:
			with(testing) {
				aexp += 75;
			}
		break;
		case obj_food3:
			with(testing) {
				aexp += 187;
			}
		break;
		case obj_food4:
			with(testing) {
				aexp += 900;
			}
		break;
		case obj_food5:
			with(testing) {
				aexp += 1500;
			}
		break;
		case obj_food6:
			with(testing) {
				aexp += 100;
				normal_play(see_1_act);
			}
		break;
		case obj_food7:
			with(testing) {
				normal_play(kesin_4_act);
			}
		break;
		case obj_food8:
			with(testing) {
				hp += 100;
				prt_val_add(Val.gi, 100);
			}
		break;
		case obj_food9:
			with(testing) {
				aexp += 1234;
			}
		break;
		case obj_food10:
			with(testing) {
				server78_create_instace(food_skill1, x, y);
			}
		break;
		case obj_food11:
			with(testing) {
				normal_attack_type = spr_korea3;	
			}
		break;
		case obj_food12:
			with(testing) {
				normal_attack_type = spr_nuke3;	
			}
		break;
		case obj_food13:
			with(testing) {
				normal_play(goza_skilld);
			}
		break;
		case obj_food14:
			with(testing) {
				normal_play(lebe_3_act);
			}
		break;
		case obj_food15:
			with(testing) {
				scr_hat_change2(spr_hat9);
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
				buffer_write(buff_chat,buffer_u8, global.hat_show);
				buffer_write(buff_chat,buffer_u8, level);
	
				network_send_packet(0,buff_chat,3);
			}
		break;
		case obj_food16:
			with(testing) {
				go_to_scale = irandom(5) + 10;
				big_val_time = 400;
				mine_say = string(go_to_scale) + "크기 당첨!(10초)";
				mine_say_time = 80;
			}
		break;
		case obj_food17:
			with(testing) {
				hp = 100
			}
		break;
		case obj_food18:
			with(testing) {
				m_stemina = 200
			}
		break;
		case obj_food19:
			with(testing) {
				m_mana = 250
			}
		break; 
		case obj_food20:
			with(testing) {
				server78_create_instace(healer_skill4, x, y)
			}
		break;
		case obj_food21:
			with(testing) {
				server78_create_instace(jam_skill22, x, y)
			}
		break;
		case obj_food22:
			with(testing) {
				server78_create_instace(food_skill2, x, y)
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
				buffer_write(buff_chat,buffer_string, "전쟁을 준비해라.");
				buffer_write(buff_chat,buffer_string,global.name);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
		break;
		case obj_food23:
			with(testing) {
				random_table5()
			}
		break;
		case obj_food24:
			with(testing) {
				normal_attack_type = spr_bobo;	
			}
		break;
		case obj_food25:
			with(testing) {
				global.hat = spr_level5_hat14;
				level = 0
			}
		break;
		case obj_food26:
			with(testing) {
				normal_play(sea_4_act);
			}
		break;
		case obj_food27:
			with(testing) {
				go_to_scale = 1 + big_val;
				big_val += 1;
				big_val_time = 220;
				server78_create_instace(n_attack_area, x, y);
				server202_sound(ready_1_sound)
				normal_play(r_ready1);
				prt_val_add(Val.gi, 150);
			}
		break;
		case obj_food28:
			with(testing) {
				aexp += 200;
			}
		break;
	}
}
instance_destroy(other.id);