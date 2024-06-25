/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42F09618
/// @DnDArgument : "code" "if (cid == global.my_cid) {$(13_10)    testing.stats_speed = 0$(13_10)}$(13_10)instance_destroy()"
if (cid == global.my_cid) {
    testing.stats_speed = 0
}
instance_destroy()