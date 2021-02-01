arm_all_normal()
arm_type = "attack"
temp_YA = YA;
arm_type_more = "temp_YA_async";
go_to_speed = 14;
YA_change_small = true;
switch(global.skin) {
	case 2:
		spr_arml_more = spr_saw2;
	break;
	default:
		spr_arml_more = spr_saw;
	break;	
}
YA_change_small_time = 26;
arm_movement(0, -3, 0, 10);
a_cooltime = 26 + round(big_val * 3);
server78_create_instace(die_skill2_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));