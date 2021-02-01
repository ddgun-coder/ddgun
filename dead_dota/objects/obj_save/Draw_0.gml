/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0072C93C
/// @DnDArgument : "code" "if (global.money < 50000)$(13_10){$(13_10)	draw_sprite(spr_save, 0, x, y)	$(13_10)}$(13_10)else$(13_10){$(13_10)	if (global.money < 150000)$(13_10)	{$(13_10)		draw_sprite(spr_save, 1, x, y)$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		draw_sprite(spr_save, 2, x, y)$(13_10)	}$(13_10)}"
if (global.money < 50000)
{
	draw_sprite(spr_save, 0, x, y)	
}
else
{
	if (global.money < 150000)
	{
		draw_sprite(spr_save, 1, x, y)
	}
	else
	{
		draw_sprite(spr_save, 2, x, y)
	}
}