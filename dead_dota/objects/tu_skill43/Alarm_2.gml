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

if (cid_id.up_skill >= 3) {
	var ida = instance_create_depth(x, y, -100,tu_skill41);
	ida.team = team;
	ida.cid = cid;
	ida.cid_id = cid_id;
	ida.YA = image_angle;
	cid_id.up_skill = 0

}
else {
	var ida = instance_create_depth(x, y, -100,tu_skill4);
	ida.team = team;
	ida.cid = cid;
	ida.cid_id = cid_id;
	ida.YA = image_angle;

}