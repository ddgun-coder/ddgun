function DMG_buff_team(argument0, argument1) {
	var buff_name = argument0
	var buff_time1 = argument1
	if ((global.team == other.team and other.team != 2) or (other.team == 2 and other.cid == global.my_cid)) {
		if(buff_index != buff_name) {
			if (buff_change_time < 0) {
				buff_index = buff_name;
				other_cid = other.cid;
				buff_speed = 0;
				YA_changeable = false;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
				buff_change_time = 40;
			}
		}
		buff_time = buff_time1;
	}
}
