x = mouse_x;
y = mouse_y;
if (instance_exists(shop_UI) and mouse_x > skin_button.x - 32 and mouse_x < skin_button.x + 78 * 5 - 32 and mouse_y > skin_button.y - 32 and mouse_y < skin_button.y + 78 + 32) {
if (hat_button_main.windows == 5) {
	visible = true;
	if (mouse_x > x - 32 and mouse_x < x + 78 * 5 - 32) {
		if (mouse_y > y - 32 and mouse_y < y + 78* 2 - 32) {
			var w = floor((mouse_x + 32 - skin_button.x) / 64);
			var h = floor((mouse_y + 32 - skin_button.y) / 64);
				if (global.hat = spr_hat1) {
                switch(w + h * 2) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈"
				break;
				case 1:
					name = "DD총의 옐로우 캡 ";
					explain = "";
					made = "DD총"
				break;
				case 2:
				    name = "옐로우 캡 2.0 ";
					explain = "";
					made = "SIM"
				break;
				}
				}//옐캡스킨
				
				if (global.hat = spr_hat14) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 검투사 ";
					explain = "";
					made = "DD총"
				break;
				case 2:
				    name = "제국의 검투사 ";
					explain = "";
					made = "SIM"
				break;
				case 3:
				    name = "빛의 추종자 검투사 ";
					explain = "";
					made = "SIM"
				break;
				}
				}//검투사스킨
				
				if (global.hat = spr_hat15) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 의사 ";
					explain = "";
					made = "DD총"
				break;
				case 2:
				    name = "블랙핑크 의사 ";
					explain = "";
					made = "오베론"
				break;
				}
				}//의사스킨
				
				if (global.hat = spr_hat27) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 돌진";
					explain = "";
					made = "DD총"
				break;
				case 2:
				    name = "신년의 흰소 돌진 ";
					explain = "- ' 2021 설 기념 스킨 '-";
					made = "SIM"
				break;
				case 3:
				    name = "돌진 바키잉 ";
					explain = "";
					made = "시민"
				break;
				}
				}//돌진스킨
				
				if (global.hat = spr_hat12) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 마법사";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "성야의 마법사";
					explain =  "- ' 2023 크리스마스 기념 스킨 '-";
					made = "엔듈"
				break;
				}
				}//법사스킨
				
				if (global.hat = spr_hat10) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 펭귄";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "펭귄 - 흑수정";
					explain = "";
					made = "시민"
				break;
				case 3:
					name = "알비노 펭귄";
					explain = "알빠노?";
					made = "김계란"
				break;
				}
				}//펭귄스킨
				
				if (global.hat = spr_hat19) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈"
				break;
				case 1:
					name = "바람법사 풍신대머리";
					explain = "";
					made = "엔듈"
				break;
				}
				}//풍신스킨
				
				if (global.hat = spr_hat7) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 거인";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "행성 거인";
					explain = "";
					made = "시민"
				break;
				}
				}//거인스킨
				
				if (global.hat = spr_hat29) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 앤";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "악의 앤";
					explain = "";
					made = "오베론"
				break;
				case 3:
					name = "이매망량 앤";
					explain = "";
					made = "SIM"
				break;
				}
				}//앤스킨
				
				if (global.hat = spr_hat3) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 사냥꾼";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "팝 아케이드 사냥꾼";
					explain = "";
					made = "SIM"
				break;
				case 3:
					name = "불타는 서부 사냥꾼";
					explain = "";
					made = "SIM"
				break;
				}
				}//사냥꾼스킨
				
				if (global.hat = spr_hat8) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "딥웹 관리인";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "신년의 폭죽 마그마 관리인";
					explain = "- ' 2021 설 기념 스킨 '-";
					made = "SIM / 오베론"
				break;
				case 3:
					name = "화학 관리인";
					explain = "";
					made = "시민"
				break;
				}
				}//핵스킨
				
				if (global.hat = spr_hat16) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 양아치";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "날다람쥐 양아치";
					explain = "";
					made = "오베론"
				break;
				}
				}//양아치스킨
				
				if (global.hat = spr_hat6) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 소세지";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "영웅의 검 소세지";
					explain = "";
					made = "SIM"
				break;
				}
				}//소세지스킨
				
				if (global.hat = spr_hat4) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 진동";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "프랑켄슈타인 진동";
					explain = "- ' 2023 할로윈 기념 스킨 ' -";
					made = "SIM"
				break;
				}
				}//진동스킨
				
				if (global.hat = spr_hat13) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 사과";
					explain = "";
					made = "DD총"
				break;
				}
				}//사과스킨
				
				if (global.hat = spr_hat23) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 날개";
					explain = "";
					made = "DD총"
				break;
				}
				}//날개스킨
				
				if (global.hat = spr_hat24) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 전기";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "CCTV 전기";
					explain = "";
					made = "SIM"
				break;
				}
				}//전기스킨
				
				if (global.hat = spr_hat26) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 군인";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "스타키래프트 군인";
					explain = "";
					made = "시민"
				break;
				case 3:
					name = "해상구조대 군인";
					explain = "";
					made = "SIM"
				break;
				}
				}//군인스킨
				
				if (global.hat = spr_hat2) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 무사";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "중갑무사";
					explain = "";
					made = "시민"
				break;
				case 3:
					name = "사이버 펑크 무사";
					explain = "";
					made = "엔듈 "
				break;
				case 4:
					name = "밤까마귀 무사";
					explain = "";
					made = "SIM"
				break;
				case 5:
					name = "불타는 서부 무사";
					explain = "";
					made = "SIM"
				break;
				}
				}//무사스킨
				
				if (global.hat = spr_hat11) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 워터메이지";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "오로라 워터메이지";
					explain = "";
					made = "시민"
				break;
				case 3:
					name = "워터메이지 2.0";
					explain = "";
					made = " SIM "
				break;
				}
				}//워터메이지스킨
				
				if (global.hat = spr_hat17) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 야차";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "사이버 펑크 야차";
					explain = "";
					made = "시민"
				break;
				case 3:
					name = "오케스트라 야차";
					explain = "";
					made = "SIM"
				break;
				case 4:
					name = "설원의 동장군 야차";
					explain = "";
					made = "오베론"
				break;
				}
				}//야차스킨
				
				if (global.hat = spr_hat20) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 사신";
					explain = "";
					made = "DD총"
				break;
				}
				}//거인스킨
				
				if (global.hat = spr_hat28) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "단발머리 소녀 - 반전";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "단발머리 소녀 - 사파이어";
					explain = "";
					made = "SIM"
				break;
				case 3:
					name = "단발머리 소녀 - 흑수정";
					explain = "";
					made = "SIM"
				break;
				case 4:
					name = "단발머리 소녀 - 에메랄드";
					explain = "";
					made = "SIM"
				break;
				case 5:
					name = "호박머리 소녀";
					explain = "";
					made = "엔듈"
				break;
				}
				}//소녀스킨
				
				if (global.hat = spr_hat18) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 태극";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "인터넷 시대의 태극";
					explain = "";
					made = "시민"
				break;
				}
				}//태극스킨
				
				if (global.hat = spr_hat9) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "DD총의 광대";
					explain = "";
					made = "DD총"
				break;
				case 2:
					name = "성야의 광대";
					explain = "- ' 2021 크리스마스 기념 스킨 ' -";
					made = "SIM"
				break;
				case 3:
					name = "Rookie Clown";
					explain = "";
					made = "김계란"	
				break;
				}
				}//랜덤스킨
				
				if (global.hat = spr_hat5) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "연설하는 심영";
					explain = "-' 님은 바로 사회주의 낙원을 말하는것입니다 '-";
					made = "DD총"
				break;
				case 2:
					name = "김두한";
					explain = "-' 병신을 만들어주겠다 '-";
					made = "SIM"
				break;
				}
				}//고자스킨
				
				if (global.hat = spr_hat25) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//으잌스킨
				
				if (global.hat = spr_hat31) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//마크스킨
				
				if (global.hat = spr_hat39) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "잰즈가면 레비";
					explain = "- ' 감탄사 참기 LV99 '-";
					made = "SIM"
				break;
				case 2:
					name = "정공 레비";
					explain = "- ' 면 공 던 -'";
					made = "Bluestar"
				break;
				}
				}//레비스킨
				
				if (global.hat = spr_hat30) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "밤까마귀 마녀";
					explain = "";
					made = "SIM"
				break;
				}
				}//마녀스킨
				
				if (global.hat = spr_hat21) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "인공지능 로봇";
					explain = "";
					made = "시민 "
				break;
				}
				}//시민스킨
				
				if (global.hat = spr_hat32) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//용사스킨
				
				if (global.hat = spr_hat22) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "달콤가득 아링";
					explain = "";
					made = "오베론"
				break;
				case 2:
					name = "밤까마귀 아링";
					explain = "";
					made = "SIM"
				break;
				}
				}//아링스킨
				
				if (global.hat = spr_hat33) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "스윗 법관";
					explain = "성격은 스윗하지만, 법 앞에서는 모두에게 평등합니다.";
					made = "김계한 "
				break;
				}
				}//법관스킨
				
				if (global.hat = spr_hat36) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "사이버 펑크 다크템플러";
					explain = "";
					made = "SIM"
				break;
				}
				}//닼템스킨
				
				if (global.hat = spr_hat37) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "호박 머리 유령";
					explain = "-' 2020 할로윈 기념 스킨 '-";
					made = "SIM"
				break;
				}
				}//유령스킨
				
				if (global.hat = spr_hat34) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "HolyKDJ의 펫 "
				break;
				}
				}//사이다스킨
				
				if (global.hat = spr_hat38) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//파리스킨
				
				if (global.hat = spr_hat40) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "격투가 2.0";
					explain = "";
					made = "SIM"
				break;
				}
				}//격투가스킨
				
				if (global.hat = spr_hat35) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//코끼리 스킨
				
				if (global.hat = spr_hat41) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "황금 똥";
					explain = "";
					made = "오베론"
				break;
				case 2:
					name = "똥 조심해!";
					explain = "";
					made = "SIM"
				break;
				case 3:
					name = "이모티콘 똥";
					explain = "";
					made = "딜도타"
				break;
				}
				}//똥스킨
				
				if (global.hat = spr_hat42) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "마피아 서부";
					explain = "";
					made = "DD총"
				break;
				}
				}//서부스킨
				
				if (global.hat = spr_hat43) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "군도의 창병";
					explain = "";
					made = "오베론"
				break;
				}
				}//창병스킨
				
				if (global.hat = spr_hat44) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//불법스킨
				
				if (global.hat = spr_hat45) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "백설무녀";
					explain = "";
					made = "오베론"
				break;
				case 2:
				}
				}//무녀스킨
				
				if (global.hat = spr_hat46) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "작은 악마 밴디트";
					explain = "";
					made = "SIM"
				break;
				case 2:
					name = "무녀 밴디트";
					explain = "";
					made = "오베론"
				break;
				}
				}//밴디트스킨
				
				if (global.hat = spr_hat47) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "토이월드 골렘 ";
					explain = "";
					made = "오베론"
				break;
				}
				}//골렘스킨
				
				if (global.hat = spr_hat48) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//해골스킨
				
				if (global.hat = spr_hat49) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//원자력스킨
				
				if (global.hat = spr_hat50) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "HolyKDJ의 펫 / 엔듈 "
				break;
				}
				}//시보이스킨
				
				if (global.hat = spr_hat51) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "우주 감자";
					explain = "";
					made = "오베론"
				break;
				}
				}//감자 스킨
				
				if (global.hat = spr_hat52) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "오싹오싹 짬뽕";
					explain = "-' 2020 할로윈 기념 스킨 '-";
					made = "오베론"
				break;
				}
				}//짬뽕스킨
				
				if (global.hat = spr_hat53) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "DD총 / 엔듈 "
				break;
				case 1:
					name = "씹좆와치 로드흐그";
					explain = "";
					made = "Bluestar"
				break;
				}
				}//징스킨
				
				if (global.hat = spr_hat54) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				}
				}//트롤 스킨
				
				if (global.hat = spr_hat55) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "HolyKDJ의 펫 / 엔듈 "
				break;
				case 1:
					name = "끔찍한 콜라";
					explain = "-' 할로윈 스킨 아님 '-";
					made = "chada"
				break;
				}
				}//콜라 스킨
				
				if (global.hat = spr_hat56) {
	                switch(w + h * 1) {
					case 0:
						name = "기본 스킨";
						explain = "";
						made = "엔듈"
					break;
					case 1:
						name = "수영장 파티 티";
						explain = "";
						made = " 오베론  "
					break;
					case 2:
						name = "카지노 티";
						explain = "";
						made = " SIM  "
					break;
					case 3:
						name = "명문대생 티";
						explain = "";
						made = " 김계란  "
					break;
					}
				}//티 스킨 
				
				if (global.hat = spr_hat57) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "케른블러드후프 "
				break;
				case 1:
					name = "눈사람 마론 ";
					explain = "";
					made = "SIM"
				break;
				case 2:
					name = "모래마녀 마론";
					explain = "";
					made = "엔듈"
				break;
				}
				}//마론 스킨
				
				if (global.hat = spr_hat58) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "시민 / 엔듈 "
				break;
				case 1:
					name = "인민 독일군";
					explain = "";
					made = "시민"
				break;
				}
				}//인민군 스킨
				
				if (global.hat = spr_hat59) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "오베론 / HolyKDJ의 펫 "
				break;
				}
				}//시계 스킨
				
				if (global.hat = spr_hat60) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "반물질마스터 / 엔듈 "
				break;
				}
				}//감시자 스킨
				
				if (global.hat = spr_hat61) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "HolyKDJ의 펫 "
				break;
				case 1:
					name = "사막 약탈자 닌자";
					explain = "";
					made = "SIM"
				break;
				case 2:
					name = "파워레인저 닌자";
					explain = "";
					made = "오베론"
				break;
				case 3:
					name = "사이버 닌자";
					explain = "";
					made = "의현"
				break;
				}
				}//닌자스킨
				
				if (global.hat = spr_hat62) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "벚꽃나무 새싹";
					explain = "";
					made = "SIM"
				break;
				}
				}//초보스킨
				
				if (global.hat = spr_hat63) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "며루치 / 엔듈 "
				break;
				case 1:
					name = "불타는 서부 투사";
					explain = "";
					made = "SIM"
				break;
				}
				}//투사스킨
				
				if (global.hat = spr_hat64) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "SIM / 엔듈 "
				break;
				case 1:
					name = "저승사자 상투무인";
					explain = "";
					made = "SIM"
				break;
				case 2:
					name = "퇴마사 상투무인";
					explain = "";
					made = "SIM"
				break;
				}
				}//상투무인스킨
				
				if (global.hat = spr_hat65) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "HolyKDJ의 펫 "
				break;
				case 1:
					name = "메카 수리";
					explain = "";
					made = "오베론 "
				break;
				}
				}//수리스킨
				
				if (global.hat = spr_hat66) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "EX / 엔듈 "
				break;
				case 1:
					name = "선사시대 잼민";
					explain = "";
					made = "오베론"
				break;
				case 2:
					name = "주황모자 잼민";
					explain = "-' 한화의 김성근 감독님 사랑해요 '-";
					made = "시민"
				break;
				}
				}//야구스킨
				
				
				if (global.hat = spr_hat67) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈"
				break;
				case 1:
					name = "성야의 요리사";
					explain = "-' 2020 크리스마스 기념 스킨 '-";
					made = "SIM"
				break;
				}
				}//요리사스킨
				
				
				if (global.hat = spr_hat68) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "반물질마스터 / 엔듈 "
				break;
				}
				}//음악스킨
				
				
				if (global.hat = spr_hat69) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "Bluestar / 엔듈 "
				break;
				case 1:
					name = "인형극의 거장 드루이드";
					explain = "";
					made = "SIM"
				break;
				}
				}//드루이드스킨
				
				
				if (global.hat = spr_hat70) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈 "
				break;
				case 1:
					name = "빛의 추종자 뱀파이어";
					explain = "";
					made = "SIM"
				break;
				case 2:
					name = "깔끔 뱀파이어";
					explain = "dd총 왈 : 저는 기본이 좋습니다";
					made = "엔듈"
				break;
				}
				}//뱀파이어스킨
				
				
				if (global.hat = spr_hat71) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "딜도타 "
				break;
				case 1:
					name = "에스키모 총사";
					explain = "";
					made = "SIM"
				break;
				}
				}//총사스킨
				
				
				if (global.hat = spr_hat72) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "SIM"	
				break;
				}
				}//루돌프스킨
				
				
				if (global.hat = spr_hat73) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "SIM"
				break;
				case 1:
					name = "검은 토끼 도둑";
					explain = "";
					made = "우진"
				break;
				}
				}//도둑스킨
				
				
				if (global.hat = spr_hat74) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "딜도타"
				break;
				}
				}//스키스킨
				
				if (global.hat = spr_hat75) {
                switch(w + h * 1) {
				case 0:
					name = "기본 스킨";
					explain = "";
					made = "엔듈"
				break;
				case 1:
					name = "끼여밍 슬라임";
					explain = "";
					made = "우진"
				break;
				}
				}//슬라임스킨
			}
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