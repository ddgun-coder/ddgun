/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D030B08
/// @DnDArgument : "code" "arm_movement(0, 0, 8, 0);$(13_10)server77_equal("color", c_black, buffer_f32);$(13_10)temp_YA = YA;$(13_10)left_arm_YA = YA;$(13_10)right_arm_YA = YA;$(13_10)spr_arml_more = spr_musa_2_skill;$(13_10)spr_armr_more = spr_musa_2_skill2;$(13_10)effect_index = effect_musa2;$(13_10)go_to_speed = 15;$(13_10)server78_create_instace(musa_skill2, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));"
arm_movement(0, 0, 8, 0);
server77_equal(serve_val.color, c_black, buffer_f32);
temp_YA = YA;
left_arm_YA = YA;
right_arm_YA = YA;
spr_arml_more = spr_musa_2_skill;
spr_armr_more = spr_musa_2_skill2;
effect_index = effect_musa2;
go_to_speed = 15;
server78_create_instace(musa_skill2, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));