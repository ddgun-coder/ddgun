/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79494CF2
/// @DnDArgument : "code" "if (global.pickaxe_exist[pickaxe_UI.index - spr_pickaxe1] == true)$(13_10){$(13_10)	global.pickaxe_index = pickaxe_UI.index$(13_10)}"
if (global.pickaxe_exist[pickaxe_UI.index - spr_pickaxe1] == true)
{
	global.pickaxe_index = pickaxe_UI.index
}