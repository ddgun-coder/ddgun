if (live = 1) {
	if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
		if (sturn <= 0) {
			EQ = true
			YA_changeable = true
			view_visible[0] = false;
			view_visible[2] = true;
		}
	}
}
DMG(12, goza_skill, 150);