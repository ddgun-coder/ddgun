/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6087AF17
/// @DnDArgument : "code" "image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)spin += 5;$(13_10)image_angle = spin;$(13_10)if (cid_id.skin == 3) {$(13_10)	sprite_index =  spr_new_bwiza4;$(13_10)}$(13_10)y = cid_id.y + lengthdir_y(105 * cid_id.big_val, spin - 180);$(13_10)x = cid_id.x + lengthdir_x(105 * cid_id.big_val, spin - 180);"
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
spin += 5;
image_angle = spin;
if (cid_id.skin == 3) {
	sprite_index =  spr_new_bwiza4;
}
y = cid_id.y + lengthdir_y(105 * cid_id.big_val, spin - 180);
x = cid_id.x + lengthdir_x(105 * cid_id.big_val, spin - 180);