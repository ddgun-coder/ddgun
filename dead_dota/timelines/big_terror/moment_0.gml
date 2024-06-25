/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A97E6A7
/// @DnDArgument : "code" "arm_all_normal();$(13_10)arm_type = "attack"$(13_10)a_cooltime = 240;$(13_10)terror_charge = 0;$(13_10)left_arm_yscale = -1;$(13_10)right_arm_yscale = -1; $(13_10)arm_movement(0, 0, -6, -6)$(13_10)cancle_able = true;$(13_10)server77_equal(serve_val.terror_charge, 0, buffer_u8)$(13_10)spin_able = true;$(13_10)go_to_scale = 2;$(13_10)big_val_time = 400$(13_10)obj_telescope_view.tele = true;$(13_10)obj_telescope_view.go_pixel = 550;$(13_10)view_visible[0] = false;$(13_10)view_visible[1] = true;$(13_10)view_where = 1;$(13_10)instance_create_depth(x, y, -500, twiza_skill1_show);$(13_10)buff_time = 480;$(13_10)buff_index = spr_wing1;$(13_10)server77_equal(serve_val.team, global.team, buffer_bool);$(13_10)"
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
go_to_scale = 2;
big_val_time = 400
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 550;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
instance_create_depth(x, y, -500, twiza_skill1_show);
buff_time = 480;
buff_index = spr_wing1;
server77_equal(serve_val.team, global.team, buffer_bool);