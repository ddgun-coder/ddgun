/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 13F49613
/// @DnDArgument : "code" "a_cooltime = 50;$(13_10)server202_sound(apple_4_sound);$(13_10)$(13_10)buffer_seek(buff_chat, buffer_seek_start, 0);$(13_10)			$(13_10)buffer_write(buff_chat, buffer_u8, 6);$(13_10)$(13_10)network_send_packet(0,buff_chat,buffer_tell(buff_chat));$(13_10)$(13_10)buffer_seek(buff_chat, buffer_seek_start, 0);$(13_10)	$(13_10)buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅$(13_10)buffer_write(buff_chat,buffer_string, "(류크:여기까지 인가...)");$(13_10)buffer_write(buff_chat,buffer_string,global.name);$(13_10)	$(13_10)network_send_packet(0,buff_chat,buffer_tell(buff_chat));"
a_cooltime = 50;
server202_sound(apple_4_sound);

buffer_seek(buff_chat, buffer_seek_start, 0);
			
buffer_write(buff_chat, buffer_u8, 6);

network_send_packet(0,buff_chat,buffer_tell(buff_chat));

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "(류크:여기까지 인가...)");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));