/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5314719E
/// @DnDArgument : "code" "if (global.team == team) {$(13_10)	with(testing) {$(13_10)		prt_val_add(Val.mp, 1);$(13_10)	}$(13_10)	x = testing.x;$(13_10)	y = testing.y;$(13_10)	image_angle += 6;$(13_10)}"
if (global.team == team) {
	with(testing) {
		prt_val_add(Val.mp, 1);
	}
	x = testing.x;
	y = testing.y;
	image_angle += 6;
}