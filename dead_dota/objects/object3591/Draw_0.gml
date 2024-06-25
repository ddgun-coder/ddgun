/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65B3E7EA
/// @DnDArgument : "code" "var cur_xview = camera_get_view_x(view_camera[view_current]) + 512;$(13_10)var cur_yview = camera_get_view_y(view_camera[0]) + 384;$(13_10)draw_sprite_ext(spr_ready1, -1, cur_xview, cur_yview, 6, 6 ,0, -1, 1);"
var cur_xview = camera_get_view_x(view_camera[view_current]) + 512;
var cur_yview = camera_get_view_y(view_camera[0]) + 384;
draw_sprite_ext(spr_ready1, -1, cur_xview, cur_yview, 6, 6 ,0, -1, 1);