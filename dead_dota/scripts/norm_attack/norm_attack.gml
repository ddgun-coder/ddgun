function norm_attack() {
	a_cooltime = 36 + round(big_val * 3);
	arm_all_normal();
	jumping = false;
	arm_type = "attack"
	left_arm_YA = 0
	right_arm_YA = 0 
	left_foot_YA = 0 - 5
	right_foot_YA = 0 + 5
	arm_movement(7, -6, 10, 10);
	foot_movement(-5, 5, -3, -3);
	server78_create_instace(n_attack_area, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
}