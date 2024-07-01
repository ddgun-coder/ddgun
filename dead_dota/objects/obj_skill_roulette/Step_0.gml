/// @description Insert description here
// You can write your code in this editor
if (food_displaying > 0) {
	food_time--;
	if (food_time <= 0) {
		food_time = 20;
		food_displaying--;
		repeat(100) {
			var r = irandom_range(1, 28);
			if (r != 23 and r != 25) break;
		}	
		server51_fish_xy(asset_get_index("obj_food" + string(r)), 100, x + lengthdir_x(64, image_angle), y + lengthdir_y(64, image_angle));
		image_angle += 90;
		server202_sound(snd_vending_machine);
	}
}

if (arrow_rain) {
	if (arrow_rain_time > 0) {
		arrow_rain_time--;
		image_blend = c_yellow;
	}
	else {
		arrow_rain = false;	
		coin_inseted = false;
		image_blend = c_white;
	}
	image_angle += 20;
	if (arrow_rain_time mod 10 == 0) {
		for (var i = 1; i < 5; ++i) {
			var a = instance_create_depth(x,y, 0, hunt_skill1)
			a.YA = image_angle - 20 * i;
			a.cid_id = cid_id
			a.team = team
			a.cid = cid;
		}
		audio_play_sound(hunt_1_sound,1,false);
	}
}

if (rolling_left_right) {
	if (rolling_left_right_time > 0) {
		rolling_left_right_time--;
		image_blend = c_red;
	}
	else {
		rolling_left_right = false;	
		coin_inseted = false;
		image_blend = c_white;
	}
	
	if (place_free(x + direct * 20, y)) {
		x += direct * 20;
		image_angle += direct * 20;
	}
	else {
		direct *= -1;
	}
}
var spin_max = 60;
if (rolling) {
	rolling_time++;
	if (roll_down == false) {
		channel = ac.channels[2];
		ac_time = min(ac_time + 1, spin_max);
		if (rolling_time > 200) {
			roll_down = true;
		}
	}
	else {
		channel = ac.channels[3];
		ac_time = max(ac_time - 1, 0);
		if (ac_time == 0) {
			rolling = false;
			show_debug_message(image_angle);
			if (0 <= image_angle and image_angle <= 90) {
				audio_play_sound(snd_roulette_fail, 0 , 0);
				coin_inseted = false;
			}
			else if (image_angle <= 270) {
				rolling_left_right = true;
				rolling_left_right_time = 200;
				direct = 1;
			}
			else if (image_angle <= 315) {
				arrow_rain = true;
				arrow_rain_time = 100;
			}
			else if (image_angle <= 354.7) {
				food_displaying = 2;
				food_time = 4;
				coin_inseted = false;
			}
			else {
				if (cid_id == global.my_cid) {
					with (testing) {
						random_level5();
						server202_sound(snd_level5_up);
					}
				}
				coin_inseted = false;
			}	
		}
	}
	var curve_val = animcurve_channel_evaluate(channel, ac_time / spin_max);
	image_angle += curve_val * result;
	if (image_angle >= 360) image_angle -= 360;
}
if (cid_id == global.my_cid_id and coin_inseted == false) {
	if (distance_to_object(testing) < 150) {	
		with (testing) {
			if (prt_val_get(0) >= 3000) {
				mine_say = "F키를 눌러서 돌리기 3000원.";
				mine_say_time = 2;
				if (keyboard_check_pressed(global.keyf)) {
					other.coin_inseted = true;
					prt_val_add(0, -3000);
					server79_create_instace_ext(obj_roulette_control, x, y, random_range(100, 1000));
				}
			}
			else {
				mine_say = "3000원 부터 룰렛 돌리기 가능.";
				mine_say_time = 2;
			}
		}
	}
}