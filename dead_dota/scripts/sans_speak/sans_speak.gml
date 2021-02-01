function sans_speak() {
	var first_str = string_char_at(global.chat, 0)
	switch(first_str) {
			case "&":
				var dlete = string_delete(global.chat, 1, 1);
				with(testing) {
					switch(dlete) {
					case "1":
						normal_play(twiza_2_act);
					break;
					case "2":
						normal_play(ane_2_act);
					break;
					case "3":
						normal_play(pwiza_2_act);
					break;
					case "4":
						normal_play(apple_1_act);
					break;
					case "5":
						normal_play(gili_1_act);
					break;
					case "6":
						normal_play(fwiza_1_act);
					break;
					case "7":
						normal_play(shep_1_act);
					break;
					case "8":
						normal_play(nuke_2_act);
					break;
					case "9":
						normal_play(he_4_act);
					break;
					default:
						normal_play(p_1_act);
					break;
					}
					server78_create_instace(sans_skill41 , x, y - 100);
				}
			break;
			
			default :
			a_cooltime = 10;
			chat4 = "&1 = 초록법사2차, &2 = 앤2차, &3 = 불법사2차";
			chat3 = "&4 = 사과1차, &5 = 전기1차, &6 = 마녀1차";
			chat2 = "&7 = 양아치1차, &8 = 원자력2차, &9 = 추모4차";
			chat1 = "사용할 마법이 설정되지 않았다!"
			break;
	}


}
