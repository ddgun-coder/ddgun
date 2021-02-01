/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 10C38E54
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "a_possible"
a_possible = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11AAF986
/// @DnDArgument : "code" "arm_all_normal();$(13_10)server78_create_instace(shep_skill2, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))$(13_10)temp_YA = YA;$(13_10)arm_type = "attack"$(13_10)arm_type_more = "temp_YA_async";$(13_10)cancle_able = true;$(13_10)ride = true;$(13_10)server77_equal("cancle_able", cancle_able, buffer_bool);$(13_10)effect_index = effect_shep2"
arm_all_normal();
server78_create_instace(shep_skill2, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))
temp_YA = YA;
arm_type = "attack"
arm_type_more = "temp_YA_async";
cancle_able = true;
ride = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
effect_index = effect_shep2