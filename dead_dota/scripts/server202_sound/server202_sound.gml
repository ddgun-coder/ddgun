function server202_sound(argument0) {
	var sound = argument0
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat, buffer_u8, 202);//202는 소리.
	buffer_write(testing.buff_chat, buffer_u8, 0);//202는 소리.
	buffer_write(testing.buff_chat, buffer_u16, sound);
	
	network_send_packet(global.intuto, testing.buff_chat, 4);


}
