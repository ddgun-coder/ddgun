arm_all_normal()
arm_type = "attack"
temp_YA = YA;
arm_type_more = "temp_YA_async";
a_cooltime = 17;
go_to_speed = 34;
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
temp_YA = YA;
server78_create_instace(ma_skill21, x, y);
server78_create_instace(die_skill2_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));