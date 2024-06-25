arm_all_normal()
buff_index = spr_wing1;
buff_time = 300;
all_YA_change(300);
right_foot_deltay += 10;
light_set(false);
switch(global.skin) {
	case 1:
    effect_index = spr_fighternew4;
	break;
    default :
    effect_index = effect_fighter4
	break;
}
server78_create_instace(fighter_skill4, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90))