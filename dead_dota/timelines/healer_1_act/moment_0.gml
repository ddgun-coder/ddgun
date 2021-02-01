/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65741E26
/// @DnDArgument : "code" "arm_all_normal();$(13_10)a_cooltime = 40;$(13_10)arm_type = "attack"$(13_10)cancle_able = true$(13_10)right_arm_YA = YA + 10$(13_10)left_arm_YA = YA - 10$(13_10)left_foot_YA = YA - 10$(13_10)right_foot_YA = YA + 10$(13_10)server77_equal("cancle_able", cancle_able, buffer_bool);$(13_10)server78_create_instace(healer_skill1, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));"
arm_all_normal();
a_cooltime = 40;
arm_type = "attack"
cancle_able = true
right_arm_YA = YA + 10
left_arm_YA = YA - 10
left_foot_YA = YA - 10
right_foot_YA = YA + 10
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server78_create_instace(healer_skill1, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));