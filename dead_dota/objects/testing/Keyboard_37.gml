/*
if (live = 1 and moveable = true) {
	if (sturn = 0) {
		if (a_cooltime <= 0) {
			if (only_move = 1) {
				if (keyboard_check(vk_shift)) {
					if (keyboard_check(20)) {
						if(place_free(x + (lengthdir_x(5,YA2 - 180)), y + (lengthdir_y(5,YA2 - 180))) or go_soild) {
							x += lengthdir_x(5,YA2 - 180)
							if (!instance_exists(grvity) or go_soild == true) {
								y += lengthdir_y(5,YA2 - 180)
							}
							all_YA_change_delta2(2);
						}
					}
					else {
						if(place_free(x - (main_speed - 1 + extra_speed + buff_speed), y) or go_soild) {
							x -= main_speed - 1 + extra_speed + buff_speed;
						}
					}
				}//쉬프트
				else {
					if (keyboard_check(20)) {
						all_YA_change_delta2(4);
						event_user(0);
						}//탭 (쉬프트 X)
					}
			}
		if (!keyboard_check(vk_shift)) {
			 if (!keyboard_check(20)) {
				 if(place_free(x - (main_speed + extra_speed + buff_speed), y) or go_soild) {
					 x -= main_speed + extra_speed + buff_speed;			
				 }
				 all_YA_change2(270);
				 event_user(0);
			 	 // 탭x 쉬프트x
				 if (keyboard_check(vk_up)) {
					 all_YA_change2(310);
					 event_user(0);
				 }
				 if (keyboard_check(vk_down)) {
					all_YA_change2(225);
					event_user(0);
					}
				}	
			}
		}
		else {
			if (spin_able == true) {
				if (a_a_cooltime < 0) {
					all_YA_change_delta2(4);
					event_user(0);
				}
			}
		}
	}
}