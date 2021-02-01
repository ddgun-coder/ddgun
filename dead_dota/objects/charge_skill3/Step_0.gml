/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EB6FE9D
/// @DnDArgument : "code" "image_xscale = cid_id.big_val * 3;$(13_10)image_yscale = cid_id.big_val * 3;$(13_10)x = cid_id.x;$(13_10)y = cid_id.y;$(13_10)image_angle = cid_id.temp_YA$(13_10)if (cid_id.charge == false or cid_id.sturn > 0) {$(13_10)	instance_destroy()$(13_10)}"
image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
x = cid_id.x;
y = cid_id.y;
image_angle = cid_id.temp_YA
if (cid_id.charge == false or cid_id.sturn > 0) {
	instance_destroy()
}