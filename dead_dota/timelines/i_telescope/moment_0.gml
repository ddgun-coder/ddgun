arm_all_normal();
a_possible = 0;
arm_type = "attack"
arm_type_more = "temp_YA_async"
arm_movement(3, -3, 5, 5);
extra_speed = -2;
effect_index = effect_telescope;
temp_YA = YA;
view_visible[0] = false;
view_visible[1] = true;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 1150;
obj_telescope_view.go_to = 1150;
cancle_able = true;
view_where = 1;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);