if (global.team == other.team or (other.team == 2 and other.cid == global.my_cid)) {
	if(buff_index != spr_wing1 and buff_change_time < 0) {
		buff_change_time = 30;
		buff_index = spr_wing1;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
	buff_time = 10;
}
