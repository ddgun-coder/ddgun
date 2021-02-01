/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28495AAD
/// @DnDArgument : "code" "arm_all_normal()$(13_10)a_cooltime = 400;$(13_10)arm_movement(3, -3, 10, 10);$(13_10)arm_type = "attack"$(13_10)cancle_able = true;$(13_10)server202_sound(hide_2_sound);$(13_10)right_arm_YA = YA + 45;$(13_10)left_arm_YA = YA - 45;$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);$(13_10)server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA + 90), y + lengthdir_y(100 * big_val, YA + 90));$(13_10)server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA - 45), y + lengthdir_y(100 * big_val, YA - 45));$(13_10)server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA - 135), y + lengthdir_y(100 * big_val, YA - 135));"
arm_all_normal()
a_cooltime = 400;
arm_movement(3, -3, 10, 10);
arm_type = "attack"
cancle_able = true;
server202_sound(hide_2_sound);
right_arm_YA = YA + 45;
left_arm_YA = YA - 45;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA + 90), y + lengthdir_y(100 * big_val, YA + 90));
server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA - 45), y + lengthdir_y(100 * big_val, YA - 45));
server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA - 135), y + lengthdir_y(100 * big_val, YA - 135));