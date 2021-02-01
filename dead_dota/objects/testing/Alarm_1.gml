alarm[1] = 240;
if (global.hat == spr_hat37 and level > 0) {
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
	if (level > 1) {
		invisible = true;
		invisible_time = 160;
	}
}