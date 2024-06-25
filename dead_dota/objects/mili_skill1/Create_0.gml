/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67E216AC
/// @DnDArgument : "steps" "105"
alarm_set(0, 105);

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
/// @DnDArgument : "code" "audio_play_sound(mili_1_sound,1,true);$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)image_angle = cid_id.YA;$(13_10)dmg = 10;$(13_10)image_alpha = 0$(13_10)alarm[1] = 5;"
audio_play_sound(mili_1_sound,1,true);
cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
dmg = 10;
image_alpha = 0
alarm[1] = 5;