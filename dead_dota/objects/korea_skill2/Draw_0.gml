/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79FCAB81
/// @DnDArgument : "code" "draw_self();$(13_10)image_angle = cid_id.YA;$(13_10)image_xscale = cid_id.big_val * 2;$(13_10)image_yscale = cid_id.big_val * 2;$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}"
draw_self();
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}