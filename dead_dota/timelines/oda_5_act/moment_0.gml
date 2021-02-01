arm_all_normal();
a_cooltime = 40;
arm_type = "attack"
temp_YA = YA;
server78_create_instace(oda_skill5, x, y);
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "거인족이여 집결하라!");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));