if(trol_cooltime <= 0) {
	var name = instance_create_depth(x, y, 200, jam_skill23);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
	trol_cooltime = 50
	instance_destroy();
}