if(level < 2) {
	if(other.team == global.team) {
		aexp += 1;
		mana_1 += 0.7;
		prt_val_add(0, 2);
	}
}
if (global.my_cid_id == other.cid_id) {
	aexp += 1;
	mana_1 += 0.7;
	prt_val_add(0, 2);
}