if (other.team != global.team) {
	if (arm_type_more != "a_w") {
		buff_index = spr_none;
		server77_equal(serve_val.buff_index, spr_none, buffer_u16);
		DMG(10, n_attack_area, 40);
		other_cid = 0;
	}
}