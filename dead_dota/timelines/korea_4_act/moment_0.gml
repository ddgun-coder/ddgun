/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D96AE4F
/// @DnDArgument : "code" "arm_all_normal()$(13_10)arm_type = "attack";$(13_10)a_cooltime = 60;$(13_10)server78_create_instace(korea_skill4, x, y);$(13_10)$(13_10)buffer_seek(buff_chat, buffer_seek_start, 0);$(13_10)buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅$(13_10)buffer_write(buff_chat,buffer_string, "내 힘을 조금 나눠주지 ㅎ");$(13_10)buffer_write(buff_chat,buffer_string,global.name);$(13_10)	$(13_10)network_send_packet(0,buff_chat, buffer_tell(buff_chat));"
arm_all_normal()
arm_type = "attack";
a_cooltime = 60;
server78_create_instace(korea_skill4, x, y);

buffer_seek(buff_chat, buffer_seek_start, 0);
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "내 힘을 조금 나눠주지 ㅎ");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat, buffer_tell(buff_chat));