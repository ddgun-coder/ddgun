arm_all_normal();
for (var i = 0; i < 10; i++) {
	server78_create_instace(yellow_skill1, x + lengthdir_x(35 * big_val, YA - 90) + lengthdir_x((-140 + i * 35) * big_val, YA), y + lengthdir_y(35 * big_val, YA - 90) + lengthdir_y((-140 + i * 35) * big_val, YA));
}
arm_spin_speed = 10;
left_goto_YA = YA + 270;
right_goto_YA = YA + 90;
arm_spin_able = 1;
a_cooltime = 46;
arm_type = "attack"