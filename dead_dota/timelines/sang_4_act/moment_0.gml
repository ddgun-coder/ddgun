arm_type = "attack"
a_cooltime = 40;
if (place_free(x, y)) {
	buffer_seek(buff_chat, buffer_seek_start, 0);
			
	buffer_write(buff_chat, buffer_u8, 5);
	buffer_write(buff_chat, buffer_string, obj_say_here_online.last_name);
	buffer_write(buff_chat, buffer_u8, 3);

	network_send_packet(0,buff_chat,buffer_tell(buff_chat));

	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
	buffer_write(buff_chat,buffer_string, "이리오너라");
	buffer_write(buff_chat,buffer_string,global.name);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));	
}
else {
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
	buffer_write(buff_chat,buffer_string, "벽에서는 사용할수 없다...");
	buffer_write(buff_chat,buffer_string,global.name);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}