/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42C0F1C1
/// @DnDArgument : "code" "image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)image_angle += 6;$(13_10)x = cid_id.x$(13_10)y = cid_id.y$(13_10)if(global.team != team) {$(13_10)	if (global.hat != spr_hat10) {$(13_10)		testing.alpha = 1;$(13_10)		testing.cli_alpha = 1;$(13_10)	}$(13_10)}"
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
image_angle += 6;
x = cid_id.x
y = cid_id.y
if(global.team != team) {
	if (global.hat != spr_hat10) {
		testing.alpha = 1;
		testing.cli_alpha = 1;
	}
}