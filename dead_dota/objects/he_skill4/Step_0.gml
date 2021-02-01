/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0ABA40FA
/// @DnDArgument : "code" "x += lengthdir_x(25, YA - 90);$(13_10)y += lengthdir_y(25, YA - 90);$(13_10)image_angle += 20;$(13_10)image_xscale = cid_id.big_val * 1.5;$(13_10)image_yscale = cid_id.big_val * 1.5;$(13_10)for (var i = 1; i < 24; i++) {$(13_10)	if (i != global.my_cid_id) {$(13_10)		if (place_meeting(x, y, testing0 + i)) {$(13_10)			if ((testing0 + i).sturn > 0) {$(13_10)				instance_destroy();$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
x += lengthdir_x(25, YA - 90);
y += lengthdir_y(25, YA - 90);
image_angle += 20;
image_xscale = cid_id.big_val * 1.5;
image_yscale = cid_id.big_val * 1.5;
for (var i = 1; i < 24; i++) {
	if (i != global.my_cid_id) {
		if (place_meeting(x, y, testing0 + i)) {
			if ((testing0 + i).sturn > 0) {
				instance_destroy();
			}
		}
	}
}