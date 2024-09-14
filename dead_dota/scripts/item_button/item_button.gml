function item_button(argument0) {
	var point = argument0
	if (chat_point = 0 and buff_index != buff_noitem and arm_type != "ouch") {
		if(live == 1) {
			if(sturn <= 0) {
				if (global.item[point] != spr_none) {
					var struct = shop_button1.item[global.item[point]];
					if (struct.max_time <= global.item_time[point] and a_cooltime <= 0 and a_possible and item_time < 0) {
						if (global.item[point] != 24) {
							if (struct.max_time == 0) {
								show_message("???");
								url_open("https://www.youtube.com/watch?v=dZfmPREbTd8");
								game_end();
								exit;
							}
							shild = false;
							testing.item_time = 2
							global.item_time[point] = 0
							item_table(global.item[point]);
							first_item_play = true;
							if (global.item_cnacle[point] == true) {
								for (var i = 0; i < MAX_ITME_BOX; i++) {
									global.item_time[i] = 0;
								}
								global.item[point] = spr_none;
							}
						}
					}
					else {
						skill_say_time = 30;
						skill_say = "남은시간: " + string((struct.max_time - global.item_time[point]) / game_get_speed(gamespeed_fps)) + "초";
					}
				}
			}
			else {
				if (global.item[point] != spr_none) {
					var struct = shop_button1.item[global.item[point]];
					if (struct.max_time <= global.item_time[point]) {
						switch(global.item[point]) {
							case 24:
								arm_type = "attack";
								global.item_time[point] = 0;
								normal_play(cry_1_act);
							break;
							case 49:
								arm_type = "attack";
								global.item_time[point] = 0;
								normal_play(gili_3_act);
							break;
						}
					}
				}
			}
		}
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
}