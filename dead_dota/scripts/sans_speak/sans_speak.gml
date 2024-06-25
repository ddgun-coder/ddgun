function sans_speak() {
	var first_str = string_char_at(global.chat, 0)
	switch(first_str) {
			case "&":
				var dlete = string_delete(global.chat, 1, 1);
				with(testing) {
					switch(sans_type) {
					case "1":
						normal_play(twiza_2_act);
					break;
					case "2":
						normal_play(ane_2_act);
					break;
					case "3":	
						normal_play(p_1_act);
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
						normal_play(die_3_act);
					break;
					default:
						normal_play(p_1_act);
					break;
					}
					server78_create_instace(sans_skill41 , x, y - 100);
				}
			break;
			
			default :
			prt_val_add(Val.gi, 50);
			a_cooltime = 10;
			chat4 = "&1 = 초록법사 Q, &2 = 앤 Q, &3 = 펭귄 D";
			chat3 = "&4 = 사과 D, &5 = 전기D, &6 = 마녀 D";
			chat2 = "&7 = 양아치 D, &8 = 원자력Q, &9 = 척살 w";
			chat1 = "사용할 마법이 설정되지 않았다!"
			break;
	}


}
function aring_speak() {
	a_cooltime = 10;
	     chat1 = "당신의 평타 '(A스킬)' 가(이)  [ 쌍도끼 ] 로 강화 되었다."
}
function sea_speak() {
	a_cooltime = 10;
	     chat1 = "당신의 평타 '(A스킬)' 가(이)  [ 칼질 ] 로 강화 되었다."
}