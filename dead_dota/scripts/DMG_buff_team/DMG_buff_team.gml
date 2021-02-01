function DMG_buff_team(argument0, argument1) {
	var buff_name = argument0
	var buff_time1 = argument1
	if (global.team == other.team or (other.team == 2 and other.cid == global.my_cid)) {
		if(buff_index != buff_name) {
			if (buff_change_time < 0) {
				buff_index = buff_name;
				other_cid = other.cid;
				buff_speed = 0;
				YA_changeable = false;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				if (just_time > 0) {
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
				buffer_write(buff_chat,buffer_f32,20);
				buffer_write(buff_chat,buffer_u8,other_cid);
	
				network_send_packet(0,buff_chat, 6);
				}
				buff_change_time = 40;
			}
		}
		buff_time = buff_time1;
	}


}
