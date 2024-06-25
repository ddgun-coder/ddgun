a_cooltime = 40;
hat_bye = true;
hat_bye_time = 400;
server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
prt_val_add(Val.gi, 100);
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "감자탕에 감자가 왜 없지?");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));