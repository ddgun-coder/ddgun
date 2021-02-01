arm_all_normal();
arm_type = "attack"
a_possible = false;
var r = irandom(7);
if (r == 0) {
	server78_create_instace(obj_horse, x, y)
}
else {
	server78_create_instace(asset_get_index("obj_horse" + string(r)), x, y)
}
instance_create_depth(x, y, depth, see_skill_showd)
instance_create_depth(x, y, depth, see_skill_showq)
no_change = true;
terror_charge = 11;
cancle_able = true;