/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46BE13A2
/// @DnDArgument : "code" "var ida = instance_create_depth(x, y, -100, mine_skill22);$(13_10)ida.team = team;$(13_10)ida.cid = cid;$(13_10)ida.cid_id = cid_id;$(13_10)ida.YA = image_angle;$(13_10)alarm[1] = 30;"
var ida = instance_create_depth(x, y, -100, mine_skill22);
ida.team = team;
ida.cid = cid;
ida.cid_id = cid_id;
ida.YA = image_angle;
alarm[1] = 30;