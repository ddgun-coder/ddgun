/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 074FF88D
/// @DnDArgument : "code" "draw_self();$(13_10)draw_sprite(global.foot, 0, x, y);$(13_10)if (hat_button_main.windows == 3)$(13_10){$(13_10)	image_index = 1;	$(13_10)}$(13_10)else$(13_10){$(13_10)	image_index = 0;	$(13_10)}"
draw_self();
draw_sprite(global.foot, 0, x, y);
if (hat_button_main.windows == 3)
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}