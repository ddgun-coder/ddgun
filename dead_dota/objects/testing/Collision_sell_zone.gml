/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E55BEFB
/// @DnDArgument : "code" "if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {$(13_10)	var c_money = round(copper * 1.03)$(13_10)	var i_money = iron * 69$(13_10)	var g_money = gold * 10212$(13_10)	mine_say = "--[$]광물판매전표[$]--" + "\n" +$(13_10)	          "구리:" + string(copper) + "*1.03=" + string(c_money) + "\n" +$(13_10)	          "철:" + string(iron) + "*69=" + string(i_money) + "\n" +$(13_10)			  "금:" + string(gold) + "*10212=" + string(g_money) + "\n"$(13_10)	mine_say_time = 400$(13_10)	prt_val_add(0, c_money + i_money + g_money);$(13_10)	prt_val_set(Val.cuper, 0);$(13_10)	prt_val_set(Val.iron, 0);$(13_10)	prt_val_set(Val.gold, 0);$(13_10)}"
if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {
	var c_money = round(copper * 1.03)
	var i_money = iron * 69
	var g_money = gold * 10212
	mine_say = "--[$]광물판매전표[$]--" + "\n" +
	          "구리:" + string(copper) + "*1.03=" + string(c_money) + "\n" +
	          "철:" + string(iron) + "*69=" + string(i_money) + "\n" +
			  "금:" + string(gold) + "*10212=" + string(g_money) + "\n"
	mine_say_time = 400
	prt_val_add(0, c_money + i_money + g_money);
	prt_val_set(Val.cuper, 0);
	prt_val_set(Val.iron, 0);
	prt_val_set(Val.gold, 0);
}