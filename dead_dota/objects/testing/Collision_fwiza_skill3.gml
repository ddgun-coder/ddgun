DMG_buff_e(buff_mpkiller, 300);
/*
if (global.team != other.team and buff_index != spr_wing1) {
	if(buff_index != buff_mpkiller) {
		buff_index = buff_mpkiller;
		other_cid = other.cid;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
		buffer_seek(buff_area, buffer_seek_start, 0);
	
		buffer_write(buff_area,buffer_u8,101);//101은 때린 사람 경험치 주기
		buffer_write(buff_area,buffer_f32,20);
		buffer_write(buff_area,buffer_u8,other_cid);
	
		network_send_packet(0,buff_area,buffer_tell(buff_area));
	}
	buff_time = 300;
}