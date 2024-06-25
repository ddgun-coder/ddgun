/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DD74219
/// @DnDArgument : "code" "image_angle = YA - 180;$(13_10)if (cid_id.skin == 2) {$(13_10)	sprite_index =  spr_car_shit1;$(13_10)}$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)$(13_10) for (var i = 0; i < 24; i++) {$(13_10)      var idd = global.cid_array[i];$(13_10)      if (idd == cid_id) continue;$(13_10)      if (place_meeting(x, y, idd)) {$(13_10)         instance_destroy();$(13_10)      }$(13_10)	  }"
image_angle = YA - 180;
if (cid_id.skin == 2) {
	sprite_index =  spr_car_shit1;
}
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;

 for (var i = 0; i < 24; i++) {
      var idd = global.cid_array[i];
      if (idd == cid_id) continue;
      if (place_meeting(x, y, idd)) {
         instance_destroy();
      }
	  }