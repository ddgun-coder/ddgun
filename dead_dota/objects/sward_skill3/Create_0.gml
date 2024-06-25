/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4843FB72
/// @DnDArgument : "code" "alarm_set(0, 127);$(13_10)$(13_10)team = -1;$(13_10)cid = 3;$(13_10)$(13_10)audio_play_sound(twiza_1_drow,1,true);$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)image_angle = cid_id.YA;$(13_10)dmg = 36;"
alarm_set(0, 127);

team = -1;
cid = 3;

audio_play_sound(twiza_1_drow,1,true);
cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
dmg = 36;