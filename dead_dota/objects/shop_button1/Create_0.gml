image_speed = 0;
my_layer = 0;
draw_set_font(font1);
server_size = 5;
server_array = array_create(server_size, -1);
item_array = [];
array_size = 0;
surf_y = 0

enum item_type {
	defence = 1,
	attack = 2,
	utility = 3
}

function found_index(spr, spr_ind) {
	var n = array_length(item);
	for (var i = 0; i < n; i++) {
		if (item[i].sprite == spr and item[i].sprite_ind = spr_ind) {
			return i;
		}
	}
	return -1;
}

for(var j = 0; j < 59; j++) {
	var num = j;
	item[num] = {
		sprite : noone, //보여줄 스프라이트
		sprite_ind : 0, //해당 스프라이트의 프레임 번호
		name: "", //아이템의 이름
		price : 6000, // 아이템의 가격
		max_time : 40 * 95, //아이템 시간 
		cancle : false, //해당 아이템이 1회용이면 true, 아니면 false
		what : item_type.attack, // 해당 아이템의 종류 enum item_type확인
		expl : "", //아이템 설명
		ban : false, //해당 아이템이 서버에서 밴을 했는가?
		server : false, //해당 아이템은 서버에서 정해준 아이템인가?
		index : j, //각 아이템을 나타낼 고유한 ID값
	}
	switch (num) {
		case 0:
			item[num].sprite = spr_book;
			item[num].what = item_type.utility
			item[num].name = "'[ 노트 ]'"
			item[num].expl = "가만히 공부를해서 경험치를 얻는다.\n 맞으면 풀리니 조심하자."
		break;
		case 1:
			item[num].sprite = spr_book;
			item[num].sprite_ind = 1;
			item[num].price = 5000;
			item[num].max_time = 40 * 135;
			item[num].what = item_type.defence;
			item[num].name = "[ 체력 포션 ]"
			item[num].expl = "체력을 회복한다. 이동속도가 느려진다.\n맞으면 풀리니 조심하자.";
		break;
		case 2:
			item[num].sprite = spr_book;
			item[num].sprite_ind = 2;
			item[num].price = 5000;
			item[num].max_time = 5000;
			item[num].what = 1;
			item[num].name = "[ 마나 포션 ]'"
			item[num].expl = "마나를 회복한다. 이동속도가 느려진다.\n맞으면 풀리니 조심하자.";
		break;
		case 3:
			item[num].sprite = spr_book;
			item[num].sprite_ind = 3;
			item[num].price = 1500;
			item[num].max_time = 400;
			item[num].what = 3;
			item[num].name = "[ 망원경 ]"
			item[num].expl = "멀리서 무언가 볼수있다. 이동속도가 느려진다.\n맞으면 풀리니 조심하자.";
		break;
		case 4:
			item[num].sprite = spr_hat39;
			item[num].price = 2000;
			item[num].max_time = 40 * 60;
			item[num].name = "[ 레비검 ]"
			item[num].expl = "양손에 검을 들고 돌진합니다.\n[ 13 DMG ]";
		break;
		case 5://BIG_GUY
			item[num].sprite = spr_hat7;
			item[num].price = 5500;
			item[num].max_time = 40 * 113;
			item[num].what = 3;
			item[num].name = "[ 거대화 ]"
			item[num].expl = "10초동안 크기가 커진다.\n 피격시 크기가 정상으로 돌아온다.";
		break;
		case 6:
			item[num].sprite = spr_hat9;
			item[num].price = 2500;
			item[num].max_time = 40 * 30;
			item[num].name = "[ 광대 ]"
			item[num].expl = "무작위 1차스킬을 사용한다.";
		break;
		case 7:
			item[num].sprite = spr_hat9;
			item[num].sprite_ind = 1;
			item[num].price = 3500;
			item[num].max_time = 40 * 40;
			item[num].name = "[ 마술사 ]"
			item[num].expl = "무작위 2차스킬을 사용한다.";
		break;
		case 8:
			item[num].sprite = spr_hat9;
			item[num].sprite_ind = 2;
			item[num].price = 4500;
			item[num].max_time = 2800;
			item[num].name = "[ 주사위 ]"
			item[num].expl = "무작위 3차스킬을 사용한다.";
		break;
		case 9:
			item[num].sprite = spr_hat11;
			item[num].sprite_ind = 1;
			item[num].price = 5500;
			item[num].max_time = 40 * 70;
			item[num].name = "[ 얼음 ]"
			item[num].expl = "얼음을 날려 공격한다.\n 맞은적은 느려진다.\n[ 10 ~ 25 DMG ] ";
		break;
		case 10://P_1
			item[num].sprite = spr_hat10;
			item[num].price = 2500;
			item[num].max_time = 40 * 75;
			item[num].what = 3;
			item[num].name = "[ 은신 ]"
			item[num].expl = "주변을 공격한 후 10초간 은신상태가 된다.\n타격 혹은 피격시 잠시 보이게된다.\n[ 15 DMG ]";
		break;
		case 11:
			item[num].sprite = spr_hat14;
			item[num].sprite_ind = 1;
			item[num].price = 2500;
			item[num].max_time = 40 * 70;
			item[num].what = 1;
			item[num].name = "[ 방패 ]"
			item[num].expl = "방패를 들어서 1번 방어를한다.\n막았다면 막은 데미지를 전부 체력으로 전환한다.";
		break;
		case 12:
			item[num].sprite = spr_hat12;
			item[num].price = 5500;
			item[num].max_time = 6000;
			item[num].name = "[ 메테오 ]"
			item[num].expl = "긴 사거리로 강한 범위 공격을 한다.\n3번의 차징이 필요하며 a키로 날리면 된다.";
		break;
		case 13:
			item[num].sprite = spr_hat12;
			item[num].sprite_ind = 1;
			item[num].price = 7000;
			item[num].max_time = 7000;
			item[num].name = "[ 슬레이브 ]"
			item[num].expl = "더 긴 사거리로 더 강한 범위 공격을 한다.\n3번의 차징이 필요하며 a키로 날리면 된다.";
		break;
		case 14:
			item[num].sprite = spr_hat13;
			item[num].sprite_ind = 1;
			item[num].price = 5000;
			item[num].max_time = 40 * 140;
			item[num].what = 1;
			item[num].name = "[ 사과나무 ]"
			item[num].expl = "10초 동안 사과나무로 회복한다.\n 사용중에 스킬사용이 가능하다.";
		break;
		case 15://JUMP
			item[num].sprite = spr_hat16;
			item[num].sprite_ind = 0;
			item[num].price = 2000;
			item[num].max_time = 40 * 32;
			item[num].name = "[ 점프 ]"
			item[num].expl = "점프를 사용하여 공격한다.\n중간에 있는 벽을 넘을수도 있다.\n[ 13 DMG ]";
		break;
		case 16:
			item[num].sprite = spr_hat49;
			item[num].price = 3000;
			item[num].max_time = 40 * 30;
			item[num].name = "[ 독 ]"
			item[num].expl = "대상의 모든 버프를 무시하고\n' 독 디버프 '를 부여한다. ";
		break;
		case 17:
			item[num].sprite = spr_book;
			item[num].sprite_ind = 4;
			item[num].price = 3000;
			item[num].max_time = 40 * 55;
			item[num].what = 1;
			item[num].name = "[ 안테나 ]"
			item[num].expl = "마나를 30회복하고 은신한 적을 보여준다.\n단 모자 ' 펭귄 '은 보이지않는다.";
		break;
		case 18://ik1
			item[num].sprite = spr_hat25;
			item[num].price = 2500;
			item[num].max_time = 2100;
			item[num].name = "[ 물고문 ]"
			item[num].expl = "가까운 거리로 적에게 피해를 준다.\n 기절하고있는 적에게도 가능하다.\n [ 초당 20 DMG ]";
		break;
		case 19:
			item[num].sprite = spr_hat20;
			item[num].price = 3000;
			item[num].max_time = 2720;
			item[num].name = "[ 암살 ]"
			item[num].expl = "가만히 숨어있다가 낫질로 공격한다.\n사용후 3초후 낫질이 가능하다.\n[ 70 DMG ]";
		break;
		case 20://GUN1
			item[num].sprite = spr_hat26;
			item[num].price = 2500;
			item[num].max_time = 40 * 46;
			item[num].name = "[ 소총 ]"
			item[num].expl = "일정 범위를 중거리로 공격한다.\n 기절시간이 짧다.\n[ 11 DMG ] ";
		break;
		case 21:
			item[num].sprite = spr_hat26;
			item[num].sprite_ind = 1;
			item[num].price = 4000;
			item[num].max_time = 20;
			item[num].what = 1;
			item[num].name = "[ 응급처치 ]"
			item[num].expl = "적은 범위로 아군과 자신을 치유한다.\n피격시 치료가 중단된다. ";
		break;
		case 22:
			item[num].sprite = spr_hat16;
			item[num].sprite_ind = 3;
			item[num].price = 4000;
			item[num].max_time = 40 * 25
			item[num].name = "[ 개발길질 ]"
			item[num].expl = "발로 마구 짓밟아서 비참하게 죽인다.\n기절당한 적에게도 가능하다.\n [ 5 DMG ]";
		break;
		case 23:
			item[num].sprite = spr_hat10;
			item[num].sprite_ind = 1;
			item[num].price = 3000;
			item[num].max_time = 40 * 105;
			item[num].what = 1;
			item[num].name = "[ 물고기버프 ]"
			item[num].expl = "아군과 자신에게 물버프를 걸어준다.\n 물버프는 스테미너가 빨리차고 체력이 회복된다.";
		break;
		case 24:
			item[num].sprite = spr_hat28;
			item[num].sprite_ind = 0;
			item[num].price = 6000;
			item[num].max_time = 5000;//cry
			item[num].what = 1;
			item[num].name = "[ 울기 ]"
			item[num].expl = "기절상태일 때만 사용가능\n 기절상태가 끝나기 전까지 체력회복을 한다.";
		break;
		case 25://TELE1
			item[num].sprite = spr_hat31;
			item[num].sprite_ind = 0;
			item[num].price = 4000;
			item[num].max_time = 40 * 77;
			item[num].name = "[ 머인크래프트 ]"
			item[num].expl = "' 머인크래프트 '넓은 범위로 적을 가두고 데미지를준다.\n이후 무적을 부여한다.\n[ 36 DMG ]";
		break;
		case 26:
			item[num].sprite = spr_hat25;
			item[num].sprite_ind = 2;
			item[num].price = 2000;
			item[num].max_time = 1000;
			item[num].name = "[ 정전기 ]"
			item[num].expl = "자신의 앞의 지정된 범위를 공격한다.\n 맞은 플레이어는 일정시간동안 무작위로 움직인다.\n[ 10 DMG ]";
		break;
		case 27:
			item[num].sprite = spr_hat24;
			item[num].sprite_ind = 0;
			item[num].price = 8000;
			item[num].max_time = 40 * 69;
			item[num].name = "[ 전기 ]"
			item[num].expl = "' 전기 '\n\n자신을 기준으로 원형범위로 공격한다.\n 맞은 플레이어는 일정시간동안 무작위로 움직인다.\n[ 20 DMG ]";
		break;
		case 28:
			item[num].sprite = spr_hat8;
			item[num].sprite_ind = 0;
			item[num].price = 1500;
			item[num].max_time = 40 * 38;
			item[num].name = "[ 땅굴파기 ]"
			item[num].expl = "잠깐은 시전준비 후 앞으로 순간이동해\n주변 적에게 피해를 준다.\n[ 25 DMG ]";
		break;
		case 29:
			item[num].sprite = spr_hat61;
			item[num].sprite_ind = 0;
			item[num].price = 2000;
			item[num].max_time = 40 * 40;
			item[num].name = "[ 수리검 ]"
			item[num].expl = "수리검을 앞으로 4개 던진다.\n거리를 잘맞추면 2번 맞는다.\n 디버프: [ 받는데미지 25% 증가 ].\[ 15 DMG ]";
		break;
		case 30://사과1
			item[num].sprite = spr_hat13;
			item[num].sprite_ind = 0;
			item[num].price = 2000;
			item[num].max_time = 1600;
			item[num].name = "[ 빨대 ]"
			item[num].expl = "빨대로 적의 채력과 경험치 마나를 먹는다.\n 기절하고있는 적에게도 가능하다.\n[ 초당:14 ]";
		break;
		case 31:
			item[num].sprite = spr_hat4;
			item[num].sprite_ind = 0;
			item[num].price = 4000;
			item[num].what = 3;
			item[num].max_time = 1680;
			item[num].name = "[ 지진 ]"
			item[num].expl = "자신을 기준으로 원범위로 공격한다.\n 기절시간이 2.5초로 길다.\n[ 10 DMG ] ";
		break;
		case 32:
			item[num].sprite = spr_hat40;
			item[num].sprite_ind = 0;
			item[num].price = 5000;
			item[num].max_time = 40 * 25;
			item[num].what = 1;
			item[num].name = "[ 날개정권 ]"
			item[num].expl = "전방의 적을 공격한다.\n 이 때 잠시 버프 -무적을 부여한다.\n[ 12 DMG ]";
		break;
		case 33:
			item[num].sprite = spr_hat38;
			item[num].sprite_ind = 3;
			item[num].price = 4000;
			item[num].max_time = 40 * 42 ;
			item[num].name = "[ 할퀴기 ]"
			item[num].expl = "적을 공격하여 힐벤 디버프를 부여한다.\n죽은자를 먹으면 죽은자의 MP 30%를\n제거하고 전장에서 제외시킨다.\n[ 7 * 2 DMG ]";
		break;
		case 34:
			item[num].sprite = spr_book;
			item[num].sprite_ind = 5;
			item[num].price = 4444;
			item[num].max_time = 40 * 80;
			item[num].cancle = true;
			item[num].what = 3;
			item[num].name = "[ 호박 ]"
			item[num].expl = "사용시 아군의 체력이 회복되며 끝나면 맵을 바꾼다.\n 1회용";
		break;
		case 35:
			item[num].sprite = spr_hat3;
			item[num].sprite_ind = 0;
			item[num].price = 2500;
			item[num].max_time = 40 * 42;
			item[num].name = "[ 활쏘기 ]"
			item[num].expl = "부채꼴 범위로 화살을 3번 쏜다.\n[ 15 DMG ]";
		break;
		case 36:
			item[num].sprite = spr_hat2;
			item[num].sprite_ind = 0;
			item[num].price = 2500;
			item[num].max_time = 40 * 67;
			item[num].name = "[ 베기 ]"
			item[num].expl = "즉시 칼을 빼들어 전방의 적에게 피해를 준다.\n[ 29 DMG ]";
		break;
		case 37:
			item[num].sprite = spr_hat25;
			item[num].sprite_ind = 1;
			item[num].price = 5000;
			item[num].what = 3;
			item[num].max_time = 40 * 52;
			item[num].name = "[ 램프 ]"
			item[num].expl = "자신의 모든 아이템 쿨타임을 감소시킵니다\n레벨당 추가로(1.5s)를 더 감소시킨다.\n[ -6.5s ]";
		break;
		case 38:
			item[num].sprite = spr_hat20;
			item[num].sprite_ind = 1;
			item[num].price = 2500;
			item[num].max_time = 1600;
			item[num].what = 3;
			item[num].name = "[ 거미줄 ]"
			item[num].expl = "삼각형의 꼭짓점 위치로 거미줄을 만든다.\n거미줄에 적이 가치면 경험치를 얻는다.\n시체는 더 많은 경험치를 준다.";
		break;
		case 39:
			item[num].sprite = spr_hat36;
			item[num].sprite_ind = 1;
			item[num].price = 2500;
			item[num].max_time = 40 * 125;
			item[num].what = 3;
			item[num].name = "[ 뒤로베기 ]"
			item[num].expl = "즉시 앞으로 순간이동후 뒤로 검기를 날립니다.\n사용시 2초간 은신을 얻습니다.\n[ 14 DMG  ].";
		break;
		case 40:
			item[num].sprite = spr_hat14;
			item[num].sprite_ind = 0;
			item[num].price = 4000;
			item[num].max_time = 40 * 70;
			item[num].name = "[ 땅의 검술 ]"
			item[num].expl = "검을 뽑아서 [ 전투태세 - 검술 ]을 부여합니다.\n피격 시 해제됩니다.\n[ 25 DMG ]";
		break;
		case 41:
			item[num].sprite = spr_hat52;
			item[num].sprite_ind = 0;
			item[num].price = 1500;
			item[num].max_time = 40 * 38;
			item[num].what = 1;
			item[num].name = "[ 짬뽕 ]"
			item[num].expl = "짬뽕을 먹어 자신의 체력을 회복한다.\n아군도 회복된다.\n[ 25HP 회복 ]";
		break;
		case 42:
			item[num].sprite = spr_hat27;
			item[num].sprite_ind = 0;
			item[num].price = 1500;
			item[num].max_time = 40 * 63;
			item[num].name = "[ 돌진 ]"
			item[num].expl = "자신이 보고있는 방향으로 즉시 빠르게 돌진하여\n 피해를 준다 .\n[ 24 DMG ]";
		break;
		case 43:
			item[num].sprite = spr_hat17;
			item[num].sprite_ind = 1;
			item[num].price = 5500;
			item[num].max_time = 40;
			item[num].name = "[ 톱 ]"
			item[num].expl = "적을 ' 톱 '으로 때린다.\n[ 17 DMG ]";
		break;
		case 44:
			item[num].sprite = spr_hat53;
			item[num].sprite_ind = 0;
			item[num].price = 1500;
			item[num].max_time = 40 * 36;
			item[num].name = "[ 징 ]"
			item[num].expl = "가까운 적에게 피해를 준다.\n 적에게 적용된 모든 버프를 제거한다.\n[ 12 DMG ]";
		break;
		case 63:
			item[num].sprite = spr_book;
			item[num].sprite_ind = 6;
			item[num].price = 3000;
			item[num].max_time = 4000;
			item[num].what = 3;
			item[num].name = "[ 율법 ]"
			item[num].expl = "사용시 적의 버프/ 디버프를 없에고 공격합니다.\n[ 16 DMG ]";
		break;
		case 45:
			item[num].sprite = spr_hat61;
			item[num].sprite_ind = 3;
			item[num].price = 2000;
			item[num].max_time = 40 * 55;
			item[num].name = "[ 뒷치기 ]"
			item[num].expl = "앞으로 순간이동 하여 피해를 주고\n[ 버프 - 표식 ]을 부여합니다.\n버프 효과: 받는 피해 증가\n[ 13 DMG ]";
		break;
		case 46:
			item[num].sprite = spr_hat28;
			item[num].sprite_ind = 1;
			item[num].price = 3600;
			item[num].max_time = 5000;
			item[num].what = 3;
			item[num].name = "[ 비행 ]"
			item[num].expl = "벽 위로 자유롭게 날아다닙니다.\n[ 15 DMG ]";
		break;
		case 47:
			item[num].sprite = spr_face1;
			item[num].sprite_ind = 0;
			item[num].price = 5000;
			item[num].max_time = 0;
			item[num].what = 3;
			item[num].name = "[ 유니크 얼굴 뽑기 ]"
			item[num].expl = "자신의 얼굴을 특별한 얼굴로 바꿉니다.(효과 없음)";
		break;
		case 48:
			item[num].sprite = spr_hat42;
			item[num].sprite_ind = 1;
			item[num].price = 4300;
			item[num].max_time = 40 * 35;
			item[num].name = "[ 동시사격 ]"
			item[num].expl = "즉시 양손에 피스톨을 꺼내 \n지정된 위치에 피해를 줍니다.\n[ 25 DMG ]";
		break;
		case 49:
			item[num].sprite = spr_hat50;
			item[num].sprite_ind = 2;
			item[num].price = 2000;
			item[num].max_time = 40 * 76;
			item[num].name = "[ 역돌격 ]"
			item[num].expl = "차징 후 자신의 주위를 빙빙도는 폭탄을 몸에 두른다\n폭탄은 피격당하거나 일정시간이 지나면 \n폭파한다\n[ 30 DMG ]";
		break;
		case 50:
			item[num].sprite = spr_hat43;
			item[num].sprite_ind = 0;
			item[num].price = 4000;
			item[num].max_time = 40 * 58;
			item[num].name = "[ 투창 ]"
			item[num].expl = "일직선으로 즉시 창을 던진다.\n[ 26 DMG ]";
		break;
		case 51:
			item[num].sprite = spr_hat64;
			item[num].sprite_ind = 1;
			item[num].price = 2000;
			item[num].max_time = 40 * 66;
			item[num].name = "[ 연노궁 ]"
			item[num].expl = "전방을 향해 화살을 난사합니다.\n[ 15 DMG ]";
		break;
		case 52:
			item[num].sprite = spr_hat16;
			item[num].sprite_ind = 1;
			item[num].price = 2500;
			item[num].max_time = 2040;
			item[num].name = "[ 오토바이 ]"
			item[num].expl = "사용시 오토바이를 사용합니다.\n캡스락으로 움직이면 더 빠르게 움직입니다.\n[ 15 DMG ]";
		break;
		case 53:
			item[num].sprite = spr_hat23;
			item[num].sprite_ind = 1;
			item[num].price = 9500;
			item[num].max_time = 40 * 240;
			item[num].what = 1;
			item[num].name = "[ 날개 버프 ]"
			item[num].expl = "사용시 아군에게 [ 버프 - 날개 ] 를 걸어줍니다.\n버프 효과 : 무적.";
		break;
		case 54:
		case 55:
		case 56:
		case 57:
		case 58:
		case 59:
			item[num].server = true;
			item[num].price = 5000;
			item[num].what = 3;
			item[num].name = "[ 서버 아이템 ]"
			item[num].expl = "서버주인이 지정한 아이템.\n인게임에서만 확인가능 합니다.";
		break;
	}
}

