/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33B0E4E3
/// @DnDArgument : "code" "if (global.pickaxe_exist[pickaxe_UI.index - spr_pickaxe1] = true and global.pickaxe_index != pickaxe_UI.index and pickaxe_UI.windows = true)$(13_10){$(13_10)	draw_sprite_ext(spr_ok_button, 0, xx + camera_get_view_x(view_camera[0]), yy + camera_get_view_y(view_camera[0]), 2, 2, 0, -1, 1)$(13_10)}$(13_10)x = xx + camera_get_view_x(view_camera[0])$(13_10)y = yy + camera_get_view_y(view_camera[0])"
if (global.pickaxe_exist[pickaxe_UI.index - spr_pickaxe1] = true and global.pickaxe_index != pickaxe_UI.index and pickaxe_UI.windows = true)
{
	draw_sprite_ext(spr_ok_button, 0, xx + camera_get_view_x(view_camera[0]), yy + camera_get_view_y(view_camera[0]), 2, 2, 0, -1, 1)
}
x = xx + camera_get_view_x(view_camera[0])
y = yy + camera_get_view_y(view_camera[0])