/*
if (live = 1 and moveable = true) {
	if (sturn = 0) {
		if (a_cooltime <= 0) {
			if (only_move = 1) {
				if (keyboard_check(vk_shift)) {
					if (!keyboard_check(20)) {
						if(place_free(x, y - (main_speed - 1 + extra_speed + buff_speed)) or go_soild) {
							if (!instance_exists(grvity)) {
								y -= main_speed - 1 + extra_speed + buff_speed;
							}
							event_user(0);
						}
					}
				}
				if (keyboard_check(20)) {
					if (keyboard_check(vk_shift)) {
						if(place_free(x + lengthdir_x(2,YA2-90), y + lengthdir_y(2,YA2-90)) or go_soild) {
							x += lengthdir_x(2,YA2-90);
							if (!instance_exists(grvity)) {
								y += lengthdir_y(2,YA2-90);
							}
							event_user(0);
							}
						}
					else {
						var cap_speed = main_speed + 2 + extra_speed + buff_speed + (ride * 7);
						if(place_free(x + lengthdir_x(cap_speed + 20,YA2-90), y + lengthdir_y(cap_speed + 20,YA2-90)) or go_soild) {
							x += lengthdir_x(cap_speed,YA2-90);
							if (!instance_exists(grvity) or go_soild == true) {
								y += lengthdir_y(cap_speed,YA2-90);
							}
							event_user(0);
							}
						}
				}
			}
			if (!keyboard_check(vk_shift)) {
				if (!keyboard_check(20)) {
					if(place_free(x, y - (main_speed + extra_speed + buff_speed)) or go_soild) {
						if (!instance_exists(grvity) or go_soild == true) {
							y -= main_speed + extra_speed + buff_speed;
						}
					}
						all_YA_change2(180);
						event_user(0);
					if (keyboard_check(vk_left)) {
						all_YA_change2(225);
						event_user(0);
					}
					if (keyboard_check(vk_right)) {
						all_YA_change2(135);
						event_user(0);
					} 
				}
			}
		}
	}	
}