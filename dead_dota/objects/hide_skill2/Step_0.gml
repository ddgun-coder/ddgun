/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5314719E
/// @DnDArgument : "code" "image_angle = cid_id.YA;$(13_10)if (cid_id.skin == 1) {$(13_10)	sprite_index =  spr_dd_web;$(13_10)}$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}"
image_angle = cid_id.YA;
if (cid_id.skin == 1) {
	sprite_index =  spr_dd_web;
}
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}