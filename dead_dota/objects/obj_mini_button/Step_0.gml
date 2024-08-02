if(hat_button_main.windows = 1 or hat_button_main.windows = 6) {
	visible = true
	if (collision_point(mouse_x, mouse_y, id, true, false)) {
		image_blend = c_gray;
	}
	else {
		image_blend = c_white;
	}
}
else {
	visible = false
}









