/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D7502D8
/// @DnDArgument : "code" "if (instance_exists(pickaxe_UI)) {$(13_10)	if (pickaxe_UI.windows = true and pickaxe_UI.index != spr_pickaxe1)$(13_10)	{$(13_10)		draw_sprite_ext(spr_next, 0, xx + camera_get_view_x(view_camera[0]), yy + camera_get_view_y(view_camera[0]), -1, 1, 0, -1, 1)$(13_10)	}$(13_10)}$(13_10)x = xx + camera_get_view_x(view_camera[0])$(13_10)y = yy + camera_get_view_y(view_camera[0])"
if (instance_exists(pickaxe_UI)) {
	if (pickaxe_UI.windows = true and pickaxe_UI.index != spr_pickaxe1)
	{
		draw_sprite_ext(spr_next, 0, xx + camera_get_view_x(view_camera[0]), yy + camera_get_view_y(view_camera[0]), -1, 1, 0, -1, 1)
	}
}
x = xx + camera_get_view_x(view_camera[0])
y = yy + camera_get_view_y(view_camera[0])