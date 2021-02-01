/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3043FEB2
/// @DnDArgument : "code" "if(team != global.team) {$(13_10)	testing.hp = 20;$(13_10)}$(13_10)instance_destroy();"
if(team != global.team) {
	testing.hp = 20;
}
instance_destroy();