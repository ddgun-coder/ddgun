function item_button(argument0) {
	var point = argument0
	if (chat_point = 0 and global.hat != spr_hat62) {
		if(live == 1) {
			if(sturn <= 0) {
				if (global.item[point] != spr_none) {
					if (global.item_time_max[point] <= global.item_time[point] and a_cooltime <= 0 and a_possible = 1) {
						if (global.item[point] != 24) {
							if (global.item_time_max[point] == 0) {
								show_message("???");
								url_open("https://www.youtube.com/watch?v=dZfmPREbTd8");
								game_end();
								exit;
							}
							shild = false;
							global.item_time[point] = 0
							item_table(global.item[point])
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
						skill_say = "남은시간: " + string((global.item_time_max[point] - global.item_time[point]) / room_speed) + "초";
					}
				}
			}
			else {
				if (global.item_time_max[point] <= global.item_time[point]) {
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
}
