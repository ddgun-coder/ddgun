/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A536AC7
/// @DnDArgument : "code" "arm_all_normal();$(13_10)face_YA = 20$(13_10)hat_angle = 20 $(13_10)/*$(13_10)right_arm_YA = 0 + 120$(13_10)left_arm_YA = 0 + 65*/$(13_10)left_foot_YA = YA + 15$(13_10)right_foot_YA = 0 - 25$(13_10)arm_movement(10, -5, 16, -2)$(13_10)foot_movement(0, 0, 10, -10)$(13_10)temp_YA = YA;$(13_10)a_cooltime = 109;$(13_10)arm_type = "attack"$(13_10)arm_type_more = "sang_3_ready"$(13_10)server202_sound(gather_sound);$(13_10)cancle_able = true;$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);"
arm_all_normal();
face_YA = 20
hat_angle = 20 
/*
right_arm_YA = 0 + 120
left_arm_YA = 0 + 65*/
left_foot_YA = YA + 15
right_foot_YA = 0 - 25
arm_movement(10, -5, 16, -2)
foot_movement(0, 0, 10, -10)
temp_YA = YA;
a_cooltime = 109;
arm_type = "attack"
arm_type_more = "sang_3_ready"
server202_sound(gather_sound);
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);/**/