/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7648745C
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "a_possible"
a_possible = true;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A84A5BC
/// @DnDArgument : "code" "arm_type = "normal";$(13_10)arm_type_more = "none";$(13_10)cancle_able = false;$(13_10)effect_index = spr_none;$(13_10)arm_all_normal();$(13_10)ride = false;$(13_10)server77_equal("cancle_able", cancle_able, buffer_bool);"
arm_type = "normal";
arm_type_more = "none";
cancle_able = false;
effect_index = spr_none;
arm_all_normal();
ride = false;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);