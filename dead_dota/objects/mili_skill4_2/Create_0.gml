/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67E216AC
/// @DnDArgument : "steps" "15"
alarm_set(0, 15);

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
/// @DnDArgument : "code" "audio_play_sound(mili_4_sound_2,1,false);$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)image_angle = cid_id.YA;$(13_10)deltaYA = 0;$(13_10)delta_go = 0;$(13_10)dmg = 20;"
audio_play_sound(mili_4_sound_2,1,false);
cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
deltaYA = 0;
delta_go = 0;
dmg = 20;