/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F29A951
/// @DnDInput : 2
/// @DnDArgument : "expr" "testing.YA"
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "var_1" "team"
image_angle = testing.YA;
team = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 022D9144
/// @DnDArgument : "steps" "80 * 1.3"
alarm_set(0, 80 * 1.3);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 466D38A0
/// @DnDArgument : "code" "audio_play_sound(healer_2_sound,9,false);$(13_10)cid = 1;$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)image_alpha = 0.8;"
audio_play_sound(healer_2_sound,9,false);
cid = 1;
cid_id  = asset_get_index("testing" + string(cid));
image_alpha = 0.8;