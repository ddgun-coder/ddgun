/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EB6FE9D
/// @DnDArgument : "code" "image_xscale = cid_id.big_val * 1.5;$(13_10)image_yscale = cid_id.big_val;$(13_10)x = cid_id.x + lengthdir_x(25 * cid_id.big_val, cid_id.YA - 90)$(13_10)y = cid_id.y + lengthdir_y(25 * cid_id.big_val, cid_id.YA - 90)$(13_10)if(cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}"
image_xscale = cid_id.big_val * 1.5;
image_yscale = cid_id.big_val;
x = cid_id.x + lengthdir_x(25 * cid_id.big_val, cid_id.YA - 90)
y = cid_id.y + lengthdir_y(25 * cid_id.big_val, cid_id.YA - 90)
if(cid_id.sturn > 0) {
	instance_destroy();
}