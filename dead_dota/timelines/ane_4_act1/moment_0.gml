/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00EA6A08
/// @DnDArgument : "code" "arm_all_normal();$(13_10)arm_type = "attack"$(13_10)a_possible = false;$(13_10)if (timeline_loop == false) {$(13_10)	timeline_loop = true;$(13_10)	left_arm_YA = YA - 90;$(13_10)	right_arm_YA = YA + 90;$(13_10)	server78_create_instace(ddr_skill2, x, y)$(13_10)	arm_type = "attack"$(13_10)	arm_type_more = "arm_lock4"$(13_10)	cancle_able = true;$(13_10)	server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);$(13_10)	re = 0;$(13_10)}$(13_10)else {$(13_10)	if (re > 7) {$(13_10)		timeline_loop = false;$(13_10)	}$(13_10)}"
arm_all_normal();
arm_type = "attack"
a_possible = false;
if (timeline_loop == false) {
	timeline_loop = true;
	left_arm_YA = YA - 90;
	right_arm_YA = YA + 90;
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