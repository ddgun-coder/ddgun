alarm_set(10, 1);

if (global.only_see) {
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,2)//2는 x,y,각도
	buffer_write(buff_chat,buffer_u8, 0);
	buffer_write(buff_chat,buffer_u16, 0);
	buffer_write(buff_chat,buffer_u16, 0);	
	buffer_write(buff_chat,buffer_s16, 0);
	
	buffer_write(buff_chat,buffer_s16,left_arm_YA);
	buffer_write(buff_chat,buffer_s16,right_arm_YA);
	buffer_write(buff_chat,buffer_s16,left_foot_YA);
	buffer_write(buff_chat,buffer_s16,right_foot_YA);
	buffer_write(buff_chat,buffer_s16,temp_YA);
	
	if (hp > m_hp) {
		hp = m_hp;	
	}
	buffer_write(buff_chat,buffer_s8,hp);
	
	buffer_write(buff_chat,buffer_u16,footL_x);
	buffer_write(buff_chat,buffer_u16,footL_y);
	buffer_write(buff_chat,buffer_u16,footR_x);
	buffer_write(buff_chat,buffer_u16,footR_y);
	
	buffer_write(buff_chat,buffer_u16,armR_x);
	buffer_write(buff_chat,buffer_u16,armR_y);
	buffer_write(buff_chat,buffer_u16,armL_x);
	buffer_write(buff_chat,buffer_u16,armL_y);
	buffer_write(buff_chat,buffer_f32,0);
	
	buffer_write(buff_chat,buffer_u8,charge);

	network_send_packet(global.intuto,buff_chat, buffer_tell(buff_chat));
}
else {
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,2)//2는 x,y,각도
	buffer_write(buff_chat,buffer_u8, 0);
	buffer_write(buff_chat,buffer_u16,x);
	buffer_write(buff_chat,buffer_u16,y);	
	buffer_write(buff_chat,buffer_s16,YA);
	
	buffer_write(buff_chat,buffer_s16,left_arm_YA);
	buffer_write(buff_chat,buffer_s16,right_arm_YA);
	buffer_write(buff_chat,buffer_s16,left_foot_YA);
	buffer_write(buff_chat,buffer_s16,right_foot_YA);
	buffer_write(buff_chat,buffer_s16,temp_YA);
	
	if (hp > m_hp) {
		hp = m_hp;	
	}
	buffer_write(buff_chat,buffer_s8,hp);
	
	buffer_write(buff_chat,buffer_u16,footL_x);
	buffer_write(buff_chat,buffer_u16,footL_y);
	buffer_write(buff_chat,buffer_u16,footR_x);
	buffer_write(buff_chat,buffer_u16,footR_y);
	
	buffer_write(buff_chat,buffer_u16,armR_x);
	buffer_write(buff_chat,buffer_u16,armR_y);
	buffer_write(buff_chat,buffer_u16,armL_x);
	buffer_write(buff_chat,buffer_u16,armL_y);
	buffer_write(buff_chat,buffer_f32,big_val);
	
	buffer_write(buff_chat,buffer_u8,charge);

	network_send_packet(global.intuto,buff_chat, buffer_tell(buff_chat));
}
server77_equal(serve_val.stats6_type, stats6_type, buffer_u16);
server77_equal(serve_val.q_attack_type, q_attack_type, buffer_u16);
server77_equal(serve_val.w_attack_type, w_attack_type, buffer_u16);
server77_equal(serve_val.skill_con, skill_con, buffer_u16);
server77_equal(serve_val.up_skill, up_skill, buffer_u16);