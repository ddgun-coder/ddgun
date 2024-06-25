for (var i = 0; i < 9; i++) {
	var name = instance_create_depth(x + lengthdir_x(350 * cid_id.big_val, i * 40), y + lengthdir_y(350 * cid_id.big_val, i * 40), 200, jam_skill42);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
	name.YA = i * 40 - 90;
}