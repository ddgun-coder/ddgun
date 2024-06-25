switch(global.skin) {
	case 1:
		spr_armr_more = spr_bb_stonepunk1
    break;
	case 2:
		spr_armr_more = spr_hanbat2
    break;
    default:
		spr_armr_more = spr_bada2;
    break;
}
a_cooltime = 20;
arm_type = "attack"
left_goto_YA = image_angle;
right_arm_YA = image_angle + 10;
right_goto_YA = image_angle - 10;
arm_spin_able = 1;
arm_spin_speed = 20;
spin_able = true;