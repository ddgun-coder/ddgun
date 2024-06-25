if(hat_button_main.windows == 8) {
	if (collision_point(mouse_x, mouse_y, id, true, false)) {
	image_blend = c_gray;
	}
	else {
	image_blend = c_white;
	}
}
else {
	instance_deactivate_object(obj_window_resolution)
	obj_window_resolution_main.click_w = 0
}













