arm_all_normal()
arm_type = "attack"
switch(global.skin) {
	case 2:
		spr_arml_more = spr_hamer2;
	break;
	default:
		spr_arml_more = spr_hamer;
	break;	
}
left_arm_YA = YA - 180;
a_cooltime = 26 + round(big_val * 3);