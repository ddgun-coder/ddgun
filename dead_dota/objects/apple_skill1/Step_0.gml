/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AD4E871
/// @DnDArgument : "code" "x = cid_id.x;$(13_10)y = cid_id.y;$(13_10)draw_self();$(13_10)image_angle = cid_id.YA;$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}"
x = cid_id.x;
y = cid_id.y;
draw_self();
image_angle = cid_id.YA;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}