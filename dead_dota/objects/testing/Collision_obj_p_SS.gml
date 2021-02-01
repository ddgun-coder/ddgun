/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E55BEFB
/// @DnDArgument : "code" "if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {$(13_10)	if(mana >= 50)$(13_10)	{$(13_10)		prt_val_add(Val.mp, -50);$(13_10)		x = 1000;$(13_10)		y = 2500;$(13_10)		event_user(0);$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		testing.chat6 = testing.chat5;$(13_10)		testing.chat5 = testing.chat4;$(13_10)		testing.chat4 = testing.chat3;$(13_10)		testing.chat3 = testing.chat2;$(13_10)		testing.chat2 = testing.chat1;$(13_10)		testing.chat1 = "마나가 읎어요.(50필요)"$(13_10)	}$(13_10)}"
if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {
	if(mana >= 50)
	{
		prt_val_add(Val.mp, -50);
		x = 1000;
		y = 2500;
		event_user(0);
	}
	else
	{
		testing.chat6 = testing.chat5;
		testing.chat5 = testing.chat4;
		testing.chat4 = testing.chat3;
		testing.chat3 = testing.chat2;
		testing.chat2 = testing.chat1;
		testing.chat1 = "마나가 읎어요.(50필요)"
	}
}