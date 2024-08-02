arm_all_normal();
a_cooltime = 440 - level * 40;
arm_type = "attack"
arm_type_more = "studing";
effect_index = effect_book;
spr_armr_more = spr_ballpen;
temp_YA = YA;
cancle_able = true;
server49_create_instance_str(obj_cutscene, global.window_width / 2 - 300, global.window_height - 300, "(뭔가 적는 중..)");
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "(뭔가 적는 중..)");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));

timeline_position = level * 40;