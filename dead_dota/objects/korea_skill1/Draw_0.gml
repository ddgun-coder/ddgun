/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79FCAB81
/// @DnDArgument : "code" "x = cid_id.x + lengthdir_x(15 * cid_id.big_val,cid_id.YA-90)$(13_10)y = cid_id.y + lengthdir_y(15 * cid_id.big_val,cid_id.YA-90)$(13_10)draw_self();$(13_10)image_angle = cid_id.YA;$(13_10)image_xscale = cid_id.big_val * 1;$(13_10)image_yscale = cid_id.big_val * 1;$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)if (cid_id.skin == 2) {$(13_10)	sprite_index =  spr_ekorea1;$(13_10)}"
x = cid_id.x + lengthdir_x(15 * cid_id.big_val,cid_id.YA-90)
y = cid_id.y + lengthdir_y(15 * cid_id.big_val,cid_id.YA-90)
draw_self();
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 1;
image_yscale = cid_id.big_val * 1;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (cid_id.skin == 2) {
	sprite_index =  spr_ekorea1;
}