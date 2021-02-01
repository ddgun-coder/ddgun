var minind = testing;
var mind = 1024;
counter = 0;
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
if (minind != 0) {
	var ad = angle_difference(YA2, point_direction(x, y, minind.x, minind.y) + 90);
	if (abs(ad) > 15) {
		all_YA_change_delta2((ad - 180) / 10);
	}
	else {
		all_YA_change2(point_direction(x, y, minind.x, minind.y) + 90);	
	}
}