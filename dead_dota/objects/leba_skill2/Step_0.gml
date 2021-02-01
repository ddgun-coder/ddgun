/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79FCAB81
/// @DnDArgument : "code" "x = cid_id.x$(13_10)y = cid_id.y$(13_10)image_angle = cid_id.YA + deltaYA;$(13_10)image_xscale = cid_id.big_val * 3;$(13_10)image_yscale = cid_id.big_val * 3;$(13_10)deltaYA = irandom_range(-1, 1) * 30;$(13_10)if(cid_id.sturn > 0 or cid_id.cancle_able == false) {$(13_10)	instance_destroy();$(13_10)}"
x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA + deltaYA;
image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
deltaYA = irandom_range(-1, 1) * 30;
if(cid_id.sturn > 0 or cid_id.cancle_able == false) {
	instance_destroy();
}