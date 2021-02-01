arm_all_normal()
a_cooltime = 240;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 550;
arm_type = "attack"
arm_movement(3, -3, 10, 10);
server202_sound(twiza_1_drow);
terror_charge = 0;
server77_equal(serve_val.terror_charge, 0, buffer_u8)