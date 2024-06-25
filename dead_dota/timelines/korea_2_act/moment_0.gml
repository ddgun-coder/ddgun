/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28495AAD
/// @DnDArgument : "code" "arm_all_normal()$(13_10)a_cooltime = 290;$(13_10)hat_move = true;$(13_10)arm_type_more = "apple_1";$(13_10)arm_type = "attack"$(13_10)server202_sound(sward_3_sound)$(13_10)switch(global.skin) {$(13_10)	case 2:$(13_10)		effect_index = effect_ekorea$(13_10)    break;$(13_10)    default:$(13_10)		effect_index = effect_korea2$(13_10)    break;$(13_10)}$(13_10)temp_YA = YA;$(13_10)view_visible[0] = false;$(13_10)view_visible[1] = true;$(13_10)obj_telescope_view.tele = true;$(13_10)obj_telescope_view.go_pixel = 300;$(13_10)view_where = 1;"
arm_all_normal()
a_cooltime = 290;
hat_move = true;
arm_type_more = "apple_1";
arm_type = "attack"
server202_sound(sward_3_sound)
switch(global.skin) {
	case 2:
		effect_index = effect_ekorea
    break;
    default:
		effect_index = effect_korea2
    break;
}
temp_YA = YA;
view_visible[0] = false;
view_visible[1] = true;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 300;
view_where = 1;