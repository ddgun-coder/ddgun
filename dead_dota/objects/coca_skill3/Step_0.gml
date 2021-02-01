x += lengthdir_x(15, YA - 90);
y += lengthdir_y(15, YA - 90);
image_angle += 10;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if (cid_id != global.my_cid_id) {
	if (place_meeting(x, y, testing)) {
		instance_destroy();
	}
}
for (var i = 1; i < 24; i++) {
	if (i != global.my_cid_id) {
		if (place_meeting(x, y, global.cid_array[i])) {
			if ((global.cid_array[i]).sturn > 0) {
				instance_destroy();
			}
		}
	}
}