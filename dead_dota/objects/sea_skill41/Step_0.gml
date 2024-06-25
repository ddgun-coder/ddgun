x += lengthdir_x(deltay, YA - 90);
y += lengthdir_y(deltay, YA - 90);
if (delayb == 1) {
	image_angle = YA - 90;
}
else {
	image_angle = YA + 90;
}
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
deltay = delayb * 30;
if (delayb != -1) {
	for (var i = 1; i < 24; i++) {
		if (i != cid) {
			if (place_meeting(x, y, global.cid_array[i])) {
				delayb = -1;
				alarm[0] = 20 - alarm[0];
			}
		}
	}
}