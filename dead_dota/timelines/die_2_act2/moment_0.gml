arm_all_normal()
arm_type = "attack"
switch(global.skin) {
	case 0:
	   spr_arml_more = spr_saw;
	break;
	case 1:
       spr_arml_more = spr_saw;
	break;
	case 2:
		spr_arml_more = spr_saw2;
	break;
	case 3:
		spr_arml_more = spr_music_saw;
	break;
	case 4:
	   spr_arml_more = spr_saw;
	break;
}
arm_movement(-3, 0, 10, 0);
a_cooltime = 26 + round(big_val * 3);
server78_create_instace(die_skill2_2, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));