x = mouse_x;
y = mouse_y;
if (instance_exists(shop_UI) and point_in_rectangle(mouse_x, mouse_y, hat_button.x - 40, hat_button.y - 40, hat_button.x + 80 * hat_button.weight - 40, hat_button.y + 80 * 4 + 40)) {
	if (hat_button_main.windows == 1) {
            var w = floor((mouse_x + 40 - hat_button.x) / 80);
            var h = floor((mouse_y + 40 - hat_button.y) / 80);
            var index = w + (h  + hat_button.my_layer) * hat_button.weight;
                if (index >= hat_button.size) {
					visible = false;   
					exit;   
                }
                else {
					 visible = true;
                }
            switch(hat_button.real_index[index] - 1) {
			case 0:
				name = "옐로우캡 [ 균 형 ]";
				explain = "다양한 방법으로 공격 가능한\n밸런스형 모자";
				skill = "난이도 ■ ■"
			break;
			case 1:
				name = "검투사 [ 균 형 ]";
				explain = "강한 근거리공격과\n 방어로 특화된 모자";
				skill = "난이도 ■ ■"
			break;
			case 2:
				name = "간호사 [ 보 조 ]";
				explain = "아군을 치유하고\n살리는데 특화된 모자";
				skill ="난이도 ■ "
			break;
			case 3:
				name = "뿔모자 [ 일 격 / 속 공 ]";
				explain = "속공으로 적군을 때려\n잡는데 특화된 모자";
				skill = "난이도 ■ ■"
			break;
			case 4:
				name = "위저드 [ 일 격 ]";
				explain = "강력한 범위 원거리\n공격이 특화된 모자";
				skill = "난이도 ■ ■ "
			break;
			case 5:
				name = "펭귄모자 [ 방 해 ]";
				explain = "은신으로 적진영을 흔들고\n적 진영 다이브에 특화된 모자";
				skill = "난이도 ■ ■ ■ "
			break;
			case 6:
				name = "풍신대머리 [ 방 해 / 속 공 ]";
				explain = "나 혹은 상대의 위치를\n바꾸며 공격하며 방해하는 모자";
				skill = "난이도 ■"
			break;
			case 7:
				name = "8:2가르마(거인)[ 전 략  / 균 형 ]";
				explain = "자신을 크게 만들어서\n공격하는 모자";
				skill = "난이도 ■ ■ "
			break;
			case 8:
				name = "빨강머리앤 [ 연 격 / 속 공 ]";
				explain = "적군을 가두거나\n공격하는데 특화된 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 9:
				name = "사냥꾼 [ 일 격 / 전 략 ]";
				explain = "긴 사거리로 적을 공격하고\n 저격으로 적을 암살 하는 모자";
				skill = "난이도 ■ ■ ■ ■ ■"
			break;
			case 10:
				name = "마그마 관리인 [ 전 략 / 일 격 ]";
				explain = "범위공격을 시전해 강력한 \n한방 공격을하는 모자";
				skill = "난이도 ■ ■"
			break;
			case 11:
				name = "시골양아치 [ 속 공 / 연 격 ]";
				explain = "미친 기동성으로\n적군을 화나게 만드는 모자";
				skill = "난이도 ■ ■"
			break;
			case 12:
				name = "300원짜리 소세지[ 방 해 / 보 조 ]";
				explain = "적군의 이동을\n방해 하는데 특화된 모자";
				skill = "난이도 ■ ■ ■ ■"
			case 13:
				name = "진동모자 [ 방 해 ]";
				explain = "큰 범위와 긴 스턴시간을 이용한\n공격이 특화된 모자";
				skill = "난이도 ■ "
			break;
			case 14:
				name = "풋사과 [ 전 략 ]";
				explain = "적의 주요인물을\n죽이는데 특화된 모자";
				skill = "난이도 ■ "
			break;
			case 15:
				name = "날개 [ 보 조 ]";
				explain = "무적 버프로 아군을 보호하고\n아군의 성장을 도와주는 모자";
				skill = "난이도 ■"
			break;
			case 16:
				name = "뇌신 싸이코 [ 균 형 / 보 조 ]";
				explain = "팀원을 도와주고 적군을\n 방해하는데 특화된 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 17:
				name = "군인 [ 연 격 / 일 격 ]";
				explain = "중거리 딜러로\n거리유지가 중요한 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 18:
				name = "꽁지무사 [ 일 격 ]";
				explain = "강한 근거리공격으로\n적군을 잡는데 특화된 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 19:
				name = "워터메이지 [ 연 격 / 방 해 ]";
				explain = "적군 이속저하와 중거리\n범위로 공격하는 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 20:
				name = "척살 [ 연 격 / 속 공 ]";
				explain = "강한 기본공격과\n버프해제가 특화된 모자";
				skill = "난이도 ■ ■ ■ ■ "
			break;
			case 21:
				name = "팬텀후드 [ 일 격 / 전 략 ]";
				explain = "은신 공격으로\n암살하는데 특화된 모자";
				skill = "난이도 ■"
			break;
			case 22:
				name = "단발머리 [ 전 략 ]";
				explain = "높은 생존력으로 적팀을\n자기 팀으로 바꿔 게임을 역전시키는 모자";
				skill = "난이도 ■"
			break;
			case 23:
				name = "태극두건[ 방 해 / 보 조 ]";
				explain = "큰 범위로 적의 이동속도를 \n 저하시키는데 특화된 모자";
				skill = "난이도 ■"
			break;
			case 24:
				name = "광대모자 [ ? ]";
				explain = "무작위 스킬을 사용하는 모자";
				skill = "난이도 ■ ■"
			break;
			case 25:
				name = "두리번 고자 [ 방 해 ]";
				explain = "자폭과 부활을 이용해\n 상대를 방해하는 모자";
				skill = "난이도 ■ ■"
			break;
			case 26:
				name = "으잌 [ 전 략 ]";
				explain = "쿨감을 이용한 아이템사용이 \n특징인 범용성 높은 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 27:
				name = "머인크래프트 [ 균 형 ]";
				explain = "상대를 가두고 마지막엔\n 원하는 맵으로 바꾸는 모자";
				skill = "난이도 ■ ■"
			break;
			case 28:
				name = "레비 [ 일 격 / 속 공 ]";
				explain = "빠른 기동성과\n강력한 극딜 공격을 하는 모자";
				skill =  "난이도 ■ ■"
			break;
			case 29:
				name = "초급마녀 [ 방 해 / 보 조 ]";
				explain = "아군을 도와주고 \n적군의 마나를 빼앗아 방해하는 모자";
			skill = "난이도 ■ "
			break;
			case 30:
				name = "로봇 [ 전 략 / 균 형 ]";
				explain = "레벨이 오를수록 커지며\n아이템 위주의 공격이 특징인 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 31:
				name = "용사를 꿈꾸는 소년 [ 균 형 ]";
				explain = "기존 스킬을\n 폭 넓게 사용할수 있는모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 32:
				name = "아링 [ 일 격 / 속 공 ]";
				explain = "피해를 입을수록 강해지는 모자 ";
				skill = "난이도 ■ ■ ■"
			break;
			case 33:
				name = "법관 [ 일 격 / 전 략 ]";
				explain = "강한 범위 원거리 공격으로\n적군을 잡는데 특화된 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 34:
				name = "다크템플러 [ 일 격 / 속 공 ]";
				explain = "높은 기동성과\n 원거리공격으로 암살하는 모자";
				skill = "난이도 ■ ■ ■ ■ ■"
			break;
			case 35:
				name = "비닐유령 [ 방 해 / 전 략 ]";
				explain = "많은 패시브와 기동성으로\n상대를 짜증나게 만드는 모자";
				skill = "난이도 ■ ■ "
			break;
			case 36:
				name = "인공지능파리 [ 방 해 / 속 공 ]";
				explain = "독공격과 힐벤 ,빠른 기동성으로\n 적군을 방해하는 모자";
				skill = "난이도 ■ ■ "
			break;
			case 37:
				name = "사이다 [ 보 조 ]";
				explain = "많은 버프 스킬로\n아군을 서포팅하는 모자";
				skill = "난이도 ■ "
			break;
			case 38:
				name = "격투가 [ 연 격 / 속 공 ]";
				explain = "적은 마나스킬로\n 상대에게 근거리 짤짤이 넣는 모자";
				skill = "난이도 ■ ■ ■ ■"
			break;
			case 39:
				name = "아기코끼리 [ 균 형 ]";
				explain = "상대를 기절시키고\n 기절된적을 또 공격하는 모자";
				skill = "난이도 ■ ■"
			break;
			case 40:
				name = "똥 [ 연 격 / 방 해 ]";
				explain = "적은 마나로 강한 원거리 공격을 하고\n다양한 스킬을 활용하는 모자";
				skill =  " 난이도 ■ ■ ■ ■ "
			break;
			case 41:
				name = "서부의 총잡이 [ 일 격 ]";
				explain = "적은 마나로 중,원거리\n극딜 공격을 갖춘 모자";
				skill = " 난이도 ■ ■ ■ ■ ■ "
			break;
			case 42:
				name = "창 [ 일 격 / 속 공 ]";
				explain = "좁은 원거리로 강력한\n공격을하는 모자";
				skill = " 난이도 ■ ■ ■ ■ "
			break;
			case 43:
				name = "화염법사 [ 균 형 ]";
				explain = "원거리 마법으로 상대에게\n약하지만 지속적인 공격을 넣는 모자";
				skill = " 난이도 ■ ■ "
			break;
			case 44:
				name = "무녀 [ 보 조 ]";
				explain = "원거리 힐로\n아군을 치료하는 모자";
				skill = "난이도 ■ ■ "
			break;
			case 45:
				name = "밴디트 [ 일 격 / 속 공 ]";
				explain = " 빠른 기동력과 은신으로\n체력이 적은 적을 암살하는 모자";
				skill = "난이도 ■ ■  "
			break;
			case 46:
				name = "벽돌 [ 일 격 / 방 해 ]";
				explain = "많은 마나와 기로 \n강력한 스킬을 사용하는 모자";
				skill = "난이도 ■ ■ ■  "
			break;
			case 47:
				name = "마교신도 [ 균 형 ]";
				explain = "원거리 스킬과\n폭넓은 스킬이 가능한 모자";
				skill = "난이도 ■ ■ "
			break;
			case 48:
				name = "원자력회사직원 [ 일 격 ]";
				explain = "강력한 극딜 과 \n다양한 스킬로 범용성이 높은모자";
				skill = "난이도 ■ ■  "
			break;
			case 49:
				name = "시보이 [ 일 격 ]";
				explain = "적을 기습하여 폭발적인 데미지를 주는 모자";
				skill = "난이도 ■ ■ ■  "
			break;
			case 50:
				name = "감자 [ 연 격 / 속 공 ]";
				explain = "빠른기동성과 근거리 공격 으로\n대미지를 주는 모자";
				skill = "난이도 ■  "
			break;
			case 51:
				name = "짬뽕 [ 일 격 / 보 조 ]";
				explain = "공/수 밸런스의 조화를 이용해\n 아군을 서포팅하는 모자";
				skill = "난이도 ■  "
			break;
			case 52:
				name = "추 [ 보 조 / 방 해 ]";
				explain = "상대의 버프를 해제하거나 상대를 \n우리팀 쪽으로 끌어오는 모자";
				skill = "난이도 ■  "
			break;
			case 53:
				name = "트롤 [ 방 해 /보 조 ]";
				explain = "함정을 설치해서 \n우리팀 적팀 모두 괴롭히는 모자";
				skill = "난이도 ■  "
			break;
			case 54:
				name = "콜라 [ 방 해 ]";
				explain = "많은 디버프 스킬로\n 적을 공격하는 모자";
				skill =  "난이도 ■ "
			break;
			case 55:
				name = "티 [ 방 해 ]";
				explain = "원거리 모자들을 방해하고 \n끌어오는 모자";
				skill =  "난이도 ■ "
			break;
			case 56:
				name = "마론 [ 균 형 / 보 조 ]";
				explain = "﻿지속적인 전투에서 \n아군을 보호하는데 특화된 탱커형모자 ";
				skill =  "난이도 ■ ■ "
			break;
			case 57:
				name = "인민군 [ 전 략 / 연 격 ]";
				explain = "구역을 점령하는데 특화된 모자";
				skill =  "난이도 ■ ■ "
			break;
			case 58:
				name = "시계 [ 전 략 / 보 조 ]";
				explain = "폭발적인 쿨타임 감소로\n 여러가지 전략이 가능한 모자";
				skill =  "난이도 ■ ■ ■ ■ ■ "
			break;
			case 59:
				name = "감시자 [ 방 해 / 전 략 ]";
				explain = "게임 외적인 요소를 바꾸어 \n괴롭히는 모자";
				skill = "난이도 ■ ■ ■ "
			break;
			case 60:
				name = "닌자 [ 연 격 ]";
				explain = "자신이 지정한 목표를 암살하는것에 특화된 모자";
				skill = "난이도 ■ ■ ■ ■ "
			break;
			case 61:
				name = "새싹 [ 연격 / 일격 ]";
				explain = "생존과 공격이 적절하게 되어있는 원거리 모자";
				skill = "난이도 ■ "
			break;
			case 62:
				name = "투사 [ 일 격 / 속 공 ]";
				explain = "난전에 뛰어난 성능을 보이는 모자";
				skill = "난이도 ■ ■ "
			break;
			case 63:
				name = "상투무인 [ 연 격 / 속 공 ]";
				explain = "근 / 원 거리의 역할을 동시에 활용하여 \n적을 제압하는 모자";
				skill = "난이도 ■ ■ ■ ■ "
			break
			case 64:
				name = "수리 [ 보 조 / 방 해 ]";
				explain = "아군 진영 방어 가 특화된 모자";
				skill = "난이도 ■ ■"
			break;
			case 65:
				name = "야구 [ 일 격 ]";
				explain = "사거리가 긴 원거리공격으로 \n적을 암살하는데 특화된 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 66:
				name = "요리사 [ 보 조 ]";
				explain = "오브젝트를 이용하여 아군을\n치료하고 성장시키는데 특화된 모자";
				skill = "난이도 ■"
			break;
			case 67:
				name = "음악 [ 연 격 ]";
				explain = "﻿광범위한 공격을 지속적으로 퍼붓는 모자";
				skill = "난이도 ■ ■ ■ ■ ■"
			break;
			case 68:
				name = "드루이드 [ 연 격 / 방 해 ]";
				explain = "소환수들을 이용하여 적을 공격하고\n 견제하는데 특화된 모자";
				skill = "난이도 ■ ■ ■ "
			break;
			case 69:
				name = "모기 [ 연 격 / 전 략 ]";
				explain = "자신의 Hp를 이용해 공격하며\n하이리스크 하이리턴에 특화된 모자";
				skill = "난이도 ■ ■ ■ ■"
			break;
			case 70:
				name = "총사 [ 연 격 / 속 공 ]";
				explain = "﻿뛰어난 유틸로 적의 공격에 \n반격하는데 특화된 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 71:
				name = "산타 [ 일 격 / 전 략 ]";
				explain = "적절한 거리를 유지하며 \n적에게 강력한 한방을 주는 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 72:
				name = "도둑 [ 일 격 / 속 공 ]";
				explain = "적의 성장을 억제하며 적을 암살하는 모자";
				skill = "난이도 ■ ■ ■"
			break;
			case 73:
				name = "스키 [ 속 공 / 방 해 ]";
				explain = "빠른 속도로 적의 이동경로를\n봉쇄하는데 탁월한 모자";
				skill = "난이도 ■ ■ ■ "
			break;
			case 74:
				name = "슬라임 [ 균 형 / 전 략 ]";
				explain = "선공을 했을때 강력한 위력을 발휘하는 모자";
				skill = "난이도 ■ ■ ■"
			break;
			default:
				name = "???";
				explain = "투비컨티뉴";
			break;
		}
	}
	else {
		visible = false;	
	}
}
else {
	visible = false;
	name = "";
	explain = "";
}
if (instance_exists(shop_UI) and hat_button_main.windows == 1) {
	 if (point_in_rectangle(mouse_x, mouse_y, hat_button.x + 285, hat_button.y - 201, hat_button.x + 330, hat_button.y - 169)) {
		name = "무작위";
		explain = "게임 시작시 무작위 모자가 된다.";
		skill = "난이도 ?"
		visible = true;
	}
}	
