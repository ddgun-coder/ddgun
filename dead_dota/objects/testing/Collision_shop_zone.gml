/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E55BEFB
/// @DnDArgument : "code" "if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {$(13_10)	if (global.money >= 2500) {$(13_10)		prt_val_add(0, -2500);$(13_10)		mine_say = "주문서를 샀다."$(13_10)		mine_sat_time = 100;$(13_10)		pickaxe_up += 1;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		mine_say = "돈이 없는데??"$(13_10)		mine_sat_time = 100;$(13_10)	}$(13_10)}"
if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {
	if (global.money >= 2500) {
		prt_val_add(0, -2500);
		mine_say = "주문서를 샀다."
		mine_sat_time = 100;
		pickaxe_up += 1;
	}
	else
	{
		mine_say = "돈이 없는데??"
		mine_sat_time = 100;
	}
}