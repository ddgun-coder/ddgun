function DMG_only_exp(argument0) {
	var aexp = argument0;
	if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
		other_cid = other.cid;
		if (just_time > 0) {
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
			buffer_write(buff_chat,buffer_f32,aexp);
			buffer_write(buff_chat,buffer_u8,other_cid);
	
			network_send_packet(0,buff_chat, 6);
		}
	}


}
