arm_all_normal()
a_cooltime = 13;
spr_arml_more = global.pickaxe_index;
arm_movement(0, -3, -5, 0);
left_arm_YA = 0 + 220;
right_arm_YA = 0 + 90;
server202_sound(mine_2_sound);
server78_create_instace(mine_skill2, x, y);
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA - 180), y + lengthdir_y(35 * big_val, YA - 180));
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA + 90), y + lengthdir_y(35 * big_val, YA + 90));
server78_create_instace(mine_skill21, x + lengthdir_x(35 * big_val, YA), y + lengthdir_y(35 * big_val, YA));
prt_val_add(0, 50);