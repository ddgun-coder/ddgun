arm_all_normal();
invisible = true;
invisible_time = 60;
arm_movement(0, 3, -5, 18);
left_arm_YA = 0 + 220;
right_arm_YA = 0 - 75;
switch(global.skin) {
	case 0:
		spr_arml_more = spr_ass_w2
    break;
	case 1:
	   spr_arml_more = spr_blackass_w2
	break;
}
a_cooltime = 24;
arm_type = "attack"