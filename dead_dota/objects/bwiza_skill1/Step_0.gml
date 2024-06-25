/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6087AF17
/// @DnDArgument : "code" "if (cid_id.skin == 3) {$(13_10)	sprite_index =  spr_new_bwizaa;$(13_10)}$(13_10)image_xscale = cid_id.big_val * 1.5;$(13_10)image_yscale = cid_id.big_val * 3 ;$(13_10)image_angle = cid_id.YA;$(13_10)y = cid_id.y + lengthdir_y(40,cid_id.YA-90);$(13_10)x = cid_id.x + lengthdir_x(40,cid_id.YA-90);"
if (cid_id.skin == 3) {
	sprite_index =  spr_new_bwizaa;
}
image_xscale = cid_id.big_val * 1.5;
image_yscale = cid_id.big_val * 3 ;
image_angle = cid_id.YA;
y = cid_id.y + lengthdir_y(40,cid_id.YA-90);
x = cid_id.x + lengthdir_x(40,cid_id.YA-90);