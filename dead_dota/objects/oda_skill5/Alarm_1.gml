/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7DCD88F0
/// @DnDArgument : "code" "with(testing) {$(13_10)	if (global.my_cid_id == other.cid_id) {$(13_10)		go_to_scale = big_val + 1.5;$(13_10)		big_val_time = 300;$(13_10)		if (go_to_scale > 10) {$(13_10)			buffer_seek(buff_chat, buffer_seek_start, 0);$(13_10)	$(13_10)			buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅$(13_10)			buffer_write(buff_chat,buffer_string, "땅꼬마 녀석들!");$(13_10)			buffer_write(buff_chat,buffer_string,global.name);$(13_10)	$(13_10)			network_send_packet(0,buff_chat,buffer_tell(buff_chat));$(13_10)		}$(13_10)	}$(13_10)	else {$(13_10)		go_to_scale = big_val + 1;$(13_10)		big_val_time = 300;$(13_10)	}$(13_10)	server78_create_instace(fheal_skill2, x, y);$(13_10)}"
with(testing) {
	if (global.my_cid_id == other.cid_id) {
		go_to_scale = big_val + 1.5;
		big_val_time = 300;
		if (go_to_scale > 10) {
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
			buffer_write(buff_chat,buffer_string, "땅꼬마 녀석들!");
			buffer_write(buff_chat,buffer_string,global.name);
	
			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
		}
	}
	else {
		go_to_scale = big_val + 1;
		big_val_time = 300;
	}
	server78_create_instace(fheal_skill2, x, y);
}