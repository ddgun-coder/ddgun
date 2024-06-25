/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40033059
/// @DnDArgument : "code" "arm_all_normal()$(13_10)a_cooltime = 40;$(13_10)view_visible[0] = false;$(13_10)view_visible[1] = true;$(13_10)view_where = 1;$(13_10)obj_telescope_view.tele = true;$(13_10)obj_telescope_view.go_pixel = 550;$(13_10)obj_telescope_view.go_to = 550;$(13_10)arm_type = "attack"$(13_10)arm_movement(3, -3, 10, 10);$(13_10)terror_charge = 0;$(13_10)cancle_able = true;$(13_10)server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);$(13_10)server77_equal(serve_val.terror_charge, 0, buffer_u8)$(13_10)server78_create_instace(gilmak_skill3, x + lengthdir_x(550 * big_val, YA - 90), y + lengthdir_y(550 * big_val, YA - 90));"
arm_all_normal()
a_cooltime = 40;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 550;
obj_telescope_view.go_to = 550;
arm_type = "attack"
arm_movement(3, -3, 10, 10);
terror_charge = 0;
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server77_equal(serve_val.terror_charge, 0, buffer_u8)
server78_create_instace(gilmak_skill3, x + lengthdir_x(550 * big_val, YA - 90), y + lengthdir_y(550 * big_val, YA - 90));