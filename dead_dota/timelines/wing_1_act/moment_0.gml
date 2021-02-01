/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A9757FB
/// @DnDArgument : "code" "a_cooltime = 40;$(13_10)arm_type = "attack"$(13_10)buff_time = 5 * room_speed;$(13_10)buff_index = spr_wing1;$(13_10)server77_equal(serve_val.buff_index, buff_index, buffer_u16);$(13_10)left_arm_YA = YA - 180;$(13_10)go_to_speed = 1;$(13_10)aexp += 30;$(13_10)server202_sound(wing_1_sound);"
a_cooltime = 40;
arm_type = "attack"
buff_time = 5 * room_speed;
buff_index = spr_wing1;
server77_equal(serve_val.buff_index, buff_index, buffer_u16);
left_arm_YA = YA - 180;
go_to_speed = 1;
aexp += 30;
server202_sound(wing_1_sound);