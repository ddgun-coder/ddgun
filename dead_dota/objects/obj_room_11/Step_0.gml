/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B55F4FB
/// @DnDArgument : "code" "if(hat_button_main.windows <= 0) {$(13_10)	if (collision_point(mouse_x, mouse_y, id, true, false)) {$(13_10)			image_blend = make_color_rgb(232,0,85);$(13_10)		}$(13_10)		else {$(13_10)			image_blend = c_white;$(13_10)		}$(13_10)		visible = true$(13_10)$(13_10)}$(13_10)else {	$(13_10)	visible = false$(13_10)}"
if(hat_button_main.windows <= 0) {
	if (collision_point(mouse_x, mouse_y, id, true, false)) {
			image_blend = make_color_rgb(232,0,85);
		}
		else {
			image_blend = c_white;
		}
		visible = true

}
else {	
	visible = false
}