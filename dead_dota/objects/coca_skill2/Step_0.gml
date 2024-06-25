image_angle += 10;
image_xscale = cid_id.big_val * 0.6;
image_yscale = cid_id.big_val * 0.6;

for (var i = 1; i < 24; i++) {
	if (i != global.my_cid_id) {
		if (place_meeting(x, y, global.cid_array[i])) {
			if ((global.cid_array[i]).sturn > 0) {
				instance_destroy();
			}
		}
	}
}
move_bounce_solid(false);