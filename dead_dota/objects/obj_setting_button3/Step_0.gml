if (global.sub_setting != 2) {
	image_index = 0
}
else {
	image_index = 1
}
if (collision_point(mouse_x, mouse_y, id, true, false)) {
	image_blend = c_grey;
}
else {
	image_blend = c_white;
}













