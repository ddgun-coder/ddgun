/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DD74219
/// @DnDArgument : "code" "if (final_effect = true) {$(13_10)	image_alpha -= 0.06$(13_10)}$(13_10)else {$(13_10)	if(gogo = true) {$(13_10)		x += lengthdir_x(35, YA - 90);$(13_10)		y += lengthdir_y(35, YA - 90);$(13_10)		image_alpha = 1$(13_10)	}$(13_10)	else {$(13_10)		if(image_alpha < 0.8) {$(13_10)			image_alpha += 0.03$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (cid_id.skin == 1) {$(13_10)	sprite_index =  spr_snow_ma2;$(13_10)}"
if (final_effect = true) {
	image_alpha -= 0.06
}
else {
	if(gogo = true) {
		x += lengthdir_x(35, YA - 90);
		y += lengthdir_y(35, YA - 90);
		image_alpha = 1
	}
	else {
		if(image_alpha < 0.8) {
			image_alpha += 0.03
		}
	}
}





if (cid_id.skin == 1) {
	sprite_index =  spr_snow_ma2;
}