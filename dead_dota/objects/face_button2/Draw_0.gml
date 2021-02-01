/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 565F2908
/// @DnDArgument : "code" "if(hat_button_main.windows == 4)$(13_10){$(13_10)	draw_self();$(13_10)	draw_sprite(spr_face16 + number, 0, x, y);$(13_10)}"
if(hat_button_main.windows == 4)
{
	draw_self();
	draw_sprite(spr_face16 + number, 0, x, y);
}