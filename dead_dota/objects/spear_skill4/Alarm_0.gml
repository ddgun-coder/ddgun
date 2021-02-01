/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 117672D1
/// @DnDArgument : "code" "if(global.team == team) {$(13_10)	with(testing) {$(13_10)		normal_play(spear_3_act);$(13_10)	}$(13_10)}$(13_10)audio_play_sound(spear_4_sound, 9,false);$(13_10)audio_play_sound(spear_4_sound, 9,false);$(13_10)audio_play_sound(spear_4_sound, 9,false);$(13_10)instance_destroy();$(13_10)"
if(global.team == team) {
	with(testing) {
		normal_play(spear_3_act);
	}
}
audio_play_sound(spear_4_sound, 9,false);
audio_play_sound(spear_4_sound, 9,false);
audio_play_sound(spear_4_sound, 9,false);
instance_destroy();