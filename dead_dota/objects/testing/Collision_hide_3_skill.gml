if (live == 0) {
		server202_sound(resurrection);
		if (level < 2) {
			level = 2;
		}
		live = 1;
		hp = 15;
		server77_equal(serve_val.live, live, buffer_bool)
		alarm_set(4, -1);
		other_cid = other.cid;
		arm_type = "attack"
		a_cooltime = 60;
		buff_index = spr_wing1;
		buff_time = 400;
		cur_attack = 0;
		if(other.team != global.team) {
			buffer_seek(buff_chat, buffer_seek_start, 0);
			
			buffer_write(buff_chat, buffer_u8, 5);
			buffer_write(buff_chat, buffer_string, global.name);
			buffer_write(buff_chat, buffer_u8, 2);

			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
		}
		server77_equal(serve_val.hat_frame, 1, buffer_s8);

		buffer_seek(buff_chat, buffer_seek_start, 0);
	
		buffer_write(buff_chat,buffer_u8,102);//100은 피해량,스턴값
		buffer_write(buff_chat,buffer_u8,100);
	
		network_send_packet(0,buff_chat, 2);

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
	
}