arm_all_normal();
server202_sound(nu_4_sound_start);
a_cooltime = 900;
go_to_scale += 8;
big_val += 8;
big_val_time = 1000;
only_hat = true;
effect_index = effect_nu3;
nu_on = true;
temp_YA = YA;
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,50);//50은 핵폭발관리;
buffer_write(buff_chat,buffer_u8,3);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));
server77_equal(serve_val.only_hat, only_hat, buffer_bool);	
