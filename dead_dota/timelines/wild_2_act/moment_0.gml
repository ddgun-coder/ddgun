/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 226305A2
/// @DnDArgument : "code" "arm_all_normal();$(13_10)switch(global.skin) {$(13_10)	case 1:$(13_10)		spr_arml_more = spr_mafia_wild_gunR$(13_10)		spr_armr_more = spr_mafia_wild_gunR$(13_10)	break;$(13_10)	default:$(13_10)		spr_arml_more = spr_hunter2R$(13_10)		spr_armr_more = spr_hunter2R$(13_10)	break;$(13_10)}$(13_10)foot_movement(0, 0, -4, -4)$(13_10)a_cooltime = 15;$(13_10)/*$(13_10)view_visible[0] = false;$(13_10)view_visible[1] = true;$(13_10)*/$(13_10)server78_create_instace(wild_skill2, x + lengthdir_x(300 * big_val, YA - 90) - lengthdir_x(45 * big_val, YA), y + lengthdir_y(300 * big_val, YA - 90) - lengthdir_y(45 * big_val, YA));$(13_10)server78_create_instace(wild_skill2, x + lengthdir_x(300 * big_val, YA - 90) + lengthdir_x(45 * big_val, YA), y + lengthdir_y(300 * big_val, YA - 90) + lengthdir_y(45 * big_val, YA));$(13_10)arm_type = "attack";$(13_10)right_arm_YA = 0 + 0$(13_10)left_arm_YA = 0 - 360"
arm_all_normal();
switch(global.skin) {
	case 1:
		spr_arml_more = spr_mafia_wild_gunR
		spr_armr_more = spr_mafia_wild_gunR
	break;
	default:
		spr_arml_more = spr_hunter2R
		spr_armr_more = spr_hunter2R
	break;
}
foot_movement(0, 0, -4, -4)
a_cooltime = 15;
/*
view_visible[0] = false;
view_visible[1] = true;
*/
server78_create_instace(wild_skill2, x + lengthdir_x(300 * big_val, YA - 90) - lengthdir_x(45 * big_val, YA), y + lengthdir_y(300 * big_val, YA - 90) - lengthdir_y(45 * big_val, YA));
server78_create_instace(wild_skill2, x + lengthdir_x(300 * big_val, YA - 90) + lengthdir_x(45 * big_val, YA), y + lengthdir_y(300 * big_val, YA - 90) + lengthdir_y(45 * big_val, YA));
arm_type = "attack";
right_arm_YA = 0 + 0
left_arm_YA = 0 - 360/**/