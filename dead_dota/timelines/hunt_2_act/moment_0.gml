arm_all_normal()
switch(global.skin) {
	case 2:
		spr_arml_more = spr_hunter2L2
		spr_armr_more = spr_hunter2R2
	break;
	default:
		spr_arml_more = spr_hunter2L
		spr_armr_more = spr_hunter2R
	break;
}
a_cooltime = 10;
arm_type = "attack"
server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, YA - 45), y + lengthdir_y(235 * big_val, YA - 45));
server78_create_instace(hunt_skill2, x + lengthdir_x(235 * big_val, YA - 135), y + lengthdir_y(235 * big_val, YA - 135));
right_arm_YA = YA + 45
left_arm_YA = YA - 45
server202_sound(hunt_2_sound);