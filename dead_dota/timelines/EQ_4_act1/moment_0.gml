/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 619DB0E7
/// @DnDArgument : "code" "arm_all_normal();$(13_10)a_cooltime = 45;$(13_10)go_to_speed = 1;$(13_10)arm_type = "attack"$(13_10)left_arm_yscale = -6;$(13_10)left_arm_xscale = 2;$(13_10)right_arm_xscale = -6;$(13_10)arm_type_more = "temp_YA_async"$(13_10)if (timeline_loop == false) {$(13_10)	timeline_loop = true;$(13_10)	re = 0;$(13_10)}$(13_10)else {$(13_10)	if (re > 1) {$(13_10)		timeline_loop = false;$(13_10)	}$(13_10)}"
arm_all_normal();
a_cooltime = 45;
go_to_speed = 1;
arm_type = "attack"
left_arm_yscale = -6;
left_arm_xscale = 2;
right_arm_xscale = -6;
arm_type_more = "temp_YA_async"
if (timeline_loop == false) {
	timeline_loop = true;
	re = 0;
}
else {
	if (re > 1) {
		timeline_loop = false;
	}
}