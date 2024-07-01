if (room == room_main) {
	global.online = 0;
	network_destroy(global.client);
	instance_destroy()
}

prt_val_add(0, floor(get_money));
get_money = 0;
if (room == room_kazino and kazino_get == true) {
	kazino_get = false;
	
}
if (global.online == true) {
	online--;
}
kazino_time--;
last_time--;
if (online < 0 and connecting == false) {
	show_message_async("랜뽑이거나 핑이 너무높음");
	network_destroy(global.client);
	global.online = 0;
	room_goto(room_out);
    exit;
}

if (OK > 2) {
	show_message_async("스피드 핵 감지");
    network_destroy(global.client);
	global.online = 0;
	room_goto(room_out);
    exit;
}
if (OK2 > 2) {
	show_message_async("스피드 핵 감지2");
    network_destroy(global.client);
	global.online = 0;
	room_goto(room_out);
    exit;
}

if (kazino_time == 0) {
	testing.moveable = true;
	testing.a_possible = true;
}
if (instance_exists(testing)) {
	if (room == room_kazino) {
		if (kazino_time > 0) {
			with(testing) {
				testing.moveable = false;
				testing.effect_index = effect_gag;
				testing.arm_type = "ouch"
				testing.a_possible = false;
				temp_YA = YA;
				testing.hp = m_hp;
			}
		}
		else {
			testing.moveable = true;
			if (testing.effect_index == effect_gag) {
				testing.effect_index = spr_none;
			}
		}
	}

	if (team_score[0] > team_score[1]) {
		if (global.team == 1) {
			testing.aexp += (team_score[0] - team_score[1]) * 0.015;
		}
	}
	else {
		if (global.team == 0) {
			testing.aexp += (team_score[1] - team_score[0]) * 0.015;
		}
	}
}//핸디
if (instance_exists(testing)) {
	if (last_time > 0) {
		if (!audio_is_playing(time_to_say_good_bye)) {
			audio_stop_all();
            audio_play_sound(time_to_say_good_bye,9,false);	
            audio_play_sound(time_to_say_good_bye,9,false);	
            audio_play_sound(time_to_say_good_bye,9,false);	
		}
		if (game_end_lose) {
			with(testing) {
				testing.moveable = false;
				testing.effect_index = effect_gag;
				testing.undying = false
				testing.arm_type = "ouch"
				testing.a_possible = false;
				temp_YA = YA;
				testing.hp = m_hp;
			}
		}
	}
	else {
		if (last_time == 0) {
			if (global.BGM) {
				audio_stop_all();
				BMG_play();
			}
			if (game_end_lose) {
				with (testing) {
					hp -= 999;
				}
			}
		}
	}	
}
for (var i = 0; i < 24; i++) {
	cid_time[i]--;
}