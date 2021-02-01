arm_all_normal()
a_cooltime = 240;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 880;
obj_telescope_view.go_to = 880;
arm_type = "attack"
arm_movement(3, -3, 10, 10);
invisible = true;
invisible_time = 240;