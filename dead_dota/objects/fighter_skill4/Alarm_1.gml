/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5130920F
/// @DnDArgument : "code" "if (cid_id == global.my_cid_id) {$(13_10)	repeat(30) {$(13_10)	var tempnum = irandom(19) + 1;$(13_10)$(13_10)		var obj = asset_get_index("testing" + string(tempnum));$(13_10)		if (obj.team != global.team) {$(13_10)			if (obj.x > 0 and obj.y > 0) {$(13_10)				if! (place_meeting(obj.x, obj.x, hurt_zone)) {$(13_10)					testing.x = obj.x;$(13_10)					testing.y = obj.y + 15;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)alarm[1] = 2;"
if (cid_id == global.my_cid_id) {
	repeat(30) {
	var tempnum = irandom(19) + 1;

		var obj = asset_get_index("testing" + string(tempnum));
		if (obj.team != global.team) {
			if (obj.x > 0 and obj.y > 0) {
				if! (place_meeting(obj.x, obj.x, hurt_zone)) {
					testing.x = obj.x;
					testing.y = obj.y + 15;
				}
			}
		}
	}
}
alarm[1] = 2;