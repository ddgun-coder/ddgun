a_cooltime = 40;

instance_create_depth(x, y, 0, obj_bleed);

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "피흘려도 우리가 흘려야죠");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));