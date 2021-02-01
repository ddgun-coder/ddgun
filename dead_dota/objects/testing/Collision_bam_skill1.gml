/// @description Insert description here
// You can write your code in this editor
if (live = 1) {
	if (buff_index != spr_wing1) {
		if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
			if (live = 1) {
				hp -= 0.3;
				other_cid = other.cid;
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,100);//100은 피해량,스턴값
					buffer_write(buff_chat,buffer_u8,0);
					buffer_write(buff_chat,buffer_u8,1);
					buffer_write(buff_chat,buffer_u16,0);
	
					network_send_packet(0,buff_chat,buffer_tell(buff_chat));
				
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,103);//101은 때린 사람 경험치 주기
					buffer_write(buff_chat,buffer_f32, 0.3);
					buffer_write(buff_chat,buffer_u8,other_cid);
	
					network_send_packet(0,buff_chat,buffer_tell(buff_chat));
					other_cid = 0;
			}
		}
	}
}