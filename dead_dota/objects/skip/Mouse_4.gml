/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 66068732
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 12E67F8A
/// @DnDArgument : "soundid" "hospital"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "hospital"
audio_play_sound(hospital, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 135917DC
/// @DnDArgument : "code" "audio_stop_all();$(13_10)$(13_10)audio_changer +=1;$(13_10)if (audio_changer >6) {$(13_10)	audio_changer = 0;$(13_10)}$(13_10)	$(13_10)$(13_10)switch (audio_changer) {$(13_10)	case 0 : audio_play_sound(rook_britge,10,true);$(13_10)	break;$(13_10)	case 1 : audio_play_sound(hospital,10,true);$(13_10)	break;$(13_10)	case 2 : audio_play_sound(dota_song,10,true);$(13_10)	break;$(13_10)	case 3 : audio_play_sound(hill,10,true);$(13_10)	break;$(13_10)	case 4 : audio_play_sound(FID,10,true);$(13_10)	break;$(13_10)	case 5 : audio_play_sound(my_friend_rip,10,true);$(13_10)	break;$(13_10)	case 6 : audio_play_sound(too_long_name,10,true);$(13_10)}$(13_10)	"
audio_stop_all();

audio_changer +=1;
if (audio_changer >6) {
	audio_changer = 0;
}
	

switch (audio_changer) {
	case 0 : audio_play_sound(rook_britge,10,true);
	break;
	case 1 : audio_play_sound(hospital,10,true);
	break;
	case 2 : audio_play_sound(dota_song,10,true);
	break;
	case 3 : audio_play_sound(hill,10,true);
	break;
	case 4 : audio_play_sound(FID,10,true);
	break;
	case 5 : audio_play_sound(my_friend_rip,10,true);
	break;
	case 6 : audio_play_sound(too_long_name,10,true);
}