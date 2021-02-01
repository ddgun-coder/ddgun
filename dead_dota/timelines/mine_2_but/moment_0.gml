/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 596ECA3E
/// @DnDArgument : "code" "arm_all_normal()$(13_10)a_cooltime = 13;$(13_10)spr_arml_more = global.pickaxe_index;$(13_10)arm_movement(0, -3, -5, 0);$(13_10)left_arm_YA = YA + 220;$(13_10)right_arm_YA = YA + 90;$(13_10)server202_sound(mine_2_sound);$(13_10)server78_create_instace(mine_skill2, x, y);$(13_10)server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));$(13_10)server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA - 180), y + lengthdir_y(35 * big_val, YA - 180));$(13_10)server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA + 90), y + lengthdir_y(35 * big_val, YA + 90));$(13_10)server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA), y + lengthdir_y(35 * big_val, YA));$(13_10)prt_val_add(0, 50);$(13_10)"
arm_all_normal()
a_cooltime = 13;
spr_arml_more = global.pickaxe_index;
arm_movement(0, -3, -5, 0);
left_arm_YA = YA + 220;
right_arm_YA = YA + 90;
server202_sound(mine_2_sound);
server78_create_instace(mine_skill2, x, y);
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA - 180), y + lengthdir_y(35 * big_val, YA - 180));
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA + 90), y + lengthdir_y(35 * big_val, YA + 90));
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA), y + lengthdir_y(35 * big_val, YA));
prt_val_add(0, 50);