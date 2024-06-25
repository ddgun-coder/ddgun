/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CB730F0
/// @DnDArgument : "code" "arm_all_normal()$(13_10)a_cooltime = 180;$(13_10)cancle_able = true;$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);$(13_10)arm_all_normal();$(13_10)arm_type = "attack"$(13_10)left_arm_YA = 0$(13_10)right_arm_YA = 0 $(13_10)left_foot_YA = YA - 5$(13_10)right_foot_YA = 0 + 5$(13_10)arm_movement(7, -6, 10, 10);$(13_10)foot_movement(-5, 5, -3, -3);$(13_10)server78_create_instace(n_attack_area, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));"
arm_all_normal()
a_cooltime = 180;
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
arm_all_normal();
arm_type = "attack"
left_arm_YA = 0
right_arm_YA = 0 
left_foot_YA = YA - 5
right_foot_YA = 0 + 5
arm_movement(7, -6, 10, 10);
foot_movement(-5, 5, -3, -3);
server78_create_instace(n_attack_area, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));