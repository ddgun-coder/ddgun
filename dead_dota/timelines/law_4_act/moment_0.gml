/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 22540E48
/// @DnDArgument : "code" "a_cooltime = 80;$(13_10)arm_type = "attack";$(13_10)server78_create_instace(law_skill4, x, y);$(13_10)buffer_seek(buff_chat, buffer_seek_start, 0);$(13_10)	$(13_10)buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅$(13_10)buffer_write(buff_chat,buffer_string, "모든 마나의 운용을 멈춰라!");$(13_10)buffer_write(buff_chat,buffer_string,global.name);$(13_10)	$(13_10)network_send_packet(0,buff_chat,buffer_tell(buff_chat));"
a_cooltime = 80;
arm_type = "attack";
server78_create_instace(law_skill4, x, y);
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "모든 마나의 운용을 멈춰라!");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));