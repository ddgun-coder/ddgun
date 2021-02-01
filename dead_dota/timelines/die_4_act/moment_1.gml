/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D93B9F5
/// @DnDArgument : "code" "right_arm_YA = YA;$(13_10)left_arm_YA = YA;$(13_10)left_arm_xscale = 1;$(13_10)right_arm_xscale = -1;$(13_10)arm_movement(3, -3, 10, 10);$(13_10)server78_create_instace(die_skill3_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));$(13_10)server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)$(13_10)server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)"
right_arm_YA = YA;
left_arm_YA = YA;
left_arm_xscale = 1;
right_arm_xscale = -1;
arm_movement(3, -3, 10, 10);
server78_create_instace(die_skill3_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)