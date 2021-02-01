if (racing == 2) {
	racing = 0;
	aexp += 100;
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat, buffer_u8, 99);
	buffer_write(buff_chat, buffer_bool, global.team);//팀점수 업
	buffer_write(buff_chat, buffer_u8, 0);
	buffer_write(buff_chat, buffer_u8, 1);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
	prt_val_add(Val.mp, 100);
	prt_val_add(0, 750);
}