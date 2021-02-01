/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C9BEDBE
/// @DnDArgument : "code" "cid = 2;$(13_10)cid_id  = asset_get_index("testing" + string(cid))$(13_10)team = -1$(13_10)alarm[0] = 4;$(13_10)if (!audio_is_playing(EQ_4_sound)) {$(13_10)	audio_play_sound(EQ_4_sound,9,false);	$(13_10)}$(13_10)dmg = 55;"
cid = 2;
cid_id  = asset_get_index("testing" + string(cid))
team = -1
alarm[0] = 4;
if (!audio_is_playing(EQ_4_sound)) {
	audio_play_sound(EQ_4_sound,9,false);	
}
dmg = 55;