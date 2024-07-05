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

if (place_free(x + lengthdir_x(spd, dir), y + lengthdir_y(spd, dir))) {
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
}
else {
	var dx = lengthdir_x(1, dir);
	var dy = lengthdir_y(1, dir);
	var di = 0;
	for (var i = spd - 1; i > 0; i--) {
		di = spd - i;
		if (place_free(x + dx * i, y + dy * i)) {
			x += dx * i;
			y += dy * i;
			break;
		}
	}

	var n_dir = collision_normal_solid(x, y, all, di);

	if (n_dir != -1) {
		var nx = lengthdir_x(1, n_dir);
		var ny = lengthdir_y(1, n_dir);
		var px = dx * di;
		var py = dy * di;
		var dot = dot_product(-px, -py,	nx, ny);
		var rx = dot * nx * 2 + px;
		var ry = dot * ny * 2 + py;
		dir = point_direction(0, 0, rx, ry)
	}
	x += lengthdir_x(di, dir);
	y += lengthdir_y(di, dir);
}