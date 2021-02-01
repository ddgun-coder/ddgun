if (bang) {
	for (var i = 1; i < 24; i++) {
		var tet = global.cid_array[i];
		if (tet.team != team) {
			if (place_meeting(x, y, tet)) {
				var name = instance_create_depth(x, y, 200, nu_skill21);
				name.cid_id = cid_id;
				name.cid = cid;
				name.team = team;
				instance_destroy();
			}	
		}
	}
	if (place_meeting(x, y, nu_skill21)) {
		var name = instance_create_depth(x, y, 200, nu_skill21);
		name.cid_id = cid_id;
		name.cid = cid;
		name.team = team;
		instance_destroy();
	}
}
if (global.team != team) {
	if (image_alpha > 0) {
		image_alpha -= 0.05;
	}
}
else {
	if (image_alpha > 0.5) {
		image_alpha -= 0.05;
	}
}