/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BF75CE0
/// @DnDArgument : "code" "if (hat_button_main.windows == 4)$(13_10){$(13_10)	global.face = spr_face16 + number;$(13_10)	only_main.do_effect = true;$(13_10)}$(13_10)"
if (hat_button_main.windows == 4)
{
	global.face = spr_face16 + number;
	only_main.do_effect = true;
}