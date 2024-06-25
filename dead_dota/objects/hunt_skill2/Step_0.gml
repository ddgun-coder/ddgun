/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F4F8A91
/// @DnDArgument : "code" "if (cid_id.skin == 3) {$(13_10)	sprite_index =  spr_west_hunt2;$(13_10)}$(13_10)if (cid_id.skin == 2) {$(13_10)	sprite_index =  spr_pophunter2;$(13_10)}$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;"
if (cid_id.skin == 3) {
	sprite_index =  spr_west_hunt2;
}
if (cid_id.skin == 2) {
	sprite_index =  spr_pophunter2;
}
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;