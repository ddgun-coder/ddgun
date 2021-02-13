function norm_attack() {
	a_cooltime = 37 + round(big_val * 3);
	arm_all_normal();
	jumping = false;
	arm_type = "attack"
	arm_movement(3, -3, 10, 10);
	server78_create_instace(n_attack_area, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
}
