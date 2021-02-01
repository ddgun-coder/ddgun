/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DB21784
/// @DnDArgument : "code" "var obj = instance_create_depth(x, y, 100, pwiza_skill3_2);$(13_10)obj.cid = cid;$(13_10)obj.cid_id = cid_id;$(13_10)obj.team = team;$(13_10)alarm[2] = 1;"
var obj = instance_create_depth(x, y, 100, pwiza_skill3_2);
obj.cid = cid;
obj.cid_id = cid_id;
obj.team = team;
alarm[2] = 1;