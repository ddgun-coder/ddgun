arm_all_normal();
arm_type = "attack"
a_possible = false;
if (timeline_loop == false) {
	timeline_loop = true;
	left_arm_YA = 0 - 90;
	right_arm_YA = 0 + 90;
	server78_create_instace(ddr_skill2, x, y)
	arm_type = "attack"
	arm_type_more = "arm_lock4"
	cancle_able = true;
	server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
	re = 0;
}
else {
	if (re > 7) {
		timeline_loop = false;
	}
}