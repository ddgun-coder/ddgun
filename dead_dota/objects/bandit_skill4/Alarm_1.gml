/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69902817
/// @DnDArgument : "code" "if (global.team == team) {$(13_10)	testing.x = x;$(13_10)	testing.y = y;$(13_10)	if (testing.hp > 0) {$(13_10)		testing.hp = 100;$(13_10)	}$(13_10)}"
if (global.team == team) {
	testing.x = x;
	testing.y = y;
	if (testing.hp > 0) {
		testing.hp = 100;
	}
}