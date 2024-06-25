y = ystart + camera_get_view_y(view_camera[0]) + 10
x = xstart + camera_get_view_x(view_camera[0]);
if (serve.kazino_where1 != serve.kazino_where2) {
	var tile = string(serve.kazino_where1) + ", "+ string(serve.kazino_where2);
}
else {
	var tile = "모든 "
}
draw_self();
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_halign(fa_left);
if (serve.kazino_time > 0) {
	switch(serve.kazino_what) {
		case 0:
			what_say = tile+ "타일 경험치 당첨! (" + string(serve.kazino_amount * 300) + "경험치)";
		break;
		case 1:
			switch(serve.kazino_amount) {
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
				case 7:
					what_say = tile+ "타일 동전 주움 (+" + string(serve.kazino_amount * 1200) + "원)";
				break;
				case 8:
				case 9:
				case 10:
				case 11:
				case 12:
				case 13:
				case 14:
				case 15:
				case 16:
					what_say = tile+ "타일 지갑 주움 (+" + string(serve.kazino_amount * 1200) + "원)";
				break;
				case 17:
				case 18:
				case 19:
				case 20:
					what_say = tile+ "타일 로또 당첨 (+" + string(serve.kazino_amount * 1200) + "원)";
				break;
			}
		break;
		case 2:
			what_say = tile+ "타일 존나 쳐맞기 당첨! (-" + string(serve.kazino_amount * 30) + "HP)";
		break;
		case 3:
			switch(serve.kazino_amount) {
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
				case 7:
					what_say = tile+ "타일 지갑에 구멍뚫림 (-" + string(serve.kazino_amount * 1200) + "원)";
				break;
				case 8:
				case 9:
				case 10:
				case 11:
				case 12:
				case 13:
				case 14:
				case 15:
				case 16:
					what_say = tile+ "타일 싱하형에게 삥뜯김 (-" + string(serve.kazino_amount * 1200) + "원)";
				break;
				case 17:
				case 18:
				case 19:
				case 20:
					what_say = tile+ "타일 패가망신 당첨 (-" + string(serve.kazino_amount * 1200) + "원)";
				break;
			}
		break;
		case 4:
			what_say = tile+ "타일 크리퍼 당첨!";
		break;
		case 5:
			what_say = tile+ "타일 스머프";
		break;
		case 6:
			what_say = tile+ "타일 HP100 MP0";
		break;
		case 7:
			what_say = tile+ "타일 신상모자랜덤";
		break;
		case 8:
			what_say = tile+ "타일 황금날개";
		break;
		case 9:
			what_say = tile+ "타일 침을 삼킴";
		break;
		case 10:
			what_say = tile+ "타일 33% 확률로5차 당첨";
		break;
		case 11:
			what_say = tile+ "타일 HP10 기600";
		break;
		case 12:
			what_say = tile+ "타일 사실 플루톤";
		break;
		case 13:
			what_say = tile+ "타일 메테오 주의보";
		break;
		case 14:
			what_say = tile+ "타일 역병 확진자";
		break;
		case 15:
			what_say = tile+ "타일 뚜렛";
		break;
		default:
			what_say = "꽝! 다음 기회에..." + string(serve.kazino_what);
		break;
	}
}
else {
	what_say = "카지노 추첨중..." + string(time_maybe / 40) + "초 남음";
}

draw_text_ext_transformed(x, y, what_say, 300, 1000, 5, 5, 0);