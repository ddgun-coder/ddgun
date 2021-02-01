if (live == 0) {
	if (global.team == other.team) {
		if (global.hat != spr_hat15 and global.hat != spr_hat72) {
			server202_sound(resurrection);
			live = 1;
			hp = 100;
			alarm_set(4, -1);
			other_cid = other.cid;
			server77_equal(serve_val.live, 1, buffer_bool);
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,102);//100은 피해량,스턴값
			buffer_write(buff_chat,buffer_u8,100);
	
			network_send_packet(0,buff_chat, 48);
				
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8, 101);//101은 때린 사람 경험치 주기
			buffer_write(buff_chat,buffer_f32, 100);
			buffer_write(buff_chat,buffer_u8,other_cid);
	
			network_send_packet(0,buff_chat, 48);
		}
	}
}