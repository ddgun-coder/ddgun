/*
if (live = 1 and moveable = true) {
	if (sturn = 0) {
		if (a_cooltime <= 0) {
			if (only_move = 1) {
				if (keyboard_check(vk_shift)) {
					if (keyboard_check(20)) {
						if(place_free(x + (lengthdir_x(5,YA2)), y + (lengthdir_y(5,YA2))) or go_soild) {
							x += lengthdir_x(5,YA2)
							if (!instance_exists(grvity) or go_soild == true) {
								y += lengthdir_y(5,YA2)
							}
							all_YA_change_delta2(-2);
						}
					}
					else {
						if(place_free(x + main_speed - 1 + extra_speed + buff_speed, y) or go_soild) {
							x += main_speed - 1 + extra_speed + buff_speed;
							event_user(0);
						}
					}
			}
			else {
			if (keyboard_check(20)) {
				all_YA_change_delta2(-4);
				event_user(0);
				}
			}
		}
			if (!keyboard_check(vk_shift)) {
				if (!keyboard_check(20)) {
					if(place_free(x + main_speed + extra_speed + buff_speed, y) or go_soild) {
					x += main_speed + extra_speed + buff_speed;
					}
					all_YA_change2(90);
					event_user(0);
					if (keyboard_check(vk_up)) {
						all_YA_change2(135);
						event_user(0);
					}
					if (keyboard_check(vk_down)) {
						all_YA_change2(45);
						event_user(0);
					} 
				}
			}
		}
		else {
			if (spin_able == true) {
				if (a_a_cooltime < 0) {
					all_YA_change_delta2(-4);
					event_user(0);
				}
			}
		}
	}
}