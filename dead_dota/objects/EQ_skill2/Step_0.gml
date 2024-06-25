/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 186BA87A
/// @DnDArgument : "code" "image_xscale = cid_id.big_val * scale;$(13_10)image_yscale = cid_id.big_val * scale;	$(13_10)$(13_10)$(13_10)if (effect = true) {$(13_10)	image_alpha -= 0.05$(13_10)	scale += 0.01$(13_10)	dmg = 0$(13_10)}$(13_10)else {$(13_10)	scale += 0.2;	$(13_10)}"
image_xscale = cid_id.big_val * scale;
image_yscale = cid_id.big_val * scale;	


if (effect = true) {
	image_alpha -= 0.05
	scale += 0.01
	dmg = 0
}
else {
	scale += 0.2;	
}