arm_all_normal();
a_cooltime = 35;
go_to_speed = 1;
arm_type = "attack"
left_arm_yscale = -4;
left_arm_xscale = 2;
right_arm_xscale = -2;
arm_type_more = "temp_YA_async"
buff_index = buff_giligili;
buff_time = 34;
all_YA_change(irandom(360));
move_and_collide(lengthdir_x(169, YA), lengthdir_y(169, YA), all);
if (timeline_loop == false) {
	timeline_loop = true;
	re = 0;
}
else {
	if (re > 5) {
		timeline_loop = false;
	}
}