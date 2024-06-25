if (live = 1) {
	if (global.team != other.team or (other.team == 2 and other.cid == global.my_cid)) {
		if (sturn <= 0 and buff_index != spr_wing1) {
			EQ = true;
			YA_changeable = true;
			view_visible[0] = false;
			view_visible[2] = true;
			view_where = 2;
		}
	}
}
DMG(27, EQ_skill1, 120)