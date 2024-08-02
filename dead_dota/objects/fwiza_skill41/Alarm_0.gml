if(team != global.team) {
	var xxx = testing.x + irandom_range(-200, 200)
	var yyy = testing.y + irandom_range(-200, 200)
	server78_create_instace(fwiza_skill51, xxx, yyy);
	var o = instance_create_depth(xxx, yyy, 200, fwiza_skill5);
	o.cid_id = cid_id;
	o.team = team;
	o.cid = cid;
}
instance_destroy();