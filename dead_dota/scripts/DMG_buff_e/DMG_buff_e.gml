// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DMG_buff_e(buff, time){
	if (global.team != other.team and buff_index != spr_wing1) {
		if(buff_index != buff) {
			buff_index = buff;
			other_cid = other.cid;
			server77_equal(serve_val.buff_index, buff_index, buffer_u16);
			buffer_seek(buff_chat, buffer_seek_start, 0);
	
			buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
			buffer_write(buff_chat,buffer_f32,20);
			buffer_write(buff_chat,buffer_u8,other_cid);
	
			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
		}
	buff_time = time;
}
}