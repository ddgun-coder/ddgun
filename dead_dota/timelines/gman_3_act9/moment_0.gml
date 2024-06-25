a_cooltime = 40;

arm_all_normal();
a_cooltime = 80;
arm_type = "attack";
arm_type_more = "sward_2";
spr_armr_more = spr_jam1;
right_arm_YA += 40;
hat_bye = true;
server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
server78_create_instace(jam_skill1, x, y)

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "라면사십쇼.");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));