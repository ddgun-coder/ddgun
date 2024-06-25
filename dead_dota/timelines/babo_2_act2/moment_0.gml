a_cooltime = 30;
is_babo_angle = false;
arm_type_more = "noone";
if (timeline_loop == false) {
	timeline_loop = true;
	re = 1;
}
else {
	if (re > 5) {
		is_babo_angle_show = false;
		timeline_loop = false;
	}
}