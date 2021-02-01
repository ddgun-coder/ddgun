/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7648745C
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "a_possible"
a_possible = true;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A84A5BC
/// @DnDArgument : "code" "left_arm_xscale = 1;$(13_10)left_arm_yscale = 1;$(13_10)right_arm_xscale = -1;$(13_10)right_arm_yscale = 1;$(13_10)extra_speed = 0;$(13_10)arm_type = "normal";$(13_10)arm_type_more = "none";$(13_10)cancle_able = false;$(13_10)arm_all_normal();$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);"
left_arm_xscale = 1;
left_arm_yscale = 1;
right_arm_xscale = -1;
right_arm_yscale = 1;
extra_speed = 0;
arm_type = "normal";
arm_type_more = "none";
cancle_able = false;
arm_all_normal();
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);