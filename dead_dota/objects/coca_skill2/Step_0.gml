angle += 10;
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


var l = collision_normal(x, y, wall_area2);
if (l != -1) {
	dir = l;
}
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);