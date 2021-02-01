function server201_levelup() 
{
	buffer_seek(buff_chat, buffer_seek_start, 0);
	buffer_write(buff_chat, buffer_u8, 201);//201은 실질적인 값증가.
	buffer_write(buff_chat, buffer_u8, level);
	
	network_send_packet(0, buff_chat,buffer_tell(buff_chat));
}