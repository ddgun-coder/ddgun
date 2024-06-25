x = mouse_x;
y = mouse_y;
if (instance_exists(shop_UI) and mouse_x > stats_button.x and mouse_x < stats_button.x + 320 and mouse_y > stats_button.y and mouse_y < stats_button.y + 84 * MAX_HEIGHT) {
if (hat_button_main.windows == 6) {
	visible = true;
			    switch(floor((mouse_y - stats_button.y) / 84) + stats_button.height) {
				case 0:
					name = "이계의 토끼";
					explain = "- ' 타격시 아이템 쿨타임 감소 + 15 % '\n- ' 타격시 GI 회복 + 25 % '";
					type = " [ 패시브 ] "
					skill = " ' 아이템이 추가로 2칸 증가합니다. '"
					story = "그녀는 세계 곳곳에서 아주 잠깐씩 나타났으며\n마구 커지거나 작아지기도 하며\n사람들을 막 쳐 때린다고 한다. "
				break;
				case 1:
					name = "안다미로 날뜀 쐐기";
					explain = "\n- ' 추가 마나재생 초당 [ 0.6 ] '\n- ' 아이템 칸 + 1 '";
					type = " [ 패시브 ] "
					skill = "' 4초 이내 피해를 주거나 받지 않으면 \n공격 성공 시 1.8초간\n [ 화염 버프 ]를  받습니다.'"
					story = " 먼 옛날, 많은 유물들이 금광산 아래에 묻혔었다.\n그리고 현재, 이 유물이 세상에 드러난다. "
				break;
				case 2:
					name = "겁  쟁  이";
					explain = "- ' 최대 스테미나 + 80 '\n- ' 스테미너 회복량 + 100% '";
					type = " [ 액티브 ] [ G ] "
					skill = "' 이동속도가 35% 증가하고\n주변적에게 도트데미지를 줍니다. '"
					story = " 우진조가 일으킨 대지진에 오줌을 지리고\n허겁지겁 토낀 뒤 쪽팔려서 자취를 감추었다. "
				break;
				case 3:
					name = "대  현  자";
					explain = "- ' 최대 마나 최대치 + 50 '\n- ' 타격시 MP 회복 + 30% '";
					type = " [ 액티브 ] [ G ] "
					skill = "' 현재 시전중인 스킬을 취소하고\n마나 15을 획득합니다. '"
					story =" 마술사학회를 스스로 그만 두고\n독학으로 마법을 익힌 것으로도 유명하다. "
				break;
				case 4:
					name = "폭  군";
					explain = "- '  피격시 아이템 쿨타임 감소 30% '\n- ' 흡혈 + 28% '";
					type = " [ 패시브 ] "
					skill = "' 자신이나 팀이 적을 1명 죽일때마다 \n20 HP를 회복합니다. '"
					story ="대괴수인 외눈의 우사비는 통일한 직 후\n지상세계를 정복 하고자 하는 야망을 품었다."
				break;
				case 5:
					name = "검 삭 신 왕";
					explain = "[ 희열 ] - 기절 2.5 초 \n [ 광기 ] - 일시적인 방향 뒤틀 \n[ 분노 ] -  크기 + 30%";
					type = " [ 액티브 ] [ G ] "
					skill = "3개의 효과 중 하나를 선택해 \n다음과 같은 효과를 얻습니다. '"
					story ="그는 자신 스스로를 검삭신왕이라 불렀으나\n 마계인들은 쓰레기중의 쓰레기라 칭했다."
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
		time = 0
		explain = "";
	}