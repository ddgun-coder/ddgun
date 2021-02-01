a_cooltime = 40;
left_arm_yscale = -1;
right_arm_yscale = -1;
if (place_free(x, y)) {
	server78_create_instace(bandit_skill4, x, y)
}
else {
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
	buffer_write(buff_chat,buffer_string, "이 짓은 원거리와 다를바없다...");
	buffer_write(buff_chat,buffer_string,global.name);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}
arm_type = "attack"