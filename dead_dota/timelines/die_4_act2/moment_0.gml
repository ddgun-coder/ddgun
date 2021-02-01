arm_all_normal()
arm_type = "attack"
switch(global.skin) {
	case 2:
		spr_arml_more = spr_bigsaw2;
		spr_armr_more = spr_bigsaw2;
	break;
	default:
		spr_arml_more = spr_bigsaw;
		spr_armr_more = spr_bigsaw;
	break;	
}
right_arm_YA = YA - 180;
left_arm_YA = YA - 180;
left_arm_xscale = -1;
right_arm_xscale = 1;
a_cooltime = 13 + round(big_val * 2);
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)