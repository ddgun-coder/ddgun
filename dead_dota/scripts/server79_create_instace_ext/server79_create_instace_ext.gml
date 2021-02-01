function server79_create_instace_ext(argument0, argument1, argument2, argument3) {
	var name = argument0;//obj스킬 변수값
	var skill_x = argument1;// x좌표
	var skill_y = argument2;// y좌표 
	var addition = argument3; //추가적인 값
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat, buffer_u8, 79);//78은 모두에게 보내기
	buffer_write(testing.buff_chat, buffer_u8, 0);
	buffer_write(testing.buff_chat, buffer_u16, name);
	buffer_write(testing.buff_chat, buffer_u16, skill_x);
	buffer_write(testing.buff_chat, buffer_u16, skill_y);
	buffer_write(testing.buff_chat, buffer_u8, global.team);
	buffer_write(testing.buff_chat, buffer_u8, addition);
	
	network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));


}
