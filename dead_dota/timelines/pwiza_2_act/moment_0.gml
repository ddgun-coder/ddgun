arm_all_normal();
arm_type = "attack"
arm_movement(3, -3, 10, 10);
a_cooltime = 134;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 200;
obj_telescope_view.go_to = 200;
server78_create_instace(pwiza_skill2, x, y);
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);