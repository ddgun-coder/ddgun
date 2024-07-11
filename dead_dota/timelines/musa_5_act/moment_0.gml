arm_all_normal()
arm_type = "attack"
a_cooltime = 4;
var minind = testing;
var mind = 384;
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.team != global.team) {
		if (global.my_cid != i) {
			if (obj.x > 0 and obj.y > 0) { 
				var dis = distance_to_object(obj)
				if (mind > dis) {
					mind = dis
					minind = obj;
				}
			}
		}
	}
}
x = minind.x;
y = minind.y + 15;