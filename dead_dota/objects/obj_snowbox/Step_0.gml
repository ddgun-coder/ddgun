if (room == room_out) {
	instance_destroy()
	exit;
}
if (collision_point(mouse_x, mouse_y, id, true, false)) {
image_blend = c_gray;
}
else {
image_blend = c_white;
}