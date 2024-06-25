arm_all_normal()
arm_movement(0, 0, -6, -6)
terror_charge = 0;
left_arm_yscale = -1;
right_arm_yscale = -1;
right_arm_YA = 0 - 100;
a_possible = false;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 880;
obj_telescope_view.go_to = 240;
instance_create_depth(x, y, -500, twiza_skill1_show2);