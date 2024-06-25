/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5314719E
/// @DnDArgument : "code" "image_xscale = cid_id.big_val * 1.4;$(13_10)image_yscale = cid_id.big_val * 1.4;$(13_10)image_angle = cid_id.YA;$(13_10)x = cid_id.x + lengthdir_x(55, cid_id.YA - 90);$(13_10)y = cid_id.y + lengthdir_y(55, cid_id.YA - 90);$(13_10)if (cid_id.skin == 1) {$(13_10)	sprite_index =  spr_fighternew;$(13_10)	image_blend = c_blue;$(13_10)}"
image_xscale = cid_id.big_val * 1.4;
image_yscale = cid_id.big_val * 1.4;
image_angle = cid_id.YA;
x = cid_id.x + lengthdir_x(55, cid_id.YA - 90);
y = cid_id.y + lengthdir_y(55, cid_id.YA - 90);
if (cid_id.skin == 1) {
	sprite_index =  spr_fighternew;
	image_blend = c_blue;
}