if(cid_id == global.my_cid_id) {
	with(testing) {
		arm_type = "normal";
		arm_type_more = "";
		right_arm_YA = YA
		left_arm_YA = YA
		left_foot_YA = YA
		right_foot_YA = YA
		charge = false;
		right_foot_deltay = 0;
		left_foot_deltay = 0;
		go_to_speed = 0;
		a_cooltime = 0;
		if (global.hat == spr_hat27) cancle_able = false;
		server77_equal(serve_val.cancle_able, false, buffer_bool);
	}
}