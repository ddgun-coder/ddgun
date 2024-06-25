repeat(30) {
	var tempnum = irandom(19) + 1;

	var obj = asset_get_index("testing" + string(tempnum));
		if (obj.x > 0 and obj.y > 0) {
			if! (place_meeting(obj.x, obj.x, hurt_zone)) {
				if (obj.hp > 0) {
					x = obj.x;
					y = obj.y + irandom(35);
				}
			}
		}
	}
invisible = true;
invisible_time = 240
a_a_cooltime = 25