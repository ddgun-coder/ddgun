arm_type = "attack"
arm_type_more = "apple_1";
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "인간들을 학살하라!");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.x > 0 and obj.y > 0) { 
		server78_create_instace(eng_skill2, obj.x, obj.y);	
	}
}