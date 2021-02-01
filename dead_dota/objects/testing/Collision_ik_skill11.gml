if (live = 1) {
	if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
		if (buff_index == spr_none) {
			buff_index = buff_djz;
			buff_time = 200;
			server77_equal(serve_val.buff_index, buff_index, buffer_u16);
		}
		if (live = 1) {
				hp -= 0.8;
				other_cid = other.cid;
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,100);//100은 피해량,스턴값
					buffer_write(buff_chat,buffer_u8,0);
					buffer_write(buff_chat,buffer_u8,1);
					buffer_write(buff_chat,buffer_u16,0);
	
					network_send_packet(0,buff_chat,buffer_tell(buff_chat));
				
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
					buffer_write(buff_chat,buffer_f32,2);
					buffer_write(buff_chat,buffer_u8,other_cid);
	
					network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			other_cid = 0;
		}
	}
}