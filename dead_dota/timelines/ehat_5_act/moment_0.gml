/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 741F69A3
/// @DnDArgument : "code" "server78_create_instace(ehat_skill5, x, y)$(13_10)buffer_seek(buff_chat, buffer_seek_start, 0);$(13_10)	$(13_10)buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅$(13_10)buffer_write(buff_chat,buffer_string, "[☆]우린 자연인다![☆]");$(13_10)buffer_write(buff_chat,buffer_string,global.name);$(13_10)	$(13_10)network_send_packet(0,buff_chat,buffer_tell(buff_chat));$(13_10)a_a_cooltime = 40;"
server78_create_instace(ehat_skill5, x, y)
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "[☆]우린 자연인다![☆]");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));
a_a_cooltime = 40;