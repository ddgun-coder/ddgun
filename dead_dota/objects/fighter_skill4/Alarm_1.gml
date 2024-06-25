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