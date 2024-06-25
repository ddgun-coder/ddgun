/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79FCAB81
/// @DnDArgument : "code" "x = cid_id.x$(13_10)y = cid_id.y $(13_10)image_angle = cid_id.YA;$(13_10)image_xscale = cid_id.big_val * 1.25;$(13_10)image_yscale = cid_id.big_val * 1.25;$(13_10)image_alpha = 0.3$(13_10)if(cid_id.cancle_able == false and cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)"
x = cid_id.x
y = cid_id.y 
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 1.25;
image_yscale = cid_id.big_val * 1.25;
image_alpha = 0.3
if(cid_id.cancle_able == false and cid_id.sturn > 0) {
	instance_destroy();
}