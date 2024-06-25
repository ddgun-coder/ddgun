/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D030B08
/// @DnDArgument : "code" "arm_movement(0, 0, 8, 0);$(13_10)temp_YA = YA;$(13_10)left_arm_YA = 0;$(13_10)spr_arml_more = spr_musa_2_skill;$(13_10)effect_index = effect_musa2;$(13_10)go_to_speed = 15;$(13_10)buff_index = buff_musa;$(13_10)buff_time = 100;$(13_10)server77_equal(serve_val.buff_index, buff_index, buffer_u16);$(13_10)server78_create_instace(musa_skill21, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));"
arm_movement(0, 0, 8, 0);
temp_YA = YA;
left_arm_YA = 0;
spr_arml_more = spr_musa_2_skill;
effect_index = effect_musa2;
go_to_speed = 15;
buff_index = buff_musa;
buff_time = 100;
server77_equal(serve_val.buff_index, buff_index, buffer_u16);
server78_create_instace(musa_skill21, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));