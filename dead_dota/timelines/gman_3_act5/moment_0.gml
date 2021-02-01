a_cooltime = 40;

server78_create_instace(sea_skill32, x + lengthdir_x(35 * big_val, YA), y + lengthdir_y(35 * big_val, YA) + irandom(30))
server78_create_instace(sea_skill32, x + lengthdir_x(35 * big_val, YA - 180), y + lengthdir_y(35 * big_val, YA - 180) + irandom(30))

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "미사일을 쐇어요 쐇는데");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));