a_cooltime = 40;

server78_create_instace(obj_p4, x, y);

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "제가 얘기하니까 비가 계속 오더니 유시민이가 뜨니까 비가 그쳐요");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));