arm_all_normal()
arm_type = "attack"
arm_type_more = "seobu_3"
arm_type_num = 0
cancle_able = true;
a_possible = false;
arm_type_num = 0
spr_arml_more = spr_hunter2R;
spr_armr_more = spr_hunter2R
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server78_create_instace(wild_skill3, x, y);
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 300;
obj_telescope_view.go_to = 300;
light_set(false);
switch(global.skin) {
	case 1:
		spr_arml_more = spr_mafia_wild_gunR
		spr_armr_more = spr_mafia_wild_gunR
	break;
    default:
		spr_arml_more = spr_hunter2R;
        spr_armr_more = spr_hunter2R
    break;
}