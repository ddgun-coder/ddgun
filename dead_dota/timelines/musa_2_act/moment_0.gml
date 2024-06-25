arm_all_normal();
arm_movement(-4, -5, 2, -6);
foot_movement(4, -4, -3, -8)
left_arm_YA = 0 + 220;
right_arm_YA = 0 + 25
left_foot_YA = 0 - 35;
right_foot_YA = 0 + 45
switch(global.skin) {
	case 4:
	   spr_arml_more = spr_bam_sward;
    break;
	default:
		spr_arml_more = spr_musa_2_skill;
		effect_index = effect_musa2;
    break;
	
}
temp_YA = YA;
a_cooltime = 21;
arm_type = "attack"
//11	