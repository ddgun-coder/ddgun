/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67E216AC
/// @DnDArgument : "steps" "160"
alarm_set(0, 160);

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
/// @DnDArgument : "code" "$(13_10)cid_id  = asset_get_index("testing" + string(cid));$(13_10)image_angle = cid_id.YA;$(13_10)dmg = 10;"

cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
dmg = 10;