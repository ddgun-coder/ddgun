if (window_get_x() != 0) {
	window_center();
	var temp_x = window_get_x();
	var temp_y = window_get_y();
	window_set_position(0,0);
	window_set_size(temp_x * 2 + 1024, temp_y * 2 + 768);
}
else {
	window_set_size(1024, 768);
	window_center();
}