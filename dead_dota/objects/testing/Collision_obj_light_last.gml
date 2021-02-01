server202_sound(resurrection);
live = 1;
hp = 1;
alarm_set(4, -1);
other_cid = other.cid;
arm_type = "attack"
a_cooltime = 60;
scr_hat_change2(spr_level5_hat14);
server77_equal(serve_val.hat_frame, 1, buffer_s8);

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8, 101);//101은 때린 사람 경험치 주기
buffer_write(buff_chat,buffer_f32, 100);
buffer_write(buff_chat,buffer_u8,other_cid);
	
network_send_packet(0,buff_chat, 6);
		
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
buffer_write(buff_chat,buffer_u8, global.hat_show);
buffer_write(buff_chat,buffer_u8, level);
	
network_send_packet(0,buff_chat, 3);
instance_destroy(other.id);