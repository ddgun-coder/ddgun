var name = instance_create_depth(x, y, 200, jam_skill23);
name.cid_id = cid_id;
name.cid = cid;
name.team = team;

with(testing){
	if (global.my_cid_id == other.cid_id) {
		buff_exp()
	}
}
instance_destroy();