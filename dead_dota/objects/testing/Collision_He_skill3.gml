if (global.team == other.team or (other.team == 2 and other.cid == global.my_cid)) {
	if(buff_index != spr_wing1) {
			if(buff_index != buff_nu2 and buff_change_time < 0) {
				buff_change_time = 30;
				buff_index = buff_nu2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
			}
		else {
			buff_time = 10;
		}
	}
}
DMG_no_surn2(0.1,0.02);
heal_server(0.07);