/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 551CC947
/// @DnDArgument : "code" "if (sturn <= 0 and live != 0) {$(13_10)	hp -= 200;$(13_10)	sturn = 100;$(13_10)	live = 2;$(13_10)	alarm[5] = 500;$(13_10)}"
if (sturn <= 0 and live != 0) {
	hp -= 200;
	sturn = 100;
	live = 2;
	alarm[5] = 500;
}