/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3D3C756C
/// @DnDArgument : "code" "arm_all_normal();$(13_10)all_spin = 1;$(13_10)temp_YA = YA;$(13_10)right_arm_YA = 0;$(13_10)left_arm_YA = 0 - 110;$(13_10)right_foot_YA = 0 + 20;$(13_10)left_foot_YA = YA - 45;$(13_10)all_spin_limit = 360;$(13_10)arm_movement(3, 0, 0, 0);$(13_10)foot_movement(0, 0, -8, -2);$(13_10)server78_create_instace(bandit_skill1, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));$(13_10)a_cooltime = 21;$(13_10)arm_type = "attack""
arm_all_normal();
all_spin = 1;
temp_YA = YA;
right_arm_YA = 0;
left_arm_YA = 0 - 110;
right_foot_YA = 0 + 20;
left_foot_YA = YA - 45;
all_spin_limit = 360;
arm_movement(3, 0, 0, 0);
foot_movement(0, 0, -8, -2);
server78_create_instace(bandit_skill1, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));
a_cooltime = 21;
arm_type = "attack"