/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F3A8079
/// @DnDArgument : "code" "var cur_xview = camera_get_view_x(view_camera[view_current]);$(13_10)var cur_yview = camera_get_view_y(view_camera[view_current]) + 1024 - delta;$(13_10)delta += 40;$(13_10)draw_sprite(sprite507 , 0, cur_xview, cur_yview);"
var cur_xview = camera_get_view_x(view_camera[view_current]);
var cur_yview = camera_get_view_y(view_camera[view_current]) + 1024 - delta;
delta += 40;
draw_sprite(sprite507 , 0, cur_xview, cur_yview);