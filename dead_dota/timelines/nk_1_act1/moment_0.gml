arm_all_normal();
a_cooltime = 240
arm_type_more = "appel_1";
arm_type = "attack"
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
instance_create_depth(x, y, depth, see_skill_showa)
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 400;
obj_telescope_view.go_to = 400;
spin_able = true
cancle_able = true
spr_arml_more = spr_nk1;
terror_charge = 20220509
server77_equal(serve_val.cancle_able, true, buffer_bool);