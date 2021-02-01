/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F863F7F
/// @DnDArgument : "code" "if(shop_UI.windows == true and shop_UI.windows_index == 0)$(13_10){$(13_10)	x = xstart + camera_get_view_x(view_camera[0])$(13_10)	y = ystart + camera_get_view_y(view_camera[0])$(13_10)}"
if(shop_UI.windows == true and shop_UI.windows_index == 0)
{
	x = xstart + camera_get_view_x(view_camera[0])
	y = ystart + camera_get_view_y(view_camera[0])
}