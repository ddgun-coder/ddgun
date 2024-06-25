if (other.image_index > 10) {
	if(global.team == other.team or (other.team == 2 and other.cid == global.my_cid)) {
		buff_index = buff_nu2;
		buff_time = 300;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
}
else {
	DMG(66, yellow_skill2, 70);
	other_cid = 0;
}