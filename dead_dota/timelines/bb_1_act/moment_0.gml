switch(global.skin) {
	case 1:
		spr_armr_more = spr_bb_stonepunk
    break;
	case 2:
		spr_armr_more = spr_hanbat1
    break;
    default:
		spr_armr_more = spr_bada;
    break;
}
a_cooltime = 40;
arm_type = "attack"
left_goto_YA = image_angle;
right_arm_YA = image_angle + 10;
right_goto_YA = image_angle - 10;
spin_able = true;
arm_spin_able = 1;
arm_spin_speed = 20;