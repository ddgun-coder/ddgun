arm_all_normal()
arm_type = "attack";
a_cooltime = 60;
server78_create_instace(fwiza_skill41, x, y);

buffer_seek(buff_chat, buffer_seek_start, 0);
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "얘들아, 밥먹을 시간이다.");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat, buffer_tell(buff_chat));