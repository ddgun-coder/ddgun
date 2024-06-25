arm_all_normal()
arm_type = "attack"
switch(global.skin) {
	case 0:
	   spr_arml_more = spr_hamer;
	break;
	case 1:
       spr_arml_more = spr_hamer2;
    break;
	case 2:
		spr_arml_more = spr_hamer2;
	break;
	case 3:
		spr_arml_more = spr_music_hamer1;
	break;
	case 4:
	   spr_arml_more = spr_hamer;
	break;
}
left_arm_YA = 0 - 180;
a_cooltime = 26 + round(big_val * 3);