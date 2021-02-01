arm_all_normal();
arm_type = "attack"
a_possible = false;
server78_create_instace(pota_skill2, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));
YA_change_small_time = 26;
YA_change_small = true;
if (timeline_loop == false) {
	timeline_loop = true;
	re = 0;
}
else {
	if (re > 20) {
		timeline_loop = false;
	}
}