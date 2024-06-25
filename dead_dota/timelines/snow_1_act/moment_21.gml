switch(d_attack_type) {
    case spr_sangbow:
	    arm_all_normal();
        a_possible = true
        arm_type = "normal";
        arm_type_more = "none"
        right_arm_YA = YA ;
        left_arm_YA = YA ;
        arm_movement(0, 0, 0, 0)
        spr_armr_more = spr_none
        bullet += 1
	break;
	default:
	break;
}