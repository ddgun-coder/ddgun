/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DD74219
/// @DnDArgument : "code" "x += lengthdir_x(30, YA - 90);$(13_10)y += lengthdir_y(30, YA - 90);$(13_10)image_angle = YA - 180;$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val * 1.5;$(13_10)if (!place_free(x, y)) {$(13_10)	if (alarm[0] > 3) {$(13_10)		alarm[0] = 3;	$(13_10)	}$(13_10)}"
x += lengthdir_x(30, YA - 90);
y += lengthdir_y(30, YA - 90);
image_angle = YA - 180;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val * 1.5;
if (!place_free(x, y)) {
	if (alarm[0] > 3) {
		alarm[0] = 3;	
	}
}