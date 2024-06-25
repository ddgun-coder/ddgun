/// @description Insert description here
// You can write your code in this editor
if (global.my_cid == cid) {
	max_len = (dura_max - dura) / 10 + len;
	if (dura <= 0 and off == false) {
		off = true;
		gravity = 1;
		hspeed = 10;
		vspeed = random_range(-5, 5);
		direction = image_angle;
		alarm[1] = 60;
		chain_id[0].number = 1;
		for (var i = 0; i < chain_num; i++) {
			gravity = 1;
			hspeed = 10;
			vspeed = random_range(-5, 5);
			chain_id[i].alarm[1] = 60;
		}
	}
	if (!off) {
		image_blend = merge_color(c_red, c_white, dura / dura_max);
		for (var i = 0; i < chain_num; i++) {
			chain_id[i].image_blend = image_blend;
		}
		var distance = point_distance(x, y, testing.x, testing.y);
		if (distance >= max_len) {
			var dx, dy, check = false;
			var dir = point_direction(x, y, testing.x , testing.y) + 180;
			dx = lengthdir_x((distance - max_len) / 3, dir);
			dy = lengthdir_y((distance - max_len) / 3, dir);
			with (testing) {
				if (place_free(x + dx, y)) {
					x += dx;
					check = true;
				}
				if (place_free(x, y + dy)) {
					y += dy;
					check = true;
				}
			}
			if (check) dura -= (distance - max_len) / 10;
		}
	}
}









