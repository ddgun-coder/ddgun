norm_attack();
buffer_seek(buff_chat, buffer_seek_start, 0);
switch(irandom(2)) {
	case 0:
		server78_create_instace(see_skill4, x, y);
		buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
		buffer_write(buff_chat,buffer_string, "전쟁은 평화");
		buffer_write(buff_chat,buffer_string,global.name);
	break;
	case 1:
		server78_create_instace(see_skill41, x, y);
		buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
		buffer_write(buff_chat,buffer_string, "자유는 예속");
		buffer_write(buff_chat,buffer_string,global.name);
	break;
	case 2:
		server78_create_instace(see_skill42, x, y);
		buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
		buffer_write(buff_chat,buffer_string, "무지는 힘");
		buffer_write(buff_chat,buffer_string,global.name);
	break;
}
network_send_packet(0,buff_chat,buffer_tell(buff_chat));