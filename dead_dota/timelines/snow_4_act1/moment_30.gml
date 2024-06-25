switch(d_attack_type) {
    case spr_mod3:
	    arm_all_normal();
        a_possible = true;
        arm_type = "none"
        arm_type_more = "none"
        right_arm_YA = 0 ;
        left_arm_YA = 0 ;
        arm_movement(0, 0, 0, 0)
        spr_armr_more = spr_none
	break;//후딜감소 종료
    }