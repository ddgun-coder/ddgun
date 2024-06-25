function kazino_numbers(argument0) {
	var num = argument0;
	/// @description Execute Code
	if (serve.kazino_time > 0) {
		if (num == serve.kazino_where1 or num == serve.kazino_where2 or serve.kazino_where1 == serve.kazino_where2) {
			YA_changeable = true;
			switch(serve.kazino_what) {
			case 0://경험치
				aexp += serve.kazino_amount;
			break;
			case 1://돈
				prt_val_add(0, serve.kazino_amount  * 3);
			break;
			case 2://대미지
				hp -= serve.kazino_amount * 0.1;
			break;
			case 3://no!
				prt_val_add(0, -serve.kazino_amount)
			break;
			case 4:
			if (creper_die < 1) {
				server78_create_instace(mine_skill3, x, y);
				sturn = 240;
				creper = false;
				creper_die = 340;
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
			break;
			case 5:
				big_val_time = 400;
				go_to_scale = 0.1;
			break;
			case 6:
				prt_val_set(Val.mp, 0);
				hp = 100;
			break;
			case 7:
				if (kazino_one == true) {
					kazino_one = false;
					scr_hat_change(irandom(global.hat_limit - 1));
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
					buffer_write(buff_chat,buffer_u8, global.hat_show);
					buffer_write(buff_chat,buffer_u8, level);
	
					network_send_packet(0,buff_chat,3);
				}
			break;
			case 8:
				if (kazino_one == true) {
					kazino_one = false;
					server78_create_instace(wing_skill3, x, y);
					alarm[7] = 40;
				}
			break;
			case 9:
				if (kazino_one == true) {
					kazino_one = false;
					server202_sound(apple_4_sound);
					hp -= 200;
				}
			break;
			case 10:
				if (kazino_one == true) {
					if (irandom(2) == 1) {
						kazino_one = false;
						random_level5();
					}
				}
			break;
			case 11:
				prt_val_set(Val.gi, 600);
				hp = 10;
			break;
			case 12:
				if (kazino_one == true) {
					kazino_one = false;
					scr_hat_change2(spr_hat1);
					level = 4;
					global.name = "플루톤";
					buffer_seek(buff_chat, buffer_seek_start, 0);
				
					buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
					buffer_write(buff_chat,buffer_u8, global.hat_show);
					buffer_write(buff_chat,buffer_u8, level);
	
					network_send_packet(0,buff_chat,3);
				}
			break;
			case 13:
				if (kazino_one == true) {
					kazino_one = false;
					server78_create_instace(pwiza_skill3_3, x, y);
				}
			break;
			case 14:
				if (buff_time < 900) {
					buff_index = spr_gas;
					buff_time = 1000;
					server77_equal(serve_val.buff_index, buff_index, buffer_u16);
					server78_create_instace(fly_skill3, x, y);
					alarm[7] = 40;
				}
			break;
			case 15:
				buff_index = buff_giligili
				buff_time = 1200;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
			break;
			}
		}
	}
	if (global.money < 0) {
		testing.chat6 = testing.chat5;
		testing.chat5 = testing.chat4;
		testing.chat4 = testing.chat3;
		testing.chat3 = testing.chat2;
		testing.chat2 = testing.chat1;
		testing.chat1 = "돈이 없으면 카지노에 입장하실 수 없습니다."
		x = 2240;
		y = 1512;
	}


}
