if place_free(x + lengthdir_x(9, other.image_angle - 90), y + lengthdir_y(9, other.image_angle - 90)) {
	x += lengthdir_x(9, other.image_angle - 90);
	y += lengthdir_y(9, other.image_angle - 90);
}
if (room == room_rockcave) {
	charge_time--;
}

if ( go_to_speed > 0) {
	arm_type = "normal";
	arm_type_more = "";
	right_arm_YA = 0
	left_arm_YA = 0
	left_foot_YA = 0
	right_foot_YA = 0
	charge = false;
	right_foot_deltay = 0;
	left_foot_deltay = 0;
	go_to_speed = 0;
	a_cooltime = 14;
	if (global.hat == spr_hat27) cancle_able = false;
	server77_equal(serve_val.cancle_able, false, buffer_bool);
}