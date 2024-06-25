/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3BCA3D0B
/// @DnDArgument : "code" "cid = 1;$(13_10)audio_play_sound(gun_s_attack_sound,9,false);$(13_10)audio_play_sound(gun_s_attack_sound,9,false);$(13_10)audio_play_sound(gun_s_attack_sound,9,false);$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)alarm[0] = 10;$(13_10)team = -1;$(13_10)dmg = 12;"
cid = 1;
audio_play_sound(gun_s_attack_sound,9,false);
audio_play_sound(gun_s_attack_sound,9,false);
audio_play_sound(gun_s_attack_sound,9,false);
cid_id  = asset_get_index("testing" + string(cid));
alarm[0] = 10;
team = -1;
dmg = 12;