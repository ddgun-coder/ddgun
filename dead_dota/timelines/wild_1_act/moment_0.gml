arm_all_normal();
a_cooltime = 30;
server78_create_instace(wild_skill1, x + lengthdir_x(450 * big_val, YA - 90), y + lengthdir_y(450 * big_val, YA - 90));
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 250;
obj_telescope_view.go_to = 250;
arm_type = "attack";
spr_armr_more = spr_hunter2R