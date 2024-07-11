arm_all_normal()
server202_sound(snd_ass_hide);
server78_create_instace(obj_ass_effct1, x, y);
a_possible = false;
invisible = true;
invisible_time = 200;
arm_type = "attack"
arm_type_more = "ass"

switch(global.skin) {
	case 0:
        spr_armr_more = spr_ass_w1
		spr_arml_more = spr_ass_w
    break;
	case 1:
	   spr_armr_more = spr_blackass_w1
	   spr_arml_more = spr_blackass_w
	break;
}