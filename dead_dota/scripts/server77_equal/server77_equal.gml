function server77_equal(argument0, argument1, argument2) {
	var name = argument0;//변수이름 들어갈 자리
	var realvar = argument1//변수값 들어갈 자리
	if (is_string(name)) {
		show_message(name);	
	}
	var type = argument2//버퍼종류
	if (room != room_main) {
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
		buffer_write(testing.buff_chat, buffer_u8, 77);//77은 모두에게 보내기
		buffer_write(testing.buff_chat, buffer_u8, 0);
		buffer_write(testing.buff_chat, buffer_u8, name);
		buffer_write(testing.buff_chat, buffer_u8, type);
		buffer_write(testing.buff_chat, type, realvar);
		network_send_packet(global.intuto, testing.buff_chat,buffer_tell(testing.buff_chat));
	}


}
