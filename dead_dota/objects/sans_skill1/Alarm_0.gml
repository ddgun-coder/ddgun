var array = [object321, object3211, object32111];
for (var i = 0; i < 3; i++) {
	var name = instance_create_depth(x, y, 200, array[i]);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
}
instance_destroy();