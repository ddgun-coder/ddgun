arm_all_normal();
arm_type = "attack"
arm_type_more = "seobu_4"
arm_type_num = 0
switch(global.skin) {
	case 1:
		spr_arml_more = spr_mafia_wild_gunR
	break;
    default:
		spr_arml_more = spr_hunter2R
    break;
}
a_cooltime = 30;
view_visible[0] = false;
view_visible[1] = true;
prt_val_add(Val.mp, 45);
server202_sound(wild_4_sound);
server202_sound(wild_4_sound);
