/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20A098B5
/// @DnDArgument : "code" "if(cid_id == global.my_cid_id) {$(13_10)	with(testing) {$(13_10)		arm_type = "normal";$(13_10)		arm_type_more = "";$(13_10)		right_arm_YA = YA$(13_10)		left_arm_YA = YA$(13_10)		left_foot_YA = YA$(13_10)		right_foot_YA = YA$(13_10)		charge = false;$(13_10)		right_foot_deltay = 0;$(13_10)		left_foot_deltay = 0;$(13_10)		go_to_speed = 0;$(13_10)		a_cooltime = 0;$(13_10)		if (global.hat == spr_hat27) cancle_able = false;$(13_10)		server77_equal(serve_val.cancle_able, false, buffer_bool);$(13_10)	}$(13_10)}"
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