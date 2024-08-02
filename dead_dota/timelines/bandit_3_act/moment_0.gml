arm_all_normal();
invisible = true;
invisible_time = 180;
all_spin = 1;
temp_YA = YA;
spin_scale = 1.5
right_arm_YA = 0;
left_arm_YA = 0 - 110;
right_foot_YA = 0 + 20;
left_foot_YA = 0 - 45;
arm_movement(3, 0, 0, 0);
foot_movement(0, 0, -8, -2);
all_spin_limit = 360;
server78_create_instace(bandit_skill31, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));
a_cooltime = 10;
arm_type = "attack"