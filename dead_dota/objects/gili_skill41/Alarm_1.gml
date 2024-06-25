with(testing) {
	var buff_list = [buff_nu2, buff_bleed, buff_bwiza2, buff_djz, buff_fast_go, buff_giligili, buff_giligili2,
	buff_jaja, buff_mpkiller, buff_musa, buff_nin4, buff_noheal, buff_noitem, buff_p2, buff_sang, buff_see2,
	buff_see3, buff_shadow, buff_tele, buff_tele1, buff_timeb, buff_timeP];
	buff_index = buff_list[irandom(array_length(buff_list) - 1)];
	buff_time = 400;
	server77_equal(serve_val.buff_index, buff_index, buffer_u16);
}