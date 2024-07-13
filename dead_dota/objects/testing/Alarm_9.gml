if (global.team == 2) {
	global.team = irandom(1);	
}
if (room == room_temp) { 
	buffer_seek(buff_chat, buffer_seek_start, 0);
					
	buffer_write(buff_chat,buffer_u8,111)//111 is only start 
	buffer_write(buff_chat,buffer_u8,0)
	buffer_write(buff_chat,buffer_u8,level);
	buffer_write(buff_chat,buffer_string,global.name);
	buffer_write(buff_chat,buffer_bool,global.team);
	
	buffer_write(buff_chat,buffer_u8,global.hat_show);
	buffer_write(buff_chat,buffer_u8,global.arm_index);
	buffer_write(buff_chat,buffer_u8,global.foot_index);
	buffer_write(buff_chat,buffer_u16,global.face);
	buffer_write(buff_chat,buffer_u8,global.skin);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}