var exist = false;
if (instance_exists(charge_skill1)) {
	with(charge_skill1) {
		if (global.my_cid_id == id.cid_id) {
			exist = true;
			exit;	
		}
	}
}
if (!exist) {
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
	if (global.hat == spr_hat27) cancle_able = false;
	server77_equal(serve_val.cancle_able, false, buffer_bool);
}