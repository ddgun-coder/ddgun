/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 10C38E54
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "a_possible"
a_possible = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11AAF986
/// @DnDArgument : "code" "a_possible = false;$(13_10)$(13_10)arm_all_normal();$(13_10)server78_create_instace(yellow_skill2, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))$(13_10)left_arm_xscale = 1.5;$(13_10)left_arm_yscale = 2;$(13_10)right_arm_xscale = -1.5;$(13_10)right_arm_yscale = 2;$(13_10)extra_speed = 3;$(13_10)big_val = 2;$(13_10)go_to_scale = 2;$(13_10)arm_type_more = "yellow_2"$(13_10)temp_YA = YA;$(13_10)arm_type = "attack"$(13_10)cancle_able = true;$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);"
a_possible = false;

arm_all_normal();
server78_create_instace(yellow_skill2, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))
left_arm_xscale = 1.5;
left_arm_yscale = 2;
right_arm_xscale = -1.5;
right_arm_yscale = 2;
extra_speed = 3;
big_val = 2;
go_to_scale = 2;
arm_type_more = "yellow_2"
temp_YA = YA;
arm_type = "attack"
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);