/// @description Insert description here
// You can write your code in this editor
if (global.my_cid == cid) {
	var distance = point_distance(x, y, testing.x, testing.y)
	if (distance >= max_len) {
		var dx, dy;
		var dir = point_direction(x, y, testing.x , testing.y) + 180;
		dx = lengthdir_x((distance - max_len) / 3 , dir);
		dy = lengthdir_y((distance - max_len) / 3 , dir);
		with (testing) {
			if (place_free(x + dx, y)) {
				x += dx;
			}
			if (place_free(x, y + dy)) {
				y += dy;	
			}
		}
	}
}









