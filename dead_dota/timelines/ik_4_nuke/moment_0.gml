arm_all_normal();
a_cooltime = 1000;
buff_index = spr_wing1;
buff_time = 1000;
server77_equal(serve_val.buff_index, buff_index, buffer_u16);
right_arm_yscale = -1;
left_arm_yscale = -1;
server78_create_instace(ik_skill4, x, y);
arm_type = "attack";
only_hat = true;
server202_sound(nu_3_sound_start);
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,50);//50은 핵폭발관리;
	buffer_write(buff_chat,buffer_u8,1);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
server77_equal(serve_val.only_hat, only_hat, buffer_bool);