size = array_length(item);
weight = 6;
height = ceil(size / weight);
leyer_limit = height;
draw_height = 6;
surf = -1;

function item_array_set(_type) {
	if (_type == 0) {
		array_copy(item_array, 0, item, 0, size);
		array_size = array_length(item_array);
		leyer_limit = ceil(size / weight);
		return;
	}
	else {
		item_array = [];
		for (var i = 0;  i < size; i++) {
			if (item[i].what == _type) {
				array_push(item_array, item[i]);
			}
		}
		array_size = array_length(item_array);
		leyer_limit = ceil(array_size / weight);
		return;
	}
}
item_array_set(0);
function item_surf() {
	if (!surface_exists(surf)) {
		surf = surface_create(80 * weight, 80 * height);
	}
   surface_set_target(surf);
   draw_clear_alpha(c_white, 0);
   for(var j = 0; j < height; j++) {
      for (var i = 0; i < weight; i++) {
         var number = j * draw_height + i;
         var draw_x = i * 80 + 40;
         var draw_y = j * 80 + 40;
		 if (number >= array_size) break;
		 if (item_array[number].server) {
			 draw_sprite(select2_serve, 0, draw_x, draw_y);
		 }
		 else {
			draw_sprite(select2, 0, draw_x, draw_y);
		 }
		 draw_set_font(font1);
         draw_set_halign(fa_center);
		 var spr = noone;
		 if (item_array[number].sprite != noone) {
			spr = item_array[number].sprite;
			draw_sprite_part_ext(spr, item_array[number].sprite_ind, sprite_get_xoffset(spr) - 60, sprite_get_yoffset(spr) - 60, 120, 120, draw_x - 19,  draw_y - 28, 0.4, 0.4, c_white, 1);
		}
         draw_set_color(make_color_rgb(254, 215, 100));
         draw_text(draw_x + 6,  draw_y + 25, string(item_array[number].price));
      }
   }
   surface_reset_target();
}

for (var i = 0; i < size; i++) {
	if (item[i].server) {
		for (var j = 0; j < server_size; j++) {
			if (server_array[j] == -1) {
				server_array[j] = i;
				break;
			}
		}
	}
}