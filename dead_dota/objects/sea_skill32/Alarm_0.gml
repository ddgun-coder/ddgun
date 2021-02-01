/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23122DAA
/// @DnDArgument : "code" "var name = instance_create_depth(x, y, 200, sea_skill311);$(13_10)name.cid_id = cid_id;$(13_10)name.cid = cid;$(13_10)name.team = team;$(13_10)instance_destroy();"
var name = instance_create_depth(x, y, 200, sea_skill311);
name.cid_id = cid_id;
name.cid = cid;
name.team = team;
instance_destroy();