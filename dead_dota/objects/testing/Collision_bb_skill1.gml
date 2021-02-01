DMG(15, n_attack_area, 40)
if (global.team != other.team) {
	for(var i = 0; i < 30; i++) {
		if place_free(x + lengthdir_x((100 - i) * big_val, other.YA - 90), y + lengthdir_y((100 - i) * big_val, other.YA - 90)) {
			x += lengthdir_x(100 * big_val, other.YA - 90);
			y += lengthdir_y(100 * big_val, other.YA - 90);
			break;
		}
	}
}