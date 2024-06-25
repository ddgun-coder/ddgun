if (other.dis = 0) {
	if (other.effect = false) {
	var mine = irandom(100);
	if (mine <= 30) {
		mine_say = "Trick Or Treat!"
		mine_say_time = 100;
		server78_create_instace(mine_skill3, x, y);
		sturn = 240;
		creper = false;
		creper_die = 240;
		footL_x = x + irandom_range(-50, 50);
		footR_x = x + irandom_range(-50, 50);
		footL_y = y + irandom_range(-50, 50);
		footR_y = y + irandom_range(-50, 50);
		armL_x = x + irandom_range(-50, 50);
		armR_x = x + irandom_range(-50, 50);
		armL_y = y + irandom_range(-50, 50);
		armR_y = y + irandom_range(-50, 50);
		right_arm_YA = irandom(360);
		left_arm_YA = irandom(360);
		right_foot_YA = irandom(360);
		left_foot_YA = irandom(360);
		hat_xscale = 0;
		hat_yscale = 0;
		server77_equal(serve_val.hat_yscale, hat_yscale, buffer_s8);
		server77_equal(serve_val.hat_xscale, hat_xscale, buffer_s8);
		level = 0;
		main_big_val = 1
		aexp += 100;
		server77_equal(serve_val.hat_frame, level, buffer_u8);
	}
	else {
		main_big_val += 0.2
		aexp += 100;
	}
	instance_destroy(other.id);
}
}













