function server51_fish(argument0, argument1) {
	var name = argument0;//obj스킬 변수값
	var size = argument1;

	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat, buffer_u8, 51);//78은 모두에게 보내기
	buffer_write(testing.buff_chat, buffer_u8, 0);
	buffer_write(testing.buff_chat, buffer_u16, name);
	buffer_write(testing.buff_chat, buffer_u16,  x + lengthdir_x(35 * big_val, YA - 90));
	buffer_write(testing.buff_chat, buffer_u16,  y + lengthdir_y(35 * big_val, YA - 90));
	buffer_write(testing.buff_chat, buffer_f32, size);
	
	network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));


}

function server51_fish_xy(name, size, _x, _y) {

	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat, buffer_u8, 51);//78은 모두에게 보내기
	buffer_write(testing.buff_chat, buffer_u8, 0);
	buffer_write(testing.buff_chat, buffer_u16, name);
	buffer_write(testing.buff_chat, buffer_u16,  _x);
	buffer_write(testing.buff_chat, buffer_u16,  _y);
	buffer_write(testing.buff_chat, buffer_f32, size);
	
	network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));


}
