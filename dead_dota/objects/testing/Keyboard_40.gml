/*
if (live = 1 and moveable = true) {
	if (sturn = 0) {
		if (a_cooltime <= 0) {
			if (only_move = 1) {
				if (keyboard_check(vk_shift)) {
					if (!keyboard_check(20)) {
						if(place_free(x, y + main_speed - 1 + extra_speed + buff_speed) or go_soild) {
						y += main_speed - 1 + extra_speed + buff_speed;
						event_user(0);
						}
					}
				}
				if (keyboard_check(20)) {
					if (keyboard_check(vk_shift)) {
						if(place_free(x - lengthdir_x(2,YA2-90), y - lengthdir_y(2,YA2-90)) or go_soild) {
							x -= lengthdir_x(2,YA2-90);
							y -= lengthdir_y(2,YA2-90);
							event_user(0);
						}
					}
					else {
						var cap_speed = main_speed + 2 + extra_speed + buff_speed + (ride * 7);
						if(place_free(x - lengthdir_x(cap_speed,YA2-90), y - lengthdir_y(cap_speed,YA2-90)) or go_soild) {
							x -= lengthdir_x(cap_speed,YA2-90);
							y -= lengthdir_y(cap_speed,YA2-90);
							event_user(0);
						}
					}
				}
			}
			if (!keyboard_check(vk_shift)) {
				if (!keyboard_check(20)) {
					if(place_free(x, y + main_speed + extra_speed + buff_speed) or go_soild) {
						y += main_speed + extra_speed + buff_speed;
					}
					all_YA_change2(0);
					event_user(0);
					if (keyboard_check(vk_left)) {
						all_YA_change2(315);
						event_user(0);
					}
					if (keyboard_check(vk_right)) {
						all_YA_change2(45);
						event_user(0);
					}
				}
			}
		}
	}
}