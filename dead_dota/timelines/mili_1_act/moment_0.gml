/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 10C38E54
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "a_possible"
a_possible = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11AAF986
/// @DnDArgument : "code" "arm_all_normal();$(13_10)server78_create_instace(mili_skill1, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))$(13_10)arm_type_more = "mili_1";$(13_10)temp_YA = YA;$(13_10)arm_type = "attack"$(13_10)spr_arml_more = spr_k1$(13_10)cancle_able = true;$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);"
arm_all_normal();
server78_create_instace(mili_skill1, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))
arm_type_more = "mili_1";
temp_YA = YA;
arm_type = "attack"
spr_arml_more = spr_k1
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);