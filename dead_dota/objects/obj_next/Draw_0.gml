/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D7502D8
/// @DnDArgument : "code" "if (pickaxe_UI.windows = true and pickaxe_UI.index != spr_pickaxe9)$(13_10){$(13_10)	draw_sprite(spr_next, 0, xx + camera_get_view_x(view_camera[0]), yy + camera_get_view_y(view_camera[0]))$(13_10)}$(13_10)x = xx + camera_get_view_x(view_camera[0])$(13_10)y = yy + camera_get_view_y(view_camera[0])"
if (pickaxe_UI.windows = true and pickaxe_UI.index != spr_pickaxe9)
{
	draw_sprite(spr_next, 0, xx + camera_get_view_x(view_camera[0]), yy + camera_get_view_y(view_camera[0]))
}
x = xx + camera_get_view_x(view_camera[0])
y = yy + camera_get_view_y(view_camera[0])