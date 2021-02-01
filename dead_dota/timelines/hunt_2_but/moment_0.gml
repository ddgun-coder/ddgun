/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 644E254F
/// @DnDArgument : "code" "arm_all_normal()$(13_10)spr_arml_more = spr_hunter2L$(13_10)spr_armr_more = spr_hunter2R$(13_10)a_possible = false;$(13_10)arm_type = "attack"$(13_10)server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, YA - 45), y + lengthdir_y(235 * big_val, YA - 45));$(13_10)server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, YA - 135), y + lengthdir_y(235 * big_val, YA - 135));$(13_10)right_arm_YA = YA + 45$(13_10)left_arm_YA = YA - 45$(13_10)server202_sound(hunt_2_sound);"
arm_all_normal()
spr_arml_more = spr_hunter2L
spr_armr_more = spr_hunter2R
a_possible = false;
arm_type = "attack"
server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, YA - 45), y + lengthdir_y(235 * big_val, YA - 45));
server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, YA - 135), y + lengthdir_y(235 * big_val, YA - 135));
right_arm_YA = YA + 45
left_arm_YA = YA - 45
server202_sound(hunt_2_sound);