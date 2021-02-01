arm_all_normal();
a_cooltime = 35;
go_to_speed = 1;
arm_type = "attack"
left_arm_yscale = -4;
left_arm_xscale = 2;
right_arm_xscale = -2;
arm_type_more = "temp_YA_async"
if (timeline_loop == false) {
	timeline_loop = true;
	re = 0;
}
else {
	if (re > 3) {
		timeline_loop = false;
	}
}