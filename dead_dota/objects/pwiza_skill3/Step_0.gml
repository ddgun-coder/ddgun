/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61B587E1
/// @DnDArgument : "code" "y = cid_id.y + lengthdir_y(400 * cid_id.big_val, cid_id.YA - 90);$(13_10)x = cid_id.x + lengthdir_x(400 * cid_id.big_val, cid_id.YA - 90);$(13_10)image_angle = cid_id.YA;$(13_10)image_xscale = 8;$(13_10)image_yscale = 8;$(13_10)if(cid_id.sturn > 0 or cid_id.cancle_able == false) {$(13_10)	instance_destroy();$(13_10)}"
y = cid_id.y + lengthdir_y(400 * cid_id.big_val, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(400 * cid_id.big_val, cid_id.YA - 90);
image_angle = cid_id.YA;
image_xscale = 8;
image_yscale = 8;
if(cid_id.sturn > 0 or cid_id.cancle_able == false) {
	instance_destroy();
}