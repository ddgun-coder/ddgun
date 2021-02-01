a_cooltime = 320;

server78_create_instace(gman_skill34 ,x ,y);

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "제가 경제 살리겠다고 말이나 했습니까?");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));