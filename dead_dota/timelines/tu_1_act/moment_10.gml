arm_all_normal();
arm_type = "attack"
arm_type_more = "none";
arm_movement(2, -4, 10, -10);
foot_movement(-6, 5, -6, 5);
left_arm_YA = 0 + 25;
right_arm_YA = 0 + 25;
left_foot_YA = 0 + 110;
right_foot_YA = 0 - 10
spin_scale= 1
spin_able = false;
cancle_able = false;
if (up_skill >= 3) {
	server78_create_instace(tu_skill11, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
	up_skill = 0
}
else {
	server78_create_instace(tu_skill1, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
}
	