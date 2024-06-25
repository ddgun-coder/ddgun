a_cooltime = 50;
server202_sound(apple_4_sound);
seq_start(seq_apple4);
effect_index = effect_book;
spr_armr_more = spr_ballpen;
buffer_seek(buff_chat, buffer_seek_start, 0);
			
buffer_write(buff_chat, buffer_u8, 6);

network_send_packet(0,buff_chat,buffer_tell(buff_chat));

server49_create_instance_str(obj_cutscene, global.window_width / 2 - 300, global.window_height - 300, "(루크:여기까지 인가...)");