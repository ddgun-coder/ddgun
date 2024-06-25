/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B83495C
/// @DnDArgument : "code" "switch(global.skin) {$(13_10)	case 0:$(13_10)		spr_armr_more = spr_musa_3_skill;$(13_10)		effect_index = effect_musa3;$(13_10)    break;$(13_10)	case 1:$(13_10)	    spr_armr_more = spr_dd_musa_3_skill;$(13_10)		effect_index = effect_musa3;$(13_10)	break;$(13_10)	case 2:$(13_10)		spr_armr_more = spr_musa_3_skill;$(13_10)		effect_index = effect_musa3;$(13_10)    break;$(13_10)	case 3:$(13_10)		spr_armr_more = spr_cybermu3;$(13_10)		effect_index = effct_cvmu3;$(13_10)    break;$(13_10)	case 4:$(13_10)		spr_armr_more = spr_bam_musa3;$(13_10)		effect_index = spr_bam_effect1$(13_10)    break;$(13_10)	case 5:$(13_10)		spr_armr_more = spr_west_musa3;$(13_10)		effect_index =  effect_musa3;$(13_10)    break;$(13_10)	default:$(13_10)		spr_armr_more = spr_musa_3_skill;$(13_10)		effect_index = effect_musa3;$(13_10)    break;$(13_10)}$(13_10)go_to_speed = 40;$(13_10)all_spin = 1;$(13_10)all_spin_limit = 360;$(13_10)big_val = 1;$(13_10)arm_move_speed = 0;$(13_10)arm_spin_able = false;$(13_10)arm_moveR = true;$(13_10)arm_move_speed = 30;$(13_10)arm_move_delta =0 ;$(13_10)arm_move_limit =280;$(13_10)cancle_able = false;$(13_10)server78_create_instace(musa_skill3, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));"
switch(global.skin) {
	case 0:
		spr_armr_more = spr_musa_3_skill;
		effect_index = effect_musa3;
    break;
	case 1:
	    spr_armr_more = spr_dd_musa_3_skill;
		effect_index = effect_musa3;
	break;
	case 2:
		spr_armr_more = spr_musa_3_skill;
		effect_index = effect_musa3;
    break;
	case 3:
		spr_armr_more = spr_cybermu3;
		effect_index = effct_cvmu3;
    break;
	case 4:
		spr_armr_more = spr_bam_musa3;
		effect_index = spr_bam_effect1
    break;
	case 5:
		spr_armr_more = spr_west_musa3;
		effect_index =  effect_musa3;
    break;
	default:
		spr_armr_more = spr_musa_3_skill;
		effect_index = effect_musa3;
    break;
}
go_to_speed = 40;
all_spin = 1;
all_spin_limit = 360;
big_val = 1;
arm_move_speed = 0;
arm_spin_able = false;
arm_moveR = true;
arm_move_speed = 30;
arm_move_delta =0 ;
arm_move_limit =280;
cancle_able = false;
server78_create_instace(musa_skill3, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));