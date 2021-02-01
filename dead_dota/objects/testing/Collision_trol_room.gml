if place_free(x + lengthdir_x(9, other.image_angle - 90), y + lengthdir_y(9, other.image_angle - 90)) {
	x += lengthdir_x(9, other.image_angle - 90);
	y += lengthdir_y(9, other.image_angle - 90);
}
if (room == room_rockcave) {
	charge_time--;
}