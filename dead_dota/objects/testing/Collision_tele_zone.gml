/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E55BEFB
/// @DnDArgument : "code" "if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {$(13_10)	if(global.money >= 1000)$(13_10)	{$(13_10)		prt_val_add(0, -1000);$(13_10)		x = 1500;$(13_10)		y = 1000;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		mine_say = "돈이 없는데?"$(13_10)		mine_say_time = 100;$(13_10)	}$(13_10)}"
if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {
	if(global.money >= 1000)
	{
		prt_val_add(0, -1000);
		x = 1500;
		y = 1000;
	}
	else
	{
		mine_say = "돈이 없는데?"
		mine_say_time = 100;
	}
}