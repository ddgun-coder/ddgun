function heal_server(argument0) {
	var heal = argument0

	if (live = 1 and hp <= m_hp - heal) {
		if (global.team == other.team) {
			if (buff_index != buff_noheal) {
				hp += heal;
				other_cid = other.cid;
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
				buffer_write(buff_chat,buffer_f32,heal);
				buffer_write(buff_chat,buffer_u8,other_cid);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
				other_cid = 0;
			}
		}
	}


}
