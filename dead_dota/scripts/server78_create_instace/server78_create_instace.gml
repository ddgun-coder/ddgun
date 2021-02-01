function server78_create_instace(argument0, argument1, argument2) {
	if (!global.only_see) {
		var name = argument0;//obj스킬 변수값
		var skill_x = argument1;// x좌표
		var skill_y = argument2;// y좌표 
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
		buffer_write(testing.buff_chat, buffer_u8, 78);//78은 모두에게 보내기
		buffer_write(testing.buff_chat, buffer_u8, 0);
		buffer_write(testing.buff_chat, buffer_u16, name);
		buffer_write(testing.buff_chat, buffer_u16, skill_x);
		buffer_write(testing.buff_chat, buffer_u16, skill_y);
		buffer_write(testing.buff_chat, buffer_u8, global.team);
	
		network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));
	}
}
