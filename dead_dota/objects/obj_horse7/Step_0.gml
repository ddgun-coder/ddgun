if (cid_id == global.my_cid_id) {
	x = testing.x;
	y = testing.y;
	if (charge < 90) {
	testing.extra_speed = 1;
	}
	else {
		testing.a_a_cooltime = 10;
		testing.go_to_speed = 9;
		testing.temp_YA = testing.YA;
		testing.arm_type_more = "temp_YA_async";
		testing.extra_speed = 1;
		if (alarm[1] == -1) {
			alarm[1] = 10;
		}
	}
	charge++;
}
else {
	x = cid_id.x;
	y = cid_id.y;
}
if (global.my_cid == cid) {
	testing.go_soild = true;
}
image_angle = cid_id.YA;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if (cid_id.sturn > 0) {
	instance_destroy();	
}