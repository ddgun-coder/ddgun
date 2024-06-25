YA = cid_id.YA
for (i = 1; i < 4; ++i)
{
	var a = instance_create_depth(x,y, 0, sang_skill31)
	a.YA = YA + 30 - 15 * i;
	a.cid_id = cid_id
	a.team = team
	a.cid = cid;
	a.alarm[1] = 400 
	a.alarm[2] = 1
}
instance_destroy();