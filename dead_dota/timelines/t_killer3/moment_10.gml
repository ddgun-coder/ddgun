arm_all_normal();
if (place_free(x, y)) {
	random_xy();
	server202_sound(ddr_3_sound);
	a_cooltime = 80;
	left_arm_yscale = -1;
	right_arm_yscale = -1;
	server78_create_instace(ddr_skill3, x, y)
	arm_type = "attack"
}
else {
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
	buffer_write(buff_chat,buffer_string, "벽에서는 사용할수 없다...");
	buffer_write(buff_chat,buffer_string,global.name);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}