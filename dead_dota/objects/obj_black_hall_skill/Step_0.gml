/// @description Insert description here
// You can write your code in this editor

with(all) {
	if (string_count("skill", object_get_name(object_index)) >= 1 and object_index != obj_black_hall_skill) {
		var dir = point_direction(x, y, other.x, other.y)
		var len = max(0, 10 - round(distance_to_point(other.x, other.y) / 50));
		x += lengthdir_x(len, dir);
		y += lengthdir_y(len, dir);
	}
}

image_xscale = min(1.5, max(0.5, image_xscale + random_range(-0.5, 0.5)));
image_yscale = min(1.5, max(0.5, image_yscale + random_range(-0.5, 0.5)));












