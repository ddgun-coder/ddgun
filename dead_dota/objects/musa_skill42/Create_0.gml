/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3BCA3D0B
/// @DnDArgument : "code" "cid = 1;$(13_10)audio_play_sound(musa_2_sound,1,false);$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)alarm[0] = 1;$(13_10)image_xscale = 2;$(13_10)image_yscale = 2;$(13_10)team = -1;$(13_10)image_angle = cid_id.temp_YA - 90$(13_10)dmg = 70"
cid = 1;
audio_play_sound(musa_2_sound,1,false);
cid_id  = asset_get_index("testing" + string(cid));
alarm[0] = 1;
image_xscale = 2;
image_yscale = 2;
team = -1;
image_angle = cid_id.temp_YA - 90
dmg = 70