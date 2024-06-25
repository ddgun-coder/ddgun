/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DD74219
/// @DnDArgument : "code" "image_angle = YA - 180;$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)if (place_meeting(x, y, trol_skill11)) {$(13_10)	instance_destroy();	$(13_10)}"
image_angle = YA - 180;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if (place_meeting(x, y, trol_skill11)) {
	instance_destroy();	
}