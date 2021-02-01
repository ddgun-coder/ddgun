/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 13255A5C
/// @DnDArgument : "code" "arm_all_normal()$(13_10)testing.moveable = false;$(13_10)testing.effect_index = effect_gag;$(13_10)testing.a_possible = false;$(13_10)serve1.kazino_time = 9999;$(13_10)if (timeline_loop == false) {$(13_10)	timeline_loop = true;$(13_10)	re = 0;$(13_10)	audio_stop_all();$(13_10)	audio_play_sound(last,10,false);$(13_10)	audio_play_sound(last,10,false);$(13_10)}$(13_10)else {$(13_10)	if (re > 10) {$(13_10)		timeline_loop = false;$(13_10)	}$(13_10)}"
arm_all_normal()
testing.moveable = false;
testing.effect_index = effect_gag;
testing.a_possible = false;
serve1.kazino_time = 9999;
if (timeline_loop == false) {
	timeline_loop = true;
	re = 0;
	audio_stop_all();
	audio_play_sound(last,10,false);
	audio_play_sound(last,10,false);
}
else {
	if (re > 10) {
		timeline_loop = false;
	}
}