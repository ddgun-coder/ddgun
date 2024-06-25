/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67046210
/// @DnDArgument : "code" "x = camera_get_view_x(view_camera[view_current]);$(13_10)y = camera_get_view_y(view_camera[0]);$(13_10)image_angle = 0;$(13_10)$(13_10)if(global.team == team) {$(13_10)	with(testing) {$(13_10)		buff_index = buff_p2;$(13_10)        buff_time = 300;$(13_10)        server77_equal(serve_val.buff_index, buff_index, buffer_u16);$(13_10)	}$(13_10)}"
x = camera_get_view_x(view_camera[view_current]);
y = camera_get_view_y(view_camera[0]);
image_angle = 0;

if(global.team == team) {
	with(testing) {
		buff_index = buff_p2;
        buff_time = 300;
        server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
}