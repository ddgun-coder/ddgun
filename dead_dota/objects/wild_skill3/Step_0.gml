/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68C58F3F
/// @DnDArgument : "code" "image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)y = cid_id.y + lengthdir_y(300 * cid_id.big_val, cid_id.YA - 90);$(13_10)x = cid_id.x + lengthdir_x(300 * cid_id.big_val, cid_id.YA - 90);$(13_10)image_angle = cid_id.YA;$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)if (cid_id.skin == 1) {$(13_10)	sprite_index =  spr_mafia_wild3;$(13_10)}"
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
y = cid_id.y + lengthdir_y(300 * cid_id.big_val, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(300 * cid_id.big_val, cid_id.YA - 90);
image_angle = cid_id.YA;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (cid_id.skin == 1) {
	sprite_index =  spr_mafia_wild3;
}