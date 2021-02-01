/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 489C1835
/// @DnDArgument : "code" "if (sturn <= 0 and live != 0) {$(13_10)	hp -= 11$(13_10)	sturn = 6$(13_10)	audio_play_sound(have_hit ,0 ,false);$(13_10)}"
if (sturn <= 0 and live != 0) {
	hp -= 11
	sturn = 6
	audio_play_sound(have_hit ,0 ,false);
}