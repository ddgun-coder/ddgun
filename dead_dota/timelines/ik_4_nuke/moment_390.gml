/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10BE061A
/// @DnDArgument : "code" "nu_on = false;$(13_10)$(13_10)	buffer_seek(buff_area, buffer_seek_start, 0);$(13_10)	$(13_10)	buffer_write(buff_area,buffer_u8,45);//45는 핵폭발;$(13_10)	buffer_write(buff_area,buffer_u8,global.team);$(13_10)	$(13_10)	network_send_packet(0,buff_area,buffer_tell(buff_area));"
nu_on = false;

	buffer_seek(buff_area, buffer_seek_start, 0);
	
	buffer_write(buff_area,buffer_u8,45);//45는 핵폭발;
	buffer_write(buff_area,buffer_u8,global.team);
	
	network_send_packet(0,buff_area,buffer_tell(buff_area));