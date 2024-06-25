arm_all_normal()
a_possible = 0;
effect_index = effect_hunter3;
arm_type_more = "temp_YA_async"
temp_YA = YA;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 1250;
obj_telescope_view.go_to = 440;
cancle_able = true;
instance_create_depth(x, y, -1000, hunt_skill33);
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
buff_time = 200;
buff_index = spr_wing1;
server77_equal(serve_val.team, global.team, buffer_bool);