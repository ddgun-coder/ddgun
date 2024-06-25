arm_all_normal()
switch(global.skin) {
	case 0:
	    spr_arml_more = spr_hunter2L
		spr_armr_more = spr_hunter2L
	break;
	case 1:
	    spr_arml_more = spr_hunter2R
		spr_armr_more = spr_hunter2R
	break;
	case 2:
		spr_arml_more = spr_hunter2R2
		spr_armr_more = spr_hunter2R2
	break;
	case 3:
		spr_arml_more = spr_west_hunt2L
		spr_armr_more = spr_west_hunt2R
	break;
	default:
		spr_arml_more = spr_hunter2L
		spr_armr_more = spr_hunter2L
	break;
	
}
a_cooltime = 16;
arm_type = "attack"
server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, testing.YA - 45), y + lengthdir_y(235 * big_val, testing.YA - 45));
server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, testing.YA - 135), y + lengthdir_y(235 * big_val, testing.YA - 135));
right_arm_YA = 0 + 45;
left_arm_YA = 0 - 45;
server202_sound(hunt_2_sound);