/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0386F05C
/// @DnDArgument : "code" "arm_all_normal();$(13_10)a_cooltime = 1000;$(13_10)cancle_able = true;$(13_10)effect_index = effect_medic;$(13_10)spr_arml_more = spr_paper;$(13_10)server78_create_instace(mili_skill2, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);$(13_10)arm_type = "attack";$(13_10)arm_type_more = "healing";$(13_10)left_arm_YA = 0 + 20;$(13_10)right_arm_YA = 0 - 20;"
arm_all_normal();
a_cooltime = 1000;
cancle_able = true;
effect_index = effect_medic;
spr_arml_more = spr_paper;
server78_create_instace(mili_skill2, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
arm_type = "attack";
arm_type_more = "healing";
left_arm_YA = 0 + 20;
right_arm_YA = 0 - 20;