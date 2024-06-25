a_cooltime = 20;
a_a_cooltime = 900;
if (place_free(x, y)) {
	random_xy();
	server78_create_instace(t_skill3, x, y);
}
else {
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
	buffer_write(buff_chat,buffer_string, "벽에서는 사용할수 없다...");
	buffer_write(buff_chat,buffer_string,global.name);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}