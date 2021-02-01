arm_type = "attack"
a_cooltime = 60;
prt_val_set(Val.mp, 0);
buff_index = buff_mpkiller;
buff_time = 200;
buffer_seek(buff_chat, buffer_seek_start, 0);
			
buffer_write(buff_chat, buffer_u8, 5);
buffer_write(buff_chat, buffer_string, obj_say_here_online.last_name);
buffer_write(buff_chat, buffer_u8, 1);

network_send_packet(0,buff_chat,buffer_tell(buff_chat));