/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 16824195
/// @DnDArgument : "code" "arm_all_normal();$(13_10)arm_type_more = "none"$(13_10)temp_x = x;$(13_10)temp_y = y;$(13_10)x += lengthdir_x(750, YA - 90);$(13_10)y += lengthdir_y(750, YA - 90);$(13_10)YA += 180;$(13_10)arm_movement(0, 0, -5, 0);$(13_10)left_arm_YA = YA + 220;$(13_10)right_arm_YA = YA - 220;$(13_10)spr_arml_more = spr_musa_1_skill;$(13_10)spr_armr_more = spr_musa_1_skill;$(13_10)temp_YA = YA;$(13_10)a_cooltime = 11;$(13_10)arm_type = "attack""
arm_all_normal();
arm_type_more = "none"
temp_x = x;
temp_y = y;
x += lengthdir_x(750, YA - 90);
y += lengthdir_y(750, YA - 90);
YA += 180;
arm_movement(0, 0, -5, 0);
left_arm_YA = YA + 220;
right_arm_YA = YA - 220;
spr_arml_more = spr_musa_1_skill;
spr_armr_more = spr_musa_1_skill;
temp_YA = YA;
a_cooltime = 11;
arm_type = "attack"