if(normal_attack_type == spr_bigsaw) {
	right_arm_YA = YA;
	left_arm_YA = YA;
	left_arm_xscale = 1;
	right_arm_xscale = -1;
	arm_movement(3, -3, 10, 10);
	server78_create_instace(die_skill3_2, x + lengthdir_x(30 * big_val, YA - 90), y + lengthdir_y(30 * big_val, YA - 90));
	server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
	server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)
}