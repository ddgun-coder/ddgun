a_cooltime = 20;

server78_create_instace(fly_skill3, x, y);
server78_create_instace(fly_skill3, x, y);
server78_create_instace(fly_skill3, x, y);
server78_create_instace(fly_skill3, x, y);

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "방독면 챙기십쇼.");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));