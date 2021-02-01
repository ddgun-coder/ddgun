a_cooltime = 40;
server78_create_instace(gman_skill31, x, y);
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "7% 못해서 죄송합니다.");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));