arm_all_normal();
arm_type_more = "yellow_3"
left_goto_YA = 0 + 225;
right_goto_YA = 0 + 290;
arm_spin_able = 1;
arm_spin_speed = 4;
a_cooltime = 250;
arm_type = "attack"
server202_sound(gather_sound);
light_set(true);
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
view_visible[0] = false;
view_visible[1] = true;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 300;
view_where = 1;