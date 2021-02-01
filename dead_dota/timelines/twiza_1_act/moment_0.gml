arm_all_normal();
arm_type = "attack"
a_cooltime = 240;
terror_charge = 0;
left_arm_yscale = -1;
right_arm_yscale = -1;
arm_movement(0, 0, -6, -6)
cancle_able = true;
server77_equal(serve_val.terror_charge, 0, buffer_u8)
spin_able = true;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 550;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
instance_create_depth(x, y, -500, twiza_skill1_show);