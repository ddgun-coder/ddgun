/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 694041A4
/// @DnDArgument : "code" "arm_all_normal();$(13_10)a_cooltime = 26 + round(big_val * 3);$(13_10)arm_all_normal();$(13_10)arm_type = "attack"$(13_10)arm_movement(3, -3, 10, 10);$(13_10)server78_create_instace(n_attack_area, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));"
arm_all_normal();
a_cooltime = 26 + round(big_val * 3);
arm_all_normal();
arm_type = "attack"
arm_movement(3, -3, 10, 10);
server78_create_instace(n_attack_area, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));