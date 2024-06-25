if (sturn == 0) {
	alarm[3] = 1
	sturn = 30
	if (irandom(100) == 20) {
			if (high_mana = false) {
				var ida = instance_create_depth(x, y, -100, eng_skill31);
				ida.team = team;
				ida.cid = cid;
				ida.cid_id = cid_id;
				ida.YA = point_direction(x, y, minind.x, minind.y) + 90;
			}
			else {
				var ida = instance_create_depth(x, y, -100, eng_skill32);
				ida.team = team;
				ida.cid = cid;
				ida.cid_id = cid_id;
				ida.YA = point_direction(x, y, minind.x, minind.y) + 90;
			}
		}
	}