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
a_cooltime = 32;
arm_movement(2, 0, 10, 0);
right_arm_YA = 0 + 25;
server78_create_instace(bb_skill111, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));