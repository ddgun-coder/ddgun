/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FF9C72A
/// @DnDArgument : "code" "arm_all_normal()$(13_10)arm_type = "attack"$(13_10)temp_YA = YA;$(13_10)a_cooltime = 210;$(13_10)go_to_speed = 20;$(13_10)all_spin = true;$(13_10)all_spin_limit = 180;$(13_10)left_arm_YA = YA - 90;$(13_10)spr_arml_more = spr_hunter2L$(13_10)spr_armr_more = spr_hunter2R$(13_10)right_arm_YA = YA + 90;$(13_10)server202_sound(show_time);$(13_10)cancle_able = true;$(13_10)spin_able = true;$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);"
arm_all_normal()
arm_type = "attack"
temp_YA = YA;
a_cooltime = 210;
go_to_speed = 20;
all_spin = true;
all_spin_limit = 180;
left_arm_YA = YA - 90;
spr_arml_more = spr_hunter2L
spr_armr_more = spr_hunter2R
right_arm_YA = YA + 90;
server202_sound(show_time);
cancle_able = true;
spin_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);