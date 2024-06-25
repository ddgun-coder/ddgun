arm_all_normal()
a_cooltime = 30;
arm_type = "attack";
right_arm_YA = 0 + 135
arm_movement(11, -5, 10, 10);
foot_movement(0, 0, -4, -4)
switch(global.skin) {
	case 1:
		spr_arml_more = spr_mafia_wild_gunR
    break;
    default:
		spr_arml_more = spr_hunter2R
    break;
}
server78_create_instace(wild_skill1, x + lengthdir_x(450 * big_val, YA - 90), y +  lengthdir_y(450 * big_val, YA - 90));
server78_create_instace(wild_skill11, x + lengthdir_x(10 * big_val, YA - 90), y + lengthdir_y(10 * big_val, YA - 90));
/*
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 100;
obj_telescope_view.go_to = 100;