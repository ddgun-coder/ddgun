DMG_buff(18, buff_noitem, 30, 240);
if (other.team != global.team) {
	var minind = testing;
	var mind = 3000;
	for(var i = 1; i < 24; i++) {
		var obj = global.cid_array[i];
		if (obj.team != global.team) {
			if (obj.x > 0 and obj.y > 0) { 
				var dis = distance_to_object(obj)
				if (mind > dis) {
					mind = dis
					minind = obj;
				}
			}
		}
	}
	x = minind.x;
	y = minind.y;
}