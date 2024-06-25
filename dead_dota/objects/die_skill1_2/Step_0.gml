/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EB6FE9D
/// @DnDArgument : "code" "image_xscale = -cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)image_angle = cid_id.YA;$(13_10)if (cid_id.skin == 3) {$(13_10)	sprite_index = spr_music_die1;$(13_10)}$(13_10)if (cid_id.team == global.team or cid_id == global.my_cid_id) {$(13_10)	 solid = false;$(13_10)}$(13_10)$(13_10)y = cid_id.y + lengthdir_y(70 * cid_id.big_val, cid_id.YA- 180);$(13_10)x = cid_id.x + lengthdir_x(70 * cid_id.big_val, cid_id.YA- 180);"
image_xscale = -cid_id.big_val;
image_yscale = cid_id.big_val;
image_angle = cid_id.YA;
if (cid_id.skin == 3) {
	sprite_index = spr_music_die1;
}
if (cid_id.team == global.team or cid_id == global.my_cid_id) {
	 solid = false;
}

y = cid_id.y + lengthdir_y(70 * cid_id.big_val, cid_id.YA- 180);
x = cid_id.x + lengthdir_x(70 * cid_id.big_val, cid_id.YA- 180);