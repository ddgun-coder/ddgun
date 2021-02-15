arm_all_normal()
switch(global.skin) {
	case 1:
		spr_armr_more = spr_ghost_Spear;
	break;
	default:
		spr_armr_more = spr_spear;
	break;
}
arm_type = "attack"
arm_type = "spear"
right_arm_YA = YA - 100;
a_possible = false;
instance_create_depth(x, y, -1000, spear_arrow);