if (global.team == other.team) {
	if (sturn > 0 and timeline_index != lebe_3_act) {
		arm_type = "attack";
		buff_time = 92;
        buff_index = spr_wing1;
        server77_equal(serve_val.buff_index, buff_index, buffer_u16);
		normal_play(lebe_3_act);
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
				
		buffer_write(testing.buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
		buffer_write(testing.buff_chat,buffer_f32,100);
		buffer_write(testing.buff_chat,buffer_u8,other.cid);
	
		network_send_packet(0,testing.buff_chat,6);
	}
}