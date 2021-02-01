a_cooltime = 40;

server78_create_instace(gman_skill35 ,x ,y);

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "미국이 주도하는질서 그것을 거역할수가 없어.");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));