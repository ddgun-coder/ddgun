/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A855FDA
/// @DnDArgument : "code" "x = cid_id.x + lengthdir_x(900 + deltay, cid_id.YA - 90);$(13_10)y = cid_id.y + lengthdir_y(900 + deltay, cid_id.YA - 90);$(13_10)image_angle = cid_id.YA - 180;$(13_10)image_xscale = cid_id.big_val * 4;$(13_10)image_yscale = cid_id.big_val * 4;$(13_10)if(cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)if (testing.cid == cid) {$(13_10)	solid = false;$(13_10)}$(13_10)if (deltay < 900) {$(13_10)	deltay -= 6;$(13_10)}"
x = cid_id.x + lengthdir_x(900 + deltay, cid_id.YA - 90);
y = cid_id.y + lengthdir_y(900 + deltay, cid_id.YA - 90);
image_angle = cid_id.YA - 180;
image_xscale = cid_id.big_val * 4;
image_yscale = cid_id.big_val * 4;
if(cid_id.sturn > 0) {
	instance_destroy();
}
if (testing.cid == cid) {
	solid = false;
}
if (deltay < 900) {
	deltay -= 6;
}