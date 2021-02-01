/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67E216AC
/// @DnDArgument : "steps" "400"
alarm_set(0, 400);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46A255F4
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "var" "team"
/// @DnDArgument : "var_1" "cid"
team = -1;
cid = 3;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 228A0D4D
/// @DnDArgument : "code" "audio_play_sound(mili_4_sound, 1, false);$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)image_angle = cid_id.YA;$(13_10)time = 0;$(13_10)dmg = 14;"
audio_play_sound(mili_4_sound, 1, false);
cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
time = 0;
dmg = 14;