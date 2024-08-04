if (room == room_tuto) {
	network_destroy(global.client);
	room_goto(room_out);	
}
if (global.hat = spr_level5_hat1) {
	testing.chat6 = testing.chat5;
	testing.chat5 = testing.chat4;
	testing.chat4 = testing.chat3;
	testing.chat3 = testing.chat2;
	testing.chat2 = testing.chat1;
	testing.chat1 ="들어올땐 마음대로지만 나갈땐 아니란다.";//채팅 올라가기
}
else {
if !(room = room_out) {
	if (testing.live = 1) {
		if (testing.hp > 80) {
		if (instance_exists(testing)) {
			testing.live = 1;
			_ind = array_get_index(global.hat_array, global.hat);
	        if (_ind > global.hat_limit or global.hat == spr_ehat4) {
	            scr_hat_change2(spr_hat1);
	        }
			if (instance_exists(serve)) {
				if (serve.connect >= 0)
				{
					if (serve.last_time < 0) {
						if (testing.hp < 90) {
							if (testing.live == 1) {
								prt_val_set(Val.gi, 0);
							}
							buffer_seek(testing.buff_chat, buffer_seek_start, 0);
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
					
							buffer_write(testing.buff_chat,buffer_u8,199)
							buffer_write(testing.buff_chat,buffer_bool,up);//팀점수 업
	
							network_send_packet(0,testing.buff_chat,2);
							audio_stop_all();
							room_goto(room_out);
						}
						else {
							buffer_seek(testing.buff_chat, buffer_seek_start, 0);
							buffer_write(testing.buff_chat,buffer_u8,44)
	
							network_send_packet(0,testing.buff_chat,1);
		
							room_goto(room_out);
						}
					}
				}
				else
				{
					room_goto(room_out);
				}
			}
			else {
				with(testing) {
					prt_val_set(Val.mp, 100);
					prt_val_set(Val.gi, 0);
				}
				global.intuto = false;
				for (var i = 0; i < 7; i++) {
					global.item_time[i] = 0;
				}
				network_destroy(global.client);
				room_goto(room_out);
			}
		}
	}
}
/*
else {
	if (instance_exists(testing)) {
		testing.live = 1;
		if (global.hat > spr_hat) {
			scr_hat_change2(spr_hat1);
		}
		if (instance_exists(serve)) {
			if (serve.connect >= 0)
			{
				if (serve.last_time < 0) {
					if (testing.hp < 90) {
						buffer_seek(testing.buff_chat, buffer_seek_start, 0);
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
					
						buffer_write(testing.buff_chat,buffer_u8,199)
						buffer_write(testing.buff_chat,buffer_bool,up);//팀점수 업
	
						network_send_packet(0,testing.buff_chat,2);
						audio_stop_all();
						room_goto(room_out);
					}
					else {
						buffer_seek(testing.buff_chat, buffer_seek_start, 0);
						buffer_write(testing.buff_chat,buffer_u8,44)
	
						network_send_packet(0,testing.buff_chat,1);
		
						room_goto(room_out);
					}
				}
			}
			else
			{
				room_goto(room_out);
			}
		}
	}
}*/
}
}
switch(global.stats){
case spr_stats4 :
    if (testing.live = 1) {
	    if (testing.mana > 18) {
        prt_val_add(Val.mp, -18)
    }
}
break;
default :
break
}