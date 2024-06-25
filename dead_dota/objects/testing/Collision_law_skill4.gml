if (global.team != other.team) {
	if (a_cooltime > 0 or a_possible == false or buff_index != spr_none) {
		DMG(15, n_attack_area, 96);
		buff_index = spr_none;
		prt_val_set(Val.mp, 100);
	}
}