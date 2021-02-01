/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 551CC947
/// @DnDArgument : "code" "if (sturn <= 0 and live != 0) {$(13_10)	hp -= 10;$(13_10)	sturn = 24;$(13_10)	audio_play_sound(have_hit ,0 ,false);$(13_10)}"
if (sturn <= 0 and live != 0) {
	hp -= 10;
	sturn = 24;
	audio_play_sound(have_hit ,0 ,false);
}