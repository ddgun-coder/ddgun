arm_type = "normal"
arm_type_more = "none";
cancle_able = false;

buffer_seek(buff_chat, buffer_seek_start, 0);
			
buffer_write(buff_chat, buffer_u8, 5);
buffer_write(buff_chat, buffer_string, obj_say_here_online.last_name);
buffer_write(buff_chat, buffer_u8, 0);

network_send_packet(0,buff_chat, buffer_tell(buff_chat));

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "(역시 인간은 재밌어..)");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));