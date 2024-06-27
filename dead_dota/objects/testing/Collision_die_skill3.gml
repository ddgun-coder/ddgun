if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
	if (arm_type_more != "a_w") {
	    if (buff_index != spr_none) {
		buff_index = spr_none;
		buff_time = 1;
		server77_equal(serve_val.buff_index, spr_none, buffer_u16);
		DMG_hpteal(15, n_attack_area, 40);
		other_cid = 0;
	 }
	 else {
         DMG_no_surn(0)
     }  
  }
}