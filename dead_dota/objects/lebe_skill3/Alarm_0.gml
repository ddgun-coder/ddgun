if (trying > 0) {
	var le = instance_create_depth(x, y, depth, lebe_skill3);
	le.trying = trying - 1;
	le.team = team;
	le.cid = cid;
	le.cid_id = cid_id;
	instance_destroy();
}
else {
	instance_destroy();
}