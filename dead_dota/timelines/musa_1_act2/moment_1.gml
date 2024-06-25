/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3D3C756C
/// @DnDArgument : "code" "arm_all_normal();$(13_10)all_spin = 1;$(13_10)temp_YA = YA;$(13_10)spr_armr_more = spr_musa_1_skill;$(13_10)right_arm_YA = 0;$(13_10)left_arm_YA = 0 - 90;$(13_10)effect_index = effect_musa1;$(13_10)all_spin_limit = 360;$(13_10)server78_create_instace(musa_skill1, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));$(13_10)arm_type = "attack""
arm_all_normal();
all_spin = 1;
temp_YA = YA;
spr_armr_more = spr_musa_1_skill;
right_arm_YA = 0;
left_arm_YA = 0 - 90;
effect_index = effect_musa1;
all_spin_limit = 360;
server78_create_instace(musa_skill1, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));
arm_type = "attack"