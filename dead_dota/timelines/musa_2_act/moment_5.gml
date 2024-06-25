arm_all_normal();
arm_type = "attack"
arm_movement(2, -4, 10, -10);
foot_movement(-6, 5, -6, 5);
left_arm_YA = 0 + 25;
right_arm_YA = 0 + 25;
left_foot_YA = 0 + 110;
right_foot_YA = 0 - 10
switch(global.skin) {
	case 0:
		spr_arml_more = spr_musa_2_skill;
		effect_index = effect_musa2;
    break;
	case 1:
		spr_arml_more = spr_musa_2_skill;
		effect_index = effect_musa2;
    break;
	case 2:
		spr_arml_more = spr_musa_2_skill;
		effect_index = effect_musa2;
    break;
	case 3:
		spr_arml_more = spr_musa_2_skill;
		effect_index = spr_cybermu2;
    break;
	case 4:
		spr_arml_more= spr_bam_musa2;
		effect_index = spr_bam_effect;
    break;
    case 5:
		spr_arml_more = spr_west_musa2;
		effect_index = spr_none;
    break;
	default:
		spr_arml_more = spr_musa_2_skill;
		effect_index = effect_musa2;
    break;
	
}
temp_YA = YA;
go_to_speed = 18;
server78_create_instace(musa_skill2, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));