arm_all_normal();
arm_type = "jump"
right_arm_YA = 0 + 90
right_foot_deltay = -10;
left_foot_deltay = -10;
left_arm_YA = 0 - 45
left_foot_YA = 0 - 45
right_foot_YA = 0 + 45
all_spin = 1 ;
all_spin_limit = 360;
arm_move_speed = 0;
arm_spin_able = false;
arm_moveR = true;
arm_move_speed = 30;
arm_move_delta =0 ;
arm_move_limit = 380;

switch(global.skin) {
	case 0:
        spr_armr_more = spr_ass_w
		spr_arml_more = spr_ass_w2
    break;
	case 1:
	   spr_armr_more = spr_blackass_w
	   spr_arml_more = spr_blackass_w2
	break;
}