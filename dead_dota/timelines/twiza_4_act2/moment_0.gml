/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40033059
/// @DnDArgument : "code" "arm_all_normal()$(13_10)a_cooltime = 240;$(13_10)view_visible[0] = false;$(13_10)view_visible[1] = true;$(13_10)view_where = 1;$(13_10)obj_telescope_view.tele = true;$(13_10)obj_telescope_view.go_pixel = 880;$(13_10)arm_type = "attack"$(13_10)arm_movement(3, -3, 10, 10);$(13_10)server202_sound(twiza_1_drow);$(13_10)terror_charge = 0;$(13_10)server77_equal(serve_val.terror_charge, 0, buffer_u8)"
arm_all_normal()
a_cooltime = 240;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 880;
arm_type = "attack"
arm_movement(3, -3, 10, 10);
server202_sound(twiza_1_drow);
terror_charge = 0;
server77_equal(serve_val.terror_charge, 0, buffer_u8)