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
var ida = instance_create_depth(x - 8, y, -100,nk_skill33);
ida.team = team;
ida.cid = cid;
ida.cid_id = cid_id;
ida.YA = image_angle;
alarm[2] = 200;
alarm[1] = 1;