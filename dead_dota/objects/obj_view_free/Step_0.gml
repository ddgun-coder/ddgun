if (keyboard_check(global.up)) {
		y -= 7
	}
	if (keyboard_check(global.down)) {
		y += 7
	}
	if (keyboard_check(global.left)) {
		x -= 7
	}
	if (keyboard_check(global.right)) {
		x += 7
	}	
	
	if (ready = 1) {
		if (keyboard_check_released(global.keyw)) {
			camera_set_view_target(view_camera[0], testing.id);	
			instance_destroy();
		}
	}


if (testing.sturn > 0) {
	camera_set_view_target(view_camera[0], testing.id);	
	instance_destroy();
}
	