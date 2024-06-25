/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5314719E
/// @DnDArgument : "code" "image_xscale = cid_id.big_val * 1.5$(13_10)image_yscale = cid_id.big_val * 1.5;$(13_10)image_angle = cid_id.temp_YA;$(13_10)$(13_10)if(cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)"
image_xscale = cid_id.big_val * 1.5
image_yscale = cid_id.big_val * 1.5;
image_angle = cid_id.temp_YA;

if(cid_id.sturn > 0) {
	instance_destroy();
}