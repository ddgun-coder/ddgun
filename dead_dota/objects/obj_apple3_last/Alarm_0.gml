if (cid_id == global.my_cid_id) {
	with (testing) {
		cur_attack = other.cid;
		other_cid = other.cid;
		hp -= 101;
		arm_type = "ouch";
		testing.sturn = 300;
		buff_time = 400;
		buff_index = buff_apple3;
		YA_changeable = true;
		view_where = 2;
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
		buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
		buffer_write(testing.buff_chat,buffer_u8, 200);
		buffer_write(testing.buff_chat,buffer_u8,101);
		buffer_write(testing.buff_chat,buffer_u16,200);
	
		network_send_packet(0,testing.buff_chat,5);
	}
}
audio_play_sound(apple_3_sound, 1, false);
			
var note = instance_create_depth(x, y, 100, apple_skill3);
note.dead_name = cid_id.name;
var nn = cid_id.name;
with(serve) {
	green_text_update(nn + "님은 침을 기도로 삼켜서 사망");
}
instance_destroy();