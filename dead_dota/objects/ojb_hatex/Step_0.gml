x = mouse_x;
y = mouse_y;
if (hat_button_main.windows == 1) {
	if (mouse_x > x - 32 and mouse_x < x + 64 * 15 - 32) {
		if (mouse_y > y - 32 and mouse_y < y + 64 * 5 - 32) {
			visible = true;
			var w = floor((mouse_x + 32 - hat_button.x) / 64);
			var h = floor((mouse_y + 32 - hat_button.y) / 64);
			switch(w + h * 15) {
				case 0:
					name = "옐로우 캡";
					explain = "원거리 + 근거리공격\n으로 특화된 모자";
				break;
				case 1:
					name = "검투사";
					explain = "강한 근거리공격과\n 방어로 특화된 모자";
				break;
				case 2:
					name = "간호사";
					explain = "아군을 치유하고\n살리는데 특화된 모자";
				break;
				case 3:
					name = "뿔모자";
					explain = "속공으로 적군을 때려\n잡는데 특화된 모자";
				break;
				case 4:
					name = "위저드";
					explain = "길고 강력한 원거리\n공격이 특화된 모자";
				break;
				case 5:
					name = "펭귄모자";
					explain = "적군에게 안보이는\n은신공격이 특화된 모자";
				break;
				case 6:
					name = "풍신대머리";
					explain = "나 혹은 상대의 위치를\n 바꾸며 공격하는 모자";
				break;
				case 7:
					name = "8:2가르마(거인)";
					explain = "자신을 크게 만들어서\n 공격하는 모자";
				break;
				case 8:
					name = "빨강머리앤";
					explain = "적군을 가둬서\n 공격하는 모자";
				break;
				case 9:
					name = "사냥꾼";
					explain = "짧고 긴 사거리로\n 공격하는 모자";
				break;
				case 10:
					name = "마그마 관리인";
					explain = "숨어서 우리팀과 적군\n에게 큰공격하는 모자";
				break;
				case 11:
					name = "시골양아치";
					explain = "좋은 기동성으로\n적군을 화나게 만드는 모자";
				break;
				case 12:
					name = "300원짜리 소세지";
					explain = "팀원과 적군을 길막\n하는데 특화된 모자";
				break;
				case 13:
					name = "진동모자";
					explain = "큰 범위 공격과\n긴 스턴시간이 특화된 모자";
				break;
				case 14:
					name = "풋사과";
					explain = "팀원 뒤에서\n공격을 하는데 특화된 모자";
				break;
				case 15:
					name = "날개모자";
					explain = "무적 버프로 아군을\n보호하고 성장하는데 특화된 모자";
				break;
				case 16:
					name = "뇌신 싸이코";
					explain = "팀원을 도와주고 적군을\n 방해하는데 특화된 모자";
				break;
				case 17:
					name = "군인모자";
					explain = "중거리 딜러로\n 거리유지가 중요한 모자";
				break;
				case 18:
					name = "꽁지무사";
					explain = "강한 근거리공격으로\n적군을 잡는데 특화된 모자";
				break;
				case 19:
					name = "워터메이지";
					explain = "적군 이속저하와 작은\n 범위로 공격하는 모자";
				break;
				case 20:
					name = "척살모";
					explain = "강한 기본공격과\n버프해제가 특화된 모자";
				break;
				case 21:
					name = "팬텀후드";
					explain = "은신 공격으로\n암살하는데 특화된 모자";
				break;
				case 22:
					name = "단발머리";
					explain = "높은 생존력과\n누군가의 팀을 바꿀수 있는 모자";
				break;
				case 23:
					name = "태극두건";
					explain = "적군 이속저하와 큰\n 범위로 공격하는 모자";
				break;
				case 24:
					name = "광대모자";
					explain = "무작위 스킬을 사용하는 모자";
				break;
				case 25:
					name = "두리번 고자";
					explain = "고자의 저주로\n 상대를 괴롭히는 모자";
				break;
				case 26:
					name = "으잌모";
					explain = "상대를 기절시키고\n 아이템 위주의 공격인 모자";
				break;
				case 27:
					name = "마인크래프트모";
					explain = "상대를 가두고 마지막엔\n 원하는 맵으로 바꾸는 모자";
				break;
				case 28:
					name = "레비모자";
					explain = "빠른 기동성과\n강력한 근거리 공격을 하는 모자";
				break;
				case 29:
					name = "초급마녀";
					explain = "아군을 도와주고 \n적군의 마나를 줄이는 모자";
				break;
				case 30:
					name = "로봇";
					explain = "레벨이 오를수록 커지며\n아이템 위주의 공격이 특징인 모자";
				break;
				case 31:
					name = "용사를 꿈꾸는 소년";
					explain = "기존 스킬을 \n 폭 넓게 사용할수 있는모자";
				break;
				case 32:
					name = "아링";
					explain = "스킬로 평타를 바꾸고\n 상대를 썰어버리는 모자";
				break;
				case 33:
					name = "법관";
					explain = "강한 원거리공격으로\n적군을 잡는데 특화된 모자";
				break;
				case 34:
					name = "다크템플러";
					explain = "높은 기동성과\n 원거리공격으로 공격하는 모자";
				break;
				case 35:
					name = "비닐유령";
					explain = "많은 패시브로\n상대를 짜증나게 만드는 모자";
				break;
				case 36:
					name = "인공지능파리";
					explain = "독공격과 빠른 기동성으로\n 공격하는 모자";
				break;
				case 37:
					name = "사이다";
					explain = "많은 버프 스킬로\n아군을 서포팅하는 모자";
				break;
				case 38:
					name = "격투가";
					explain = "적은 마나스킬로\n 상대에게 짤짤이 넣는 모자";
				break;
				case 39:
					name = "아기코끼리";
					explain = "상대를 기절시키고\n 기절된적을 또 공격하는 모자";
				break;
				case 40:
					name = "똥모";
					explain = "적은 마나로 강한원거리\n 공격을 하지만 어려운모자";
				break;
				case 41:
					name = "서부의 총잡이";
					explain = "적은 마나로 적당한원거리\n 공격을 하지만 어려운모자";
				break;
				case 42:
					name = "창병";
					explain = "적당한원거리로 공격하는 모자";
				break;
				case 43:
					name = "화염법사";
					explain = "원거리 마법으로 상대에게\n 약하지만 지속적인 공격을 넣는 모자";
				break;
				case 44:
					name = "무녀";
					explain = "원거리 힐마법으로 \n아군을 치료하는 모자";
				break;
				case 45:
					name = "밴디트";
					explain = "빠른 기동력과 공격속도,\n은신이 특징인 모자";
				break;
				case 46:
					name = "벽돌모";
					explain = "많은 마나와 기로 \n 강력한 스킬을 사용하는 모자";
				break;
				case 47:
					name = "마교신도";
					explain = "원거리 스킬과\n 폭넓은 스킬이 가능한 모자";
				break;
				case 48:
					name = "원자력회사직원";
					explain = "강한 공격스킬이지만 \n사용하기 어려운 모자";
				break;
				case 49:
					name = "시보이";
					explain = "강한 공격스킬이지만 \n사용하기 어려운 모자";
				break;
				case 50:
					name = "감자";
					explain = "근접 공격과 원거리 공격으로 \n 대미지를 주는 모자";
				break;
				case 51:
					name = "짬뽕";
					explain = "모든 자원을 사용해서 \n 큰 대미지를 주는 모자";
				break;
				case 52:
					name = "추모";
					explain = "숨어있는 상대를 \n 우리팀 쪽으로 끌어오는 모자";
				break;
				case 53:
					name = "트롤모";
					explain = "함정을 설치해서 \n 우리팀 적팀 모두 괴롭히는 모자";
				break;
				case 54:
					name = "콜라모";
					explain = "많은 디버프 스킬로\n아군을 서포팅하는 모자";
				break;
				case 55:
					name = "티모";
					explain = "적팀 우리팀 모두 \n 끌어오는 모자";
				break;
				case 56:
					name = "마론모";
					explain = "원거리 딜러";
				break;
				case 57:
					name = "인민모";
					explain = "먼거리에서 공격하며 \n 강한대미지를 주는 모자";
				break;
				case 58:
					name = "시계모";
					explain = "적군과 아군에게 버프를 주어 \n 대미지를 주는 어려운 모자";
				break;
				case 59:
					name = "감시자모";
					explain = "게임 외적인 요소를 바꾸어 \n 괴롭히는 모자";
				break;
				default:
					name = "???";
					explain = "투비컨티뉴";
				break;
			}
		}
	}
}
else {
	visible = false;
	name = "";
	explain = "";
}