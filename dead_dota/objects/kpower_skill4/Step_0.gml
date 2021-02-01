/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6087AF17
/// @DnDArgument : "code" "image_xscale = cid_id.big_val * 1.5;$(13_10)image_yscale = cid_id.big_val * 1.5;$(13_10)image_angle = cid_id.YA + YAdelta;$(13_10)y = cid_id.y ;$(13_10)x = cid_id.x ;$(13_10)YAdelta += 16;$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}"
image_xscale = cid_id.big_val * 1.5;
image_yscale = cid_id.big_val * 1.5;
image_angle = cid_id.YA + YAdelta;
y = cid_id.y ;
x = cid_id.x ;
YAdelta += 16;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}