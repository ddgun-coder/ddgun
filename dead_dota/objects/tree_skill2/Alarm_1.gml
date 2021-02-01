var mind = 2000;
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.team != team) {
		if (obj.x > 0 and obj.y > 0) { 
			var dis = distance_to_object(obj)
			if (mind > dis) {
				mind = dis
				minind = obj;
			}
		}
	}
}
alarm[1] = 40;