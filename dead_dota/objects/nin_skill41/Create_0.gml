/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3BCA3D0B
/// @DnDArgument : "code" "cid = 1;$(13_10)audio_play_sound(nin4_sound,1,false);$(13_10)audio_play_sound(nin4_sound,1,false);$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)skill_create(30)$(13_10)team = -1;$(13_10)dmg = 28"
cid = 1;
audio_play_sound(nin4_sound,1,false);
audio_play_sound(nin4_sound,1,false);
cid_id  = asset_get_index("testing" + string(cid));
skill_create(30)
team = -1;
dmg = 28