/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7DCD88F0
/// @DnDArgument : "code" "with(testing) {$(13_10)	if(irandom(1) == 1) {$(13_10)		normal_play(i_blue_heal)$(13_10)	}$(13_10)	else {$(13_10)		normal_play(i_red_heal)$(13_10)	}$(13_10)}"
with(testing) {
	if(irandom(1) == 1) {
		normal_play(i_blue_heal)
	}
	else {
		normal_play(i_red_heal)
	}
}