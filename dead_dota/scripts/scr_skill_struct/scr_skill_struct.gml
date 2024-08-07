// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum skill_type {
	NONE,
	ATTACK,
	HEAL
}

function const_skill(_name, _expl, _skill) constructor {
	name = _name;
	explain = _expl;
	skill = _skill;
}

global.normal_attack = {
	name : " [ A ] - 정권",
	explain : "주먹을 내질러 적에게 10 기절 피해를 줍니다.",
	skill : "-10 DMG",
}

global.skill_exp[1][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack,
		
	attack_type1 : 1,
	Qskill : {
		name : " [ D ] - 장풍",
		explain : "잠깐의 준비 후 장풍을 일자로 발사해 데미지를 준다",
		skill : "- 38 DMG \n-' 가까이에서 사용하는 것이 좋다. '",		
	}
}

for (var i = 0; i < 5; i++) {
	global.skill_noone[0] = {
		ui_type : 0,
		attack_type : skill_type.NONE,
		Dskill : {
		    name : " noone ",
		    explain : "noone",
		    skill : "noone",
		}
	}
}
global.skill_exp[1][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : {
	    name : " [ Q ] - 연타",
	    explain : "이동속도가 빨라지며 기절시간이 짧은 기본공격을 연속으로 사용한다.",
	    skill : "- 10 DMG \n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[1][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
	    name : " [ W ] - 대장풍",
	    explain : "긴 준비 시간 후 거대한 장풍을 4연속 발사한다.",
	    skill : "- 40 DMG \n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[1][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
	    name : " [ E ] - 네오레이저",
	    explain : "긴 준비 시간 후 네오 레이저를 전방으로 발사한다.",
	    skill : "- 초당 4(40) DMG \n-' 피격시 스킬중단 '\n-' A키로 발사하세요. '\n-' 비기절 공격 '",
	}
}

global.pluton_exp[0] = {
	attack_type : 1,
	Dskill : global.normal_attack,
		
	attack_type1 : 1,
	Qskill : {
		name : " [ D ] - 1차 스킬",
		explain : "1 차.",
		skill : "- 1 차. '",	
	}
}

global.pluton_exp[1] = {
	attack_type : 1,
	Dskill : global.normal_attack,
		
	attack_type1 : 1,
	Qskill : {
		name : " [ Q ] - 2차 스킬",
		explain : "2 차.",
		skill : "- 2 차. '",	
	}
}

global.pluton_exp[2] = {
	attack_type : 1,
	Dskill : global.normal_attack,
		
	attack_type1 : 1,
	Qskill : {
		name : " [ W ] - 3차 스킬",
		explain : "3 차.",
		skill : "- 3 차. '",	
	}
}

global.pluton_exp[3] = {
	attack_type : 1,
	Dskill : global.normal_attack,
		
	attack_type1 : 1,
	Qskill : {
		name : " [ E ] - 4차 스킬",
		explain : "4 차.",
		skill : "- 4 차. '",	
	}
}

global.pluton_exp[4] = {
	attack_type : 1,
	Dskill : global.normal_attack,
		
	attack_type1 : 1,
	Qskill : {
		name : " [ R ] - 5차 스킬",
		explain : "5 차.",
		skill : "- 5 차. '",	
	}
}



global.skill_exp[27][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack,
		
	attack_type1 : 1,
	Qskill : {
		name : " [ D ] - 돌진",
		explain : "전방으로 빠르게 돌진한다.",
		skill : "- 24 DMG \n-' 피격시 스킬중단. '\n-' 시전 중 움직일 수없다. '",	
	}
}

global.skill_exp[27][1] = {
	ui_type: 0,
	attack_type: 1,

	Dskill: [{	
		level : 1,
		name: " [ Q ] - 우골의 돌진",
		explain: "전방으로 빠르게 돌진합니다.\n돌진 시간이 지날수록 속도가 빨라집니다.",
		skill: "- 35 DMG\n- 피격 시 스킬 중단\n- 시전 중 좌우 키로 움직일 수 있습니다."
	}, {
		level : 3,
		name: " [ Q ] - 우골의 돌진2",
		explain: "전방으로 빠르게 돌진합니다.\n돌진 시간이 지날수록 속도가 빨라집니다.",
		skill: "- 35 DMG\n- 피격 시 스킬 중단\n- 시전 중 방향키로 자유롭게 움직일 수 있습니다."
	}],
}

global.skill_exp[27][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : {
		name : " [ W ] - 광우돌진",
		explain : "긴 준비시간 후 전방으로 빠르게 돌진한다",
		skill : "- 49 DMG \n-' 피격시 스킬중단. '\n-' 시전 중 움직일 수없다. '\n-' 플레이어나 지형지물을 무시한다. '",
	}
}

global.skill_exp[27][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : {
		name : " [ E ] - 워낭소리",
		explain : "아군/적군 모두 [ 돌진 ] 을 시전한다.",
		skill : "-' 뇌절하지 마세요.. '",
	}
}

global.skill_exp[14][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name :  " [ D ] -땅의 검술",
		explain :  "잠깐의 준비 후 검을 뽑은 후 일정시간 동안 전투태세로 바뀐다.",
		skill :  "- 20 DMG \n-' 피격시 전투태세가 해제된다. '\n-' 레벨이 오를수록 마나소모량 감소 '",
	}
}
global.skill_exp[14][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name :  " [ Q ] - 방패",
		explain :  "적의 공격을 막는다. 막은 데미지만큼 체력을 회복한다.",
		skill :  "- ' 방패 너무 사기 ' \n-' 도트 피해는 막지못한다. (ex.빨대) '",
	}
}
global.skill_exp[14][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name :  " [ W ] - 용검술",
		explain :  "용의 힘을 담은 검을 뽑은 후 일정시간 동안 전투태세로 바뀐다.",
		skill :  "- 40 DMG \n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[14][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name :  " [ E ] - 왕의 명령",
		explain :  "아군 모두 [ 용검술 ] 을 시전한다.",
		skill :  "- ' 사람이 많을때 압도적인 성능 '",
	}
}

global.skill_exp[2][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 베기",
		explain : "전방의 적을 짧게 돌려베기 합니다.",
		skill : "- ' 29 DMG '",
	}
}
global.skill_exp[2][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 찌르기",
		explain : "전방의 적을 빠르게 찌릅니다.",
		skill : "- ' 49 DMG '",
	}
}
global.skill_exp[2][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 일섬",
		explain : "전방의 적을 즉사시켜버리는 초발도술.",
		skill : "- ' 즉사 '\n- ' 거대화 적용 불가 '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[2][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 외나무 베기",
		explain : "잠깐의 준비 후 자신의 전방을 광범위한 범위로 베어버립니다.",
		skill : "- ' 14 DMG '\n- '기절 상태인 적에게도 데미지를 준다. '\n 적의 이동속도를 감소시킨다.",
	}
}
global.skill_exp[3][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 석궁",
		explain : "부채꼴 범위로 화살을 4번연속 발사하여 적을 공격한다. ",
		skill : "- 15 DMG\n-' 레벨이 오를수록 마나 소모량 감소 '",
	}
}
global.skill_exp[3][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 피스톨",
		explain : "지정된 방향대로 6갈래 공격을 가한다.",
		skill : "- 40 DMG",
	}
}
global.skill_exp[3][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 저격",
		explain : "저격 태세를 취한다. 5초 뒤 지정된 조준선에 맞춰 저격한다.",
		skill : "- 120 DMG \n-' 피격시 저격태세가 해제된다. '",
	}
}
global.skill_exp[3][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 생식",
		explain : "전방의 적을 잡아먹어 장기간 행동불능 상태로 만든다.",
		skill : "-' 잡아먹힌 적은 점점 HP가 감소한다. '\n-' 잡아 먹은 상태에서 피격시 잡아먹힌 적은 즉시 행동불능 상태에서 해체된다. '",
	}
}
global.skill_exp[4][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 진동",
		explain : " 진동을 일으켜 자기 주변의 범위의 적을 기절 시킵니다.",
		skill : "- 10 DMG\n-' 2.5 초 기절 '\n-' 시전 도중 피격시 스킬중단 '",
	}
}
global.skill_exp[4][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 지진",
		explain : " 진동의 힘이 커져, 지진이 일어납니다.",
		skill : "- 20 DMG\n-' 3 초 기절 '\n-'레벨이 오를 수록 마나 소모량이 감소 한다.  '",
	}
}
global.skill_exp[4][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 대지진",
		explain : " 아버지의 영혼이 자신의 두피에서 돋아나, \n그 분의 능력과 함께 대지진을 일으킵니다. ",
		skill : "- 35 DMG / 초당 4(40) DMG\n-' 가까운 적에게는 5초 기절, 멀리있는 적에게는 비기절 공격을 준다. '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[4][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 개발길질",
		explain : " 분노한 아버지가 괴성을 지르며 미친 지진을처럼 일으킵니다. ",
		skill : "- 55 DMG\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[5][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ 패시브 ] - 부활",
		explain : "당신이 사망했을 때 일정마나를 소비하고 [ 고자파 ]를 사용하면서 1회 부활합니다.",
		skill : "- ' 내가 고자라니'\n- '부활 시 체력 50'",
	}
}
global.skill_exp[5][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 수류탄 삼키기",
		explain : " 수류탄을 삼켜 주변에게 데미지를 주고\n자신의 체력을 1로 만듭니다. ",
		skill : "- ' 20 DMG '",
	}
}
global.skill_exp[5][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] -  고자파",
		explain : "고자의 힘을 파동으로 내 뿜습니다.",
		skill : "- 12 DMG ",
	}
}
global.skill_exp[5][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - X",
		explain : "- ' .... '",
		skill : "- ' .... '",
	}
}
global.skill_exp[6][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 소세지 덜렁 거리기",
		explain : "소세지를 덜렁거려 타격을 입힌다.",
		skill : "- 23 DMG\n-' 레벨이 오를 수록 마나 소모량이 증가한다. '",
	}
}
global.skill_exp[6][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 소세지 장사	",
		explain : " 소세지를 뿌려서 자신과 주변 아군들의 체력을 회복 한다.",
		skill : "- 초당 HP + 1.5(40)",
	}
}
global.skill_exp[6][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 멀리뛰기",
		explain : "소세지 대가리 꼭다리를 이용해, 컴파스처럼 찝어 돌아서 이동 합니다.",
		skill : "- ' 레벨이 오를 수록 마나 소모량이 증가한다. '",
	}
}
global.skill_exp[6][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ 패시브 ] - 존나커짐 ",
		explain : "소세지가 말도 안되게 엄청 커집니다. ",
		skill : "- '[ 페널티 ] : D 스킬 사용시 크기가 일시적으로 작아진다. '",
	}
}
global.skill_exp[7][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 거대화",
		explain : "자신의 크기를 증가 시킨다.",
		skill : "- ' 피격시 작아진다 '\n- ' 3레벨 이후 2번의 보호막이 생긴다.. '",
	}
}
global.skill_exp[7][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 흔들어치기",
		explain : "흔들흔들",
		skill : "- ' 10 DMG '\n- ' 크기가 잠깐 커졌다 원래대로 돌아온다. '",
	}
}
global.skill_exp[7][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 으라차차",
		explain : "사용시 거대화 지속시간을 초기화 시켜 더 오랫동안 유지하게 한다.",
		skill : "- ' 10 DMG '\n- ' 으라차차차차차차차차차차차차 '",
	}
}
global.skill_exp[7][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " X ",
		explain : "....",
		skill : "- ' .... '",
	}
}
global.skill_exp[8][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 땅굴파기",
		explain : "잠깐의 준비 후 앞으로 짧게 순간이동 하며 주위의 적에게 피해를 준다.",
		skill : "- 25 DMG\n-' 레벨이 오를수록 마나 소모량 감소 '",
	}
}
global.skill_exp[8][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 화산버프",
		explain : "자신 주위의 아군에게 [ 화산 버프 ]를 부여한다.",
		skill : "- ' 버프효과: 공격력 1.5배 '",
	}
}
global.skill_exp[8][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 핵",
		explain : "핵 발동 준비를 한다. 10초 뒤 핵이 터지며 전장에있는 아군과 적군 모두 데미지를 준다.",
		skill : "- 아군에게 50 DMG / 적에게 70 DMG \n-' 시전중 움직일 수 없다.'\n-' 준비도중 피격시 스킬중단 '",
	}
}
global.skill_exp[8][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 종말핵",
		explain : "종말핵 발동 준비를한다. 20초 뒤 핵이 터지며 전장의 모든 적을 즉사 시킨다.",
		skill : "- 아군에게 70 DMG / 적 즉사 \n-' 시전중 움직일 수 없다.'\n-' 준비도중 피격시 스킬중단 '",
	}
}
global.skill_exp[9][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 1레벨 랜덤",
		explain : "모든 모자 1차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
		skill : "- ' .... '",
	}
}
global.skill_exp[9][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 2레벨 랜덤",
		explain : " 모든 모자 2차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
		skill : "- ' .... '",
	}
}
global.skill_exp[9][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 3레벨 랜덤",
		explain : "모든 모자 3차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
		skill : "- ' .... '",
	}
}
global.skill_exp[9][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 4레벨 랜덤",
		explain : "모든 모자 4차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
		skill : "- ' .... '",
	}
}
global.skill_exp[10][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 은신",
		explain : "자신의 주변을 공격한뒤 은신 상태가 된다.",
		skill : "- 15 DMG\n-' 매 4초 이내 재시전 시 마나 6을 추가로 소모한다.'",
	}
}
global.skill_exp[10][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 물고기버프",
		explain : "자신 주위의 아군에게 물고기 버프를 준다.",
		skill : "- ' 버프효과: HP/스테미너 자동회복 '",
	}
}
global.skill_exp[10][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 물 귀신",
		explain : "벽 넘어의 적을 침수시킨다.",
		skill : "- ' 25 DMG '\n-' 작은 벽을 넘을 수 있다. '\n-' 피격당한 적은 시야가 3초동안 차단된다. '",
	}
}
global.skill_exp[10][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 소나기",
		explain : "세차게 비가 내리고 나면, 몸이 한결 차분해지고 시원해 집니다.",
		skill : "-' 아군 전체 은신 상태가 된다. '",
	}
}
global.skill_exp[11][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 물줄기",
		explain : "지정된 방향에 물줄기를 뿜어 적을 공격합니다.",
		skill : "- 18 DMG\n-' 3레벨 이후 범위가 증가한다. '",
	}
}
global.skill_exp[11][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 얼음",
		explain : "적에게 얼음큐브를 던집니다. \n얼음을 맞은 적은 얼음 디버프에 걸립니다.",
		skill : "- 10 ~ 26 DMG\n-' 거리가 멀수록 데미지가 증가한다. ' \n-' 디버프효과 : 이동속도 감소 '",
	}
}
global.skill_exp[11][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 달빛 요정의 장난",
		explain : "달빛요정들의 축제에 초청 받은 자는, \n본연의 모습을 잃고 장난끼 어린 시절로 되돌아 갑니다.",
		skill : "- 16 DMG\n- ' 전장에 있는 모든 아군/적군은 크기가 일시적으로 감소한다. '\n- '적군에게 얼음 디버프를 준다. '",
	}
}
global.skill_exp[11][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 정령의 보호",
		explain : " 정령들이 주변을 돌며 자신을 보호해 줍니다. ",
		skill : "- 10 DMG '",
	}
}
global.skill_exp[12][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 메테오",
		explain : "긴 준비시간 후 지정된 위치에 메테오를 발사한다.",
		skill : "-' 40 DMG '\n-' 타이밍에 맞춰 A키로 발사. '\n-' 시전 중 움직일 수없다. '",
	}
}
global.skill_exp[12][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 슬레이브",
		explain : "긴 준비시간 후 지정된 위치에 슬레이브를 발사한다.",
		skill : "-' 40 DMG '\n-' 피격시 스킬중단. '\n-' 키다운으로 발사지점을 확인가능 '",
	}
}
global.skill_exp[12][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 훈장",
		explain : "아군의 마나를 회복시킨다.",
		skill : "-' 주변에 아군이 없다면 본인의 마나를 회복한다. '",
	}
}
global.skill_exp[12][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 방화계",
		explain : "즉시 [ 메테오 ] 시전한다.",
		skill : "-' 기본 [ 메테오 ]보다 지속시간이 짧다. '",
	}
}
global.skill_exp[13][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 빨대",
		explain : "적군의 체력과 마나, 경험치를 빨대로 쪽쪽 빨아 먹습니다.",
		skill : "- 초당 0.3(40) DMG\n-' 비기절 공격 '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[13][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 사과나무",
		explain : "나무를 펼쳐 아군의 체력을 회복하고, 적의 시야로 부터 가려 줍니다.",
		skill : "- 초당 HP + 0.06(40)\n-''",
	}
}
global.skill_exp[13][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ % 이름 ] - 데스노트",
		explain : "데스노트를 이용하여 적군의 이름을 적습니다. 적힌 적은 침을 기도로 삼켜 30초 뒤 즉사합니다.",
		skill : "- ' 채팅창에 [ % 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 8초동안 적힌 사람의 이름을 씁니다. '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[13][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 루크의 노트",
		explain : " 노트에 적군의 이름이 랜덤하게 적힙니다.",
		skill : "- 즉사\n-' 자신도 죽을 수 있다. '\n- ' 랜덤으로 전장에 있는 아군/적군을 사망시킨다. '\n- 4레벨 미만의 플레이어는 사망하지 않는다.",
	}
}
global.skill_exp[15][0] = {
	ui_type : 1,
	attack_type : skill_type.ATTACK,
	Dskill : global.normal_attack, 
	attack_type1 : skill_type.HEAL, 
	Qskill : { 
		name : " [ D ] - 힐",
		explain : "자신과 자신 전방의 아군을 회복시킨다",
		skill : "- 자신에게 초당 HP + 0.7(40)\n- 아군에게 초당 HP + 1.5(40)",
	}
}
global.skill_exp[15][1] = {
	ui_type : 0,
	attack_type : skill_type.HEAL,
	Dskill : { 
		name : " [ Q ] - 사이렌",
		explain : "자신과 자신 주위의 아군을 회복시킨다.",
		skill : "초당 HP + 0.9(40)\n-' 쿨타임이 있으니 신중하게 사용해야 한다. '",
	}
}
global.skill_exp[15][2] = {
	ui_type : 0,
	attack_type : skill_type.HEAL,
	Dskill : { 
		name : " [ A ] - 부활",
		explain : "시체 상태인 아군을 체력 100의 상태로 즉시 부활시킨다.",
		skill : "- A키로 시전",
	}
}
global.skill_exp[15][3] = {
	ui_type : 1,
	attack_type : skill_type.HEAL,
	attack_type1 : skill_type.NONE,
	Dskill : { 
		name : " [ E ] - 기도",
		explain : " 생명을 잃은 동료들을 모두 다시 일으키는 기적이 일어난다. ",
		skill : "-' 전장에 시체 상태인 아군 모두를 부활시킨다. '",
	},
	Qskill : { 
		name : " [ 패시브 ] - 희생  ",
		explain : " 자신이 죽으면 자신의 모든 동료들이 천사의 가호를 받게 됩니다. ",
		skill : "-'자신이 사망할 시 아군 모두에게 상당량의 경험치를 준다.'",
	}
}
global.skill_exp[16][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 점프",
		explain : " 단거리를 잽싸게 점프한다.궤도에 적군이 있다면 타격을 입힌다.",
		skill : "- ' 15 DMG '\n-' 중간 크기의 지형지물을 넘나 들수있다. '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[16][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 바이크",
		explain : "바이크를 소환하여 타고 다닌다. 이 바이크와 부딪히면 적은 타격을 받는다.",
		skill : "- ' 15 DMG '\n-' 탑승 시 이속증가  '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[16][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 멀리뛰기",
		explain : "칼루이스보다 더 멀리 점프합니다. 진정한 양아치존이 아닐 수 없다.",
		skill : "- ' 35 DMG '\n-' 꽤 큰 크기의 지형지물을 넘나 들수있다. '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[16][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 개발길질",
		explain : "발로 마구 짓밟아서 비참하게 죽인다. 발에 밟혀 죽은 사람은 이 게임에서 가장 큰 굴욕을 느낀다.",
		skill : "- ' 5 DMG '\n-' 기절 공격 이지만 기절걸린 적에게 사용가능 하다. '",
	}
}
global.skill_exp[17][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 야차의 후각",
		explain : "적을 추격하기 위해 대량의 SP( 노란 게이지)를 공급 받습니다.",
		skill : "- 10 DMG / Stemina + 400 ",
	}
}
global.skill_exp[17][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 톱지르르",
		explain : "광신적으로 톱질을 하며 전진 합니다.",
		skill : "- 17 DMG \n- '자신의 A스킬 효과를 받는다.'",
	}
}
global.skill_exp[17][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 율법",
		explain : "마신의 율법에 따라 버프를 가진 적에게 데미지를 준 후 적들의 버프를 해제합니다.",
		skill : "- 12 DMG/n- ' 주위 적의 모든 버프/디버프를 해제시킨다. '\n- '준 데미지만큼 체력을 회복한다.'",
	}
}
global.skill_exp[17][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 습격",
		explain : " 자신의 목표물 앞으로 순식간에 이동하여 척살합니다. ",
		skill : "- 19 DMG",
	}
}
global.skill_exp[18][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 부채질",
		explain : " A4용지를 펄럭이며 바람을 솔솔 일으킵니다. \n체력을 조금씩 깎으며 이동을 불편하게 합니다.",
		skill : "- 초당 0.4(40) DMG\n- '비기절 공격 '\n- '피격시 스킬중단 '",
	}
}
global.skill_exp[18][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 선풍기",
		explain : " 선풍기를 켜서 더 크고 넓은 범위에 바람을 일으킵니다. \n회전 가능합니다.",
		skill : "- 초당 0.5(40) DMG\n- '비기절 공격 '\n- '피격시 스킬중단 '",
	}
}
global.skill_exp[18][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ A ] - 꽁꽁",
		explain : "일반 타격공격으로 적군을 얼릴 수 있게 됩니다.",
		skill : "- 10 DMG/n- '적에게 얼음 디버프를 준다.'\n-버프효과 : 이동속도 감소",
	}
}
global.skill_exp[18][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 마나존",
		explain : "얼음 속에 갇혀 있던 대 마나를 방출 시켜 \n아군이 그 힘을 나누어 쓰게 합니다.",
		skill : "- 전장의 모든 아군은 마나 회복속도가 일정시간 동안 대폭 증가한다.",
	}
}
global.skill_exp[19][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 텔레포트",
		explain : "자신의 주변을 공격한뒤 랜덤한 위치로 이동한다.",
		skill : "- 27 DMG'\n-' 시전 중 움직일 수없다. '",
	}
}
global.skill_exp[19][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 날리기",
		explain : "자신 주위의 적을 날려 적을 랜덤한 위치로 이동시킨다.",
		skill : "- 20 DMG",
	}
}
global.skill_exp[19][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 도깨비 안개",
		explain : "아군 과 적군 모두 한 자리로 모이게 한다.",
		skill : "-' 강제 한타 '",
	}
}
global.skill_exp[19][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ 패시브 ] - 풍신보법  ",
		explain : "자신의 이동속도가 증가한다.",
		skill : "-'....'",
	}
}
global.skill_exp[20][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 암살",
		explain : "유령처럼 자신의 모습을 숨깁니다. 이동할 수 없습니다.",
		skill : "- ' 70 DMG '\n- ' 2초가 지난 다음부터 공격키를 누르면 영혼을 자르는 낫질을 할 수 있다. '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[20][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 거미줄",
		explain : "주변에 3갈래로 거미줄을 뿌려 적군을 움직이지 못하게 합니다.'\n-'피격시 스킬중단 '",
		skill : "- ' 초당 0.15(40) DMG '\n-' 비기절 공격 '",
	}
}
global.skill_exp[20][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 귀환",
		explain : "시체 상태인 아군/ 적군을 체력 50으로 부활시킨다.",
		skill : "- ' 적에게 시전시 적군이 아군으로 환생한다. '\n- ' 부활 시  ■ LV 3 ■ 으로 만 부활한다. '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[20][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 묻지만 살인",
		explain : "은신하면서 이동 할 수 있습니다. 은신 후 2초 뒤부터 타격 가능 합니다. ",
		skill : "- ' 90 DMG '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[21][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 와이파이 스캔",
		explain : "와이파이를 스캔하여 숨겨진 유닛을 찾아 냅니다",
		skill : "- ' 기술을 시전할 시 자신의 시야 안에 은신해 있는 적군들의 모습이 \n잠시동안 보이게 된다. '",
	}
}
global.skill_exp[21][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - MT 광선검",
		explain : "MT광선검을 소환하여 레이저 빔으로 적들을 벱니다. ",
		skill : "-' 15 DMG '\n- ' 피격시 스킬중단 ' ",
	}
}
global.skill_exp[21][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 슬라이드",
		explain : " 미끄러져 나아 갑니다.",
		skill : "- ' 10 DMG'",
	}
}
global.skill_exp[21][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 회전 광선검",
		explain : "자신의 위치에 돌아가는 회전 광선검을 설치하여 주변적에게 피해를 줍니다.",
		skill : "- ' 15 DMG '",
	}
}
global.skill_exp[22][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 쌍도끼소환 ",
		explain : " 쌍도끼를 한 번 소환합니다. 그 다음부터는 소환하지 않고, \n일반 공격키로 쌍도끼를 사용 가능합니다.",
		skill : "- ' 19 DMG '\n- ' 쌍도끼 카운트 : 해당 효과는 3번 피격시 사라집니다. '\n- ' 쌍도끼 카운트가 적어질수록 19 /23/ 27 DMG 를 준다. '",
	}
}
global.skill_exp[22][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 도약회심",
		explain : " 일시적으로 커지며 점프하면서 도끼를 내리 찍습니다. \n도끼가 소환되어 있지 않은 상황에서는 그냥 점프만 합니다. ",
		skill : "- ' 19 DMG '\n- '  중간 크기의 지형지물을 넘나 들수있다.  '\n- '  쌍도끼 상태가 아니면 소모값이 3배로 증가한다.  '",
	}
}
global.skill_exp[22][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W / 패시브 ] - 열정",
		explain : "랜덤 확률로 화산버프가 발동 합니다.",
		skill : "- ' 버프효과 : 공격력 1.5 배 '\n- ' 확률이 아니더라도 W키로 발동시킬수 있다. '",
	}
}
global.skill_exp[22][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -으라차차차차",
		explain : "아링의 몸이 순간적으로 거대해지면서 도끼를 소환 합니다.",
		skill : "- ' 으라차차차차차차차차차차차차차차차차차 '",
	}
}
global.skill_exp[23][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 무적의 날개짓",
		explain : "성스러운 날개의 힘으로 자기 자신은 일정시간 동안 날개버프를 가집니다.",
		skill : "- 버프효과 : 무적",
	}
}
global.skill_exp[23][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 날개버프",
		explain : " 자기 주변의 동료들에게도 날개의 힘을 나누어 줍니다. ",
		skill : "- ' 아군과 자신에게 날개버프 '\n-' 쿨타임이 길기 때문에 신중하게 사용해야 한다. '",
	}
}
global.skill_exp[23][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 황금의 날개짓",
		explain : "황금날개의 힘을 이용하여 자신과 주변 동료들의 마나와 경험치를 증가 시킵니다.",
		skill : "-' 황금날개 스킬은 3레벨 이상의 모자에게는 힘을 주지 않는다.(자기 자신 제외)",
	}
}
global.skill_exp[23][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 정의의 날개짓",
		explain : " 긴 준비 시간 후 앞으로 날아가며 적을 썰어버립니다.",
		skill : "- 70 DMG\n-' 시전 도중 방향 전환 불가'\n' 피격시 스킬중단 '",
	}
}
global.skill_exp[24][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 전기",
		explain : " 전기장을 발생시켜 주변인들을 감전시킵니다. ",
		skill : "- 14 DMG\n- ' 아군 / 적군 모두에게 전기 디버프를 줍니다. '/n- ' 버프효과 : 행동제어 '  ",
	}
}
global.skill_exp[24][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 피뢰침",
		explain : " 길쭉한 전기칼을 재빠르게 소환하여 적을 찌릅니다. ",
		skill : "- 10 DMG",
	}
}
global.skill_exp[24][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 섬광",
		explain : "220W 전구가 한번 번쩍이게 되면 \n기절해 있던 아군이 깨어 나고, 약간의 체력이 회복 됩니다.",
		skill : "- HP + 10\n- ' 기절해 있던 전장의 모든 아군 기절해제 '",
	}
}
global.skill_exp[24][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 해킹",
		explain : " 랜덤으로 은행계좌를 해킹하거나, 점수판을 조작하거나, 버프를 해킹 합니다.",
		skill : "- 랜덤으로 아래에 있는 스킬 중 한개를 실행\n-' 상대방의 돈을 감소시킵니다. '\n- ' 랜덤으로 버프적용 '\n- ' 아군의 점수를 증가시키고 적군의 점수를 깍음  '",
	}
}
global.skill_exp[25][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 물먹이기",
		explain : "적군에게 물을 먹입니다. 기절해 있더라도 먹일 수 있습니다.",
		skill : "- ' 15 DMG'\n- ' 비기절 공격 '",
	}
}
global.skill_exp[25][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 램프",
		explain : " 램프 요술램프를 문질러서 잠자는 요정을 불러 봅니다. 아이템의 쿨타임이 회복됩니다.",
		skill : "- ' 아이템 쿨타임 10초 감소 '",
	}
}
global.skill_exp[25][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 정전기",
		explain : "사막의 지배자인 술탄은 정전기를 이용합니다.\n백성들은 이를 어둠의 마법이라 하여 두려워 하였습니다.",
		skill : "- ' 10 DMG '\n- '적에게 전기 디버프를 준다.'",
	}
}
global.skill_exp[25][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 피라미드",
		explain : "- 거대한 피라미드 영역을 생성합니다. 이 영역에서는 아군의 체력은 회복되고, \n적군의 체력은 감소합니다.",
		skill : "- ' 아군 초당 HP + 0.11(40)'\n- '초당 0.11(40) DMG'\n- ' 시전 중에는 어떤한 행동도 할수 없다. '",
	}
}
global.skill_exp[26][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 소총",
		explain : " 소총을 연사합니다. \n이 총은 근거리에서는 타격을 입히지 못합니다.",
		skill : "- 10 DMG\n-' 레이싱 모드를 사용하면서 쏘는 것이 좋다. '\n-' 시전 도중 피격시 스킬중단 '",
	}
}
global.skill_exp[26][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 구급치료",
		explain : "구급용품을 이용하여 응급치료를 시작합니다. \n가까이오는 아군의 체력도 회복해 줍니다 .",
		skill : "HP + 0.08 \n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[26][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 주포",
		explain : " 커다란 주포를 순식간에 건설합니다. \n그 위용은 보는 것만으로도 떨게 합니다. ",
		skill : "- 40 DMG\n-' A키로 주포를 발사한다. / 시전 도중 움직일 수 없다 '\n-' 시전 시간동안 짜장 버프( 데미지 감소 )를 가집니다. '",
	}
}
global.skill_exp[26][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 탱크",
		explain : "탱크는 적군을 짓밟아 죽이는데는 최고의 자가용 입니다.\n하지만 포는 주포보다 약합니다.",
		skill : "- 14 DMG\n-' D키로 발포한다.( 15 DMG )'\n-' 시전 시간동안 짜장 버프( 데미지 감소 )를 가집니다. '",
	}
}
global.skill_exp[28][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 울기",
		explain : "울보처럼 질질짜면서 자신의 체력을 회복합니다.",
		skill : "- ' 자신이 타격을 받아 기절했을때만 사용가능합니다. '\n- ' 기절 시간동안에 스킬이 지속된다. '",
	}
}
global.skill_exp[28][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 비행",
		explain : " 얼굴이 약간 커지면서 어느 곳이든 이동할 수 있게 됩니다. ",
		skill : "- ' 15 DMG '\n- ' 지속시간 동안 모든 구조물을 넘을 수있 습니다. '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[28][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ ~ 이름 ] - 사탕발림",
		explain : "사탕발린 말로 팀을 바꾸게 합니다, ",
		skill : "- ' 채팅창에 [ ~ 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 입력된 적군이 아군으로 편입됩니다.'\n- ' 과도한 편입은 배신과 배반 시스템을 작동 시킬 수 있습니다. '",
	}
}
global.skill_exp[28][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 뽀뽀",
		explain : "아군에게 뽀뽀를 해주면 아군의 힘이 쌔집니다.",
		skill : "- ' 아군에게  짧은 시간 화산 버프를 준다.\n- ' 버프효과 : 공격력 1.8 배 '",
	}
}
global.skill_exp[29][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] -장미덩굴",
		explain : "덩굴을 직선으로 발사하여 적을 가둔다.",
		skill : "- ' 13 DMG '-\n ' 시전중 A키를 누르면 덩굴을 거두며 데미지를 준다.'",
	}
}
global.skill_exp[29][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 가시정원",
		explain : "둥그런 장미정원을 자신의 주변에 만든다.",
		skill : "- 17 DMG \n-' 시전중 Q키를 다시 한번 누르면 정원 안쪽을 공격한다 .'",
	}
}
global.skill_exp[29][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 독나비",
		explain : "나비들이 조용히 나풀 거린다. 이 나비들은 아무 소리없이 적의 피를 빨아 먹는다.",
		skill : "- 초당 0.35(40) DMG \n-' 비기절 공격 '",
	}
}
global.skill_exp[29][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 할퀴기",
		explain : "자신 주위의 적들을 밀어낸다.",
		skill : "- 20 DMG",
	}
}
global.skill_exp[30][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 빗자루 날리기",
		explain : "요술빗자루들이 들썩거리면 아군과 지신은 랜덤한 위치로 텔레포트를 하게 됩니다.",
		skill : "- ' 4 DMG '\n- '시전 중 피격시 자신의 텔레포트가 중단된다.'",
	}
}
global.skill_exp[30][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 그림자망토",
		explain : " 흑마술의 기본인 어둠의 술법으로, 빛을 반사시켜서 자신의 모습을 감춥니다.",
		skill : "- ' 버프효과 : 은신 '",
	}
}
global.skill_exp[30][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 마녀의 저주",
		explain : "마녀에게 저주 받은 자들은 식은땀을 흘리며 자신의 정신력을 소모시킵니다.",
		skill : "- ' 지정된 마법진 위치에 디버프를 준다. '\n- ' 디버프 효과 : 마나 감소 '",
	}
}
global.skill_exp[30][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 백귀야행",
		explain : " 시체를 뜯어 먹으며 사는 까마귀들의 혼령이 대마녀의 부름에 따라 이계의 황혼으로부터 재림 합니다",
		skill : "- ' 9 DMG '\n- '적을 따라다니며 방해한다.'",
	}
}
global.skill_exp[31][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 블럭",
		explain : "이계에서 온 이 네모난 건설자는, 이계로부터 블럭을 소환할 수 있습니다.",
		skill : "- ' 40 DMG '\n- '시전 중 무적 버프를 획득한다.'\n- '소환된 블럭은 벽판정'",
	}
}
global.skill_exp[31][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 발사기",
		explain : " 일정시간 동안 화살을 발사하는 발사기를 설치한다.",
		skill : "- '발당 10 DMG'\n- '발사기는 4초후 사라진다.",
	}
}
global.skill_exp[31][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 자폭",
		explain : "음산한 소리를 내며 돌아다니다가 누군가 자신을 공격하면\n핵보다 강한 위력으로 폭발해 버립니다.",
		skill : "- ' 즉사 '\n- ' 자폭 후 ■ LV 2 ■ 로 강등된다... '",
	}
}
global.skill_exp[31][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 창조",
		explain : "신비한 호박속에서는 세상의 구조를 바꿀 수 있는 마력을 발산합니다.\n16초 뒤 맵을 바꿉니다.",
		skill : "- ' 채팅창에 원하는 맵 이름을 입력하여 갈 수있습니다.(EX. 돌다리)\n- '맵이 바뀌면 아군/적군 모두 체력 100이 됩니다. '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[32][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 검술",
		explain : "잠깐의 준비 후 검을 뽑은 후 일정시간 동안 전투태세로 바뀐다.",
		skill : "- 25 DMG \n-' 피격시 전투태세가 해제된다. '",
	}
}
global.skill_exp[32][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 마법",
		explain : "긴 준비시간 후 지정된 방향으로 메테오를 발사한다.",
		skill : "-' 40 DMG '\n-' 타이밍에 맞춰 A키로 발사. '\n-' 시전 중 움직일 수없다. '",
	}
}
global.skill_exp[32][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 힐",
		explain : "자신과 자신 전방의 아군을 회복시킨다",
		skill : "- 자신에게 초당 HP + 0.7(40)\n- 아군에게 초당 HP + 1.5(40)",
	}
}
global.skill_exp[32][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 3가지 기술",
		explain : "[ E + D/Q/W] 를 사용해 다양한 스킬을 사용하실 수 있습니다.",
		skill : "-' [ E + D ] : 암전 '\n-'  [ E + Q ] : 진동 '\n-'  [ E + W ] : 날개 '",
	}
}
global.skill_exp[33][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 슬레이브",
		explain : "위저드의 [ 슬레이브 ]를 지정된 위치에 차징 없이 바로 날린다. ",
		skill : "-' 40 DMG '\n-' 피격시 스킬중단. '\n-' 시전 중 움직일 수없다. '",
	}
}
global.skill_exp[33][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 전투이탈",
		explain : " 텔레포트를 해서 자신의 주변 랜덤 위치로 이동한다.",
		skill : "- ' 긴급탈출 '",
	}
}
global.skill_exp[33][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] -파이어월",
		explain : "위저드의 [ 메테오 ]를 회전하며 시전한다.",
		skill : "-' 40 DMG '\n-' 타이밍에 맞춰 A키로 발사. '\n-' 시전 중 움직일 수없다. '",
	}
}
global.skill_exp[33][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 사일런트",
		explain : "적군의 모든 스킬과 버프를 해제하고 충격을 줍니다.",
		skill : "-' 만약에 적군이 스킬을 쓰거나 버프를 가지고 있을 시 그것을 없애고 모두에게 2.4초의 기절시간을 부여한다. '",
	}
}
global.skill_exp[34][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 물고기버프",
		explain : "자신의 주위에 있는 아군들에게 물고기버프를 부여합니다.",
		skill : "- ' 버프효과: HP/스테미너 자동회복 '",
	}
}
global.skill_exp[34][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 그림자버프",
		explain : " 자신의 주위에 있는 아군들에게 그림자버프를 부여합니다.",
		skill : "-  ' 버프효과: 은신 '",
	}
}
global.skill_exp[34][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 날개버프",
		explain : "자신의 주위에 있는 아군들에게 날개버프를 부여합니다.",
		skill : "- ' 버프효과: 무적 '",
	}
}
global.skill_exp[34][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 화산버프",
		explain : "자신의 주위에 있는 아군들에게 화산버프를 부여합니다.",
		skill : "- ' 버프효과: 공격력 1.8 배 '",
	}
}
global.skill_exp[35][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 코끼리 점프",
		explain : "귀여운 아기 코끼리가 꿈속에서 처럼 가볍게 뛰어 다닙니다.",
		skill : "- ' - 15 DMG '\n-' 중간 크기의 지형지물을 넘나 들수있다. '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[35][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 코끼리 코",
		explain : " 자상한 엄마 코끼리가 아기 코끼리에게 줄 간식을 만듭니다. ",
		skill : "- ' 초당 0.3(40) DMG '\n-' 비기절 공격 '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[35][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 코끼리 격노",
		explain : "엄한 아빠코끼리가 화를 냅니다.",
		skill : "- ' - 27 DMG '\n-' 3초 기절 '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[35][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 매머드 돌진",
		explain : "고대의 조상들이 땅속에서 다시 나타나 부활하여 날뜁니다.",
		skill : "- ' 35 DMG '\n- ' 거대화 적용 불가 '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[36][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 검기",
		explain : " 검기를 날려 적을 베고, 자신의 모습을 잠시동안 사라지게 합니다.",
		skill : "- ' 16 DMG '\n-' 시전 시 2.2초 은신 '",
	}
}
global.skill_exp[36][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 뒤돌아 베기",
		explain : "즉시 뒤로 순간이동 한뒤 한번 검기를 날립니다.",
		skill : "- ' 12 DMG '\n-' 시전 시 2.2초 은신 '",
	}
}
global.skill_exp[36][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] -  뒤돌아 찌르기",
		explain : "지정된 위치에 있는 적을 강하게 찔러 암살합니다.",
		skill : "- ' 40 DMG '",
	}
}
global.skill_exp[36][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 회전베기",
		explain : "2개의 검을 양손에 잡고 휘둘러 \n강력한 바람을 일으켜 주변 적에게 연속피해를 줍니다.",
		skill : "- ' 13 DMG '\n-' 피격시 스킬중단 '",
	}
}
global.skill_exp[37][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 할로윈",
		explain : "유령을 소환하여 적을 깜짝 놀라게 합니다.",
		skill : "- ' 9 DMG'",
	}
}
global.skill_exp[37][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 신출귀몰.",
		explain : "일정 시간이 되면 랜덤으로 적/아군의 위치로 이동합니다.",
		skill : "- ' 까꿍 '\n- ' 시전 후 6초동안 은신한다. '",
	}
}
global.skill_exp[37][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ 패시브 ] - 영체(靈體)",
		explain : "벽이나 사람에 막히지 않고 관통합니다.",
		skill : "- ' 모든 구조물을 무시하고 지나간다. '",
	}
}
global.skill_exp[37][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 초능력",
		explain : " 아군들을 모두 공중부양 시킵니다.",
		skill : "- ' 모든 아군이 일정시간동안 벽이나 사람에 막히지 않고 관통한다.'",
	}
}
global.skill_exp[38][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 인공지능 텔레포트",
		explain : "자신의 주변을 공격한뒤 랜덤한 위치로 이동한다.",
		skill : "- ' 27 DMG '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[38][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 실침당기기",
		explain : " 실침을 이용하여 매우 빠르게 이동 합니다.",
		skill : "- ' 시전시 이동속도 증가 버프를 2초동안 가진다 '",
	}
}
global.skill_exp[38][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ 패시브/ W ] - 세균가스",
		explain : "위험한 맹독 가스가 몸에서 발사 되어 주변의 적에게 독 디버프를 준다.",
		skill : "- ' 디버프효과 : 체력 감소 '\n- ' 피격시 일정확률로 기 소모없이 시전된다. '",
	}
}
global.skill_exp[38][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 파리떼",
		explain : "원형으로 빙빙도는 파리를 소환합니다. \n파리에 맞은 적은 힐벤 디버프에 걸립니다.",
		skill : "- ' 17 DMG '\n- ' 디버프효과 : 회복 금지 '",
	}
}
global.skill_exp[39][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 빔소드",
		explain : "날파리같이 튀어 다니며 공격합니다.",
		skill : "- ' 15 DMG '\n- '시전 시간동안 이동속도가 증가합니다.'\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[39][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 레비건",
		explain : " 사방으로 총을 튀기며 무자비한 공격을 합니다.",
		skill : "- ' 발당 16 DMG '\n- ' 시전 중에는 방향전환만 가능하다. '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[39][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 지뢰",
		explain : "즉시 자신의 몸을 숨깁니다.",
		skill : "- ' 30 DMG '\n- 'A키를 누르면 자신의 주변에 4연속 폭발을 일으키면서 적에게 피해를 준다 '\n- ' 숨는 도중 피격시 스킬중단 '",
	}
}
global.skill_exp[39][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 절명검",
		explain : " 검을 소환하여 적군을 내려 칩니다.",
		skill : "- ' 81 DMG '",
	}
}
global.skill_exp[40][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ A / D ] - 정권 / 날개정권",
		explain : "주먹을 휘둘러 짧고 강하게 적에게 피해를 줍니다.",
		skill : "- ' 10 DMG '\n- ' [ D ] - 날개 정권 (14 DMG) '\n- ' 자신에게 걸린 버프/디버프를 해체하고 [ 정권 ]을 시전합니다.  '",
	}
}
global.skill_exp[40][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 날라차기",
		explain : "앞으로 돌려차기를 하며 특정 타이밍에 피해를 줍니다.",
		skill : "- ' 23 DMG '\n- ' 중간 크기의 지형지물을 넘나 들수있다. '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[40][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 팔괘장",
		explain : "자신에게 가장 가까운 적에게 순간이동하여 피해를 줍니다.",
		skill : "- ' 16 DMG '\n- ' 쿨타임이 있으니 신중하게 써야한다. '\n- ' 대상의 버프를 제거한다. '",
	}
}
global.skill_exp[40][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 귀신각",
		explain : "긴 준비시간 후 맵 곳곳을 랜덤으로 이동하며 마구 햘퀴어대며 공격합니다.",
		skill : "- ' 36 DMG '\n- ' 시전동안 날개버프를 얻는다. '\n- ' 버프효과 : 무적 '",
	}
}
global.skill_exp[40][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 슬쩍숨기",
		explain : "은근슬쩍 대변을 보고 숨습니다. \n대변은 밟은 적은 마나 디버프에 걸립니다. ",
		skill : "- ' 10 DMG '\n- ' 디버프효과 : 마나감소 '\n- ' A키를 눌러 숨기를 해제 할 수있다.  '",
	}
}
global.skill_exp[40][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 똥 묻히기",
		explain : " 지정된 위치에 있는 먼거리의 적을 공격합니다.",
		skill : "- ' 14 DMG '\n- ' 캡스락을 이용해 공격하는 것이 좋다. '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[40][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 똥 폭풍",
		explain : "짧은 준비 후 자신의 전방에 똥 폭풍을 일으킨다. \n범위내의 적은 일반적인 방법으로는 빠져나갈 수없다.",
		skill : "- ' 15 DMG '\n- ' 벽 판정 '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[40][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 변기 내려찍기",
		explain : "엄청난 크기의 변기를 내려쳐 넓은 범위로 큰 기절을 줍니다.",
		skill : "- ' 12 DMG '",
	}
}
global.skill_exp[42][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 조준 사격",
		explain : "자신의 앞에 있는 적군에게 피스톨을 날립니다. 경로상의 적에게 적은 피해를 주고\n끝에 위치한 적에게 큰피해를 줍니다. ",
		skill : "- ' 23 DMG / 32 DMG '",
	}
}
global.skill_exp[42][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 동시 사격",
		explain : " 빠르게 양손에 피스톨을 꺼내 지정된 위치에 피해를 줍니다.",
		skill : "- ' 25 DMG '",
	}
}
global.skill_exp[42][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 난사",
		explain : "잠깐의 준비 후 전방으로 무차별 사격을 가합니다.",
		skill : "- ' 발당 25 DMG '\n- ' 사용중 움직 일 수 있다. '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[42][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 장전",
		explain : "총에 강력한 탄환을 넣어 장전합니다. 마나와 화산 버프를 얻습니다.",
		skill : "- ' + 45 MP '\n- ' 버프효과 : 공격력 1.8 배 '\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[43][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 투창",
		explain : "전방을 향해 창을 던집니다. 키다운 시 조준을 할 수 있습니다.",
		skill : "- ' 26 DMG '",
	}
}
global.skill_exp[43][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 막기",
		explain : "적의 공격을 막습니다. 막은 데미지만큼 체력을 회복합니다.",
		skill : "- ' 방패 너무 사기 ' \n- ' 비기절 공격은 막지못한다. (ex.빨대) '",
	}
}
global.skill_exp[43][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 말타기",
		explain : " 말을 타면서 이동속도가 약간 올라가게 됩니다. \n말은 일정시간이 되면 뛰어올라 강력한 데미지를 줍니다. ",
		skill : "- ' 70 DMG '\n- ' 시전 중에  D, Q,를 사용할 수 있다.'\n- ' 피격시 스킬중단 '",
	}
}
global.skill_exp[43][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 기마군단",
		explain : "전장의 모든 아군이 [ 말타기 ]를 시전합니다.",
		skill : "- ' 사람이 많을때 압도적인 성능 '",
	}
}
global.skill_exp[44][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 파이어볼",
		explain : "자신의 A스킬이 [ 파이어 볼 ]이 된다.",
		skill : "-' 10 DMG '\n- ' 피격시 A스킬이 원래대로 돌아간다. '",
	}
}
global.skill_exp[44][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 파이어월",
		explain : " 자신의 전방에 불로 이루어진 벽을 세워 적을 방해합니다.",
		skill : "- ' 10 DMG '\n- ' 피격시 스킬중단  '\n- ' 틱당 데미지 1씩 증가  '",
	}
}
global.skill_exp[44][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 메테오 스트라이크",
		explain : "긴 묻 준비 후 지정된 위치에 강력한 메테오를 떨굽니다.",
		skill : "- ' 120 DMG '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[44][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 파이어 레인",
		explain : "지정된 위치에 불로 이루어진 비를 내립니다.",
		skill : "- ' 초당 0.4(40) DMG '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[45][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 월광",
		explain : "먼 거리에 위치한 아군을 회복시키고 적에게 피해를 줍니다.",
		skill : "- ' 초당 8 DMG / 아군에게 초당 HP + 8  '",
	}
}
global.skill_exp[45][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 거인력",
		explain : " 주변에 있는 아군 1명을 거대화 합니다. 아무도 없다면 자신을 거대화 합니다.",
		skill : "- ' .... '",
	}
}
global.skill_exp[45][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 원령 소환",
		explain : "거대한 원령이 자신을 향해 날아와 경로 상의 적에게 피해를 줍니다.",
		skill : "- ' 29 DMG '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[45][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 비석문",
		explain : "간절하게 바라면 우주가 나서서 도와준단다",
		skill : "- ' [비석문] 은 소한 후 앞으로 천천히 전진합니다.'\n- ' 매3초마다 아군을 부활 시키고 무적을 부여합니다. '\n- ' 매3초마다 25 DMG를 주는 공격을 합니다.  '",
	}
}
global.skill_exp[46][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 베고 숨기",
		explain : "자신의 검집에서 검을 뽑아서 가까이있는 적을 1번 벤 다음 \n3.5초동안의 은신이 부여합니다. ",
		skill : "- ' 25 DMG '\n- ' 적 잃은 체력에 비례해 주가 데미지를 준다 ( x 0.2) '",
	}
}
global.skill_exp[46][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 쉐도우 블레이드",
		explain : " 빠른 속도로 회전하면서 이동합니다. 부딪힌 적에게 데미지를 줍니다.",
		skill : "- ' 10 DMG '\n- ' 시전 중 이동속도가 증가한다. '",
	}
}
global.skill_exp[46][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 4연베기",
		explain : "4번 연속 적을 벱니다. 매 타 마다 범위가 줄어들고 더 큰 피해를 줍니다. ",
		skill : "- ' 29 / 32 / 35 / 49 DMG '\n- ' 매 타 마다 입력한 방향키대로 순간이동 한다. '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[46][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 침투",
		explain : " 아군을 자신의 주변으로 소환합니다. 기절해 있는 아군은 모두 깨어나고 체력도 모두 회복됩니다. ",
		skill : "- ' 이걸로 뇌절하지 마십쇼... '",
	}
}
global.skill_exp[47][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 골렘 캐논",
		explain : "골렘이 힘을 모은 뒤 강력한 캐논을 전방에 퍼붓습니다.",
		skill : "- ' 초당 3(40) DMG '\n- ' 비기절 공격 '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[47][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 골램 슬레이브",
		explain : " 골렘이 힘을 모은 뒤 4개의 슬레이브를 자신의 주위에 퍼붓습니다.",
		skill : "- ' 40 DMG '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[47][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 박명수 앨범소환 ",
		explain : "지정된 위치에 박명수 앨범을 소환하여 길을 막습니다.",
		skill : "- ' 벽판정 '\n- ' 안에 있는 적만큼 EXP를 획듭합니다.  '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[47][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 성 감옥",
		explain : "자신의 전방에 있는 적들을 가둡니다.",
		skill : "- ' 벽판정 '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[48][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 인체장기",
		explain : "자신 주위에 3방향으로 눈알을 S자로 발사하고 다시 같은 방법으로 회수합니다. ",
		skill : "- ' 36 DMG '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[48][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 전염병",
		explain : " 지정된 위치에 쥐도 새도 모르게 전염병을 퍼뜨립니다.",
		skill : "- ' 초당 0.15(40) DMG '\n- ' 시전 중 움직일 수 없습니다. '\n- ' 피격시 스킬중단  '",
	}
}
global.skill_exp[48][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 뼈 던지기 연타",
		explain : "스킬 [ 연타 ]를 실행한후 뼈를 마구 던집니다.",
		skill : "- ' 10 DMG / 20 DMG '",
	}
}
global.skill_exp[48][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 마법서",
		explain : "스킬 9개를 사용할수 있는 마법서의 설명서를 읽습니다.",
		skill : "- ' 채팅창에 & 1 ~ 9 을 입력하고 E키를 누르면 시전된다. '",
	}
}
global.skill_exp[49][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] -  에너지 흡수",
		explain : "자신의 앞에 있는 적의 에너지를 흡수합니다.",
		skill : "- ' 9 DMG \n- ' 흡수한 에너지만큼 거대화가 부여됩니다. (최대 260%) '\n- ' 거대화 지속시간은 4초입니다. '",
	}
}
global.skill_exp[49][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 공학 레이저",
		explain : " 잠시 준비 한 뒤 레이저를 상하좌우로 4개 발사합니다.",
		skill : "- ' 초당 0.75(40) DMG '\n- ' 시전 중 방향전환만 가능합니다. '",
	}
}
global.skill_exp[49][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 핵력",
		explain : "기절해 있는 아군에게 [ 지뢰 ] 스킬을 시전하게 합니다.",
		skill : "- ' 아군은 30 DMG의 피해를 주는 스킬을 시전할 수 있게된다.'\n- ' 시전 후 2.25초 동안은 무적입다니. '",
	}
}
global.skill_exp[49][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 초가디언 소환",
		explain : "강력한 로봇 '초가디언을 소환 합니다. \nD ,Q로 공격하고 W로 빠르게 이동할 수있습니다.",
		skill : "- ' 40 DMG '",
	}
}
global.skill_exp[50][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 잠수",
		explain : " 0.5초간 무적이 되며 지형지물을 통과 할 수 있는 상태가 됩니다.\n 3초뒤 모습을 드러내며 주변적에게 피해를 줍니다.",
		skill : "- ' 28 DMG '\n- ' 시전도중 D스킬을 눌러 즉시 잠수를 해제할 수있다. '\n- ' 시전도중 이동속도 30% 증가  '",
	}
}
global.skill_exp[50][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 총질 칼질",
		explain : " 총을 즉시 발사하여 적에게 큰 피해를 줍니다.\n 이후 당신의 A스킬은 [ 칼질 ] 로 바뀝니다 .",
		skill : "- ' 55 DMG / 10 DMG '\n- ' [ 칼질 ]은 기절상태의 적에게 데미지와 [ 출혈 ] 디버프를 준다.  '\n- ' 피격 시 A스킬은 원래 상태로 돌아간다. '",
	}
}
global.skill_exp[50][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 역돌격",
		explain : "자신의 몸에 폭탄을 붙여 적진으로 갈 준비를 한다.",
		skill : "- ' 30 DMG '\n- ' 붙인 폭탄은 8초뒤 터지며 터질때 현재 체력의 25%가 감소한다. '\n- ' 적군의 공격에 의해 파괴되면 페널티를 받지 않는다. '",
	}
}
global.skill_exp[50][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 승선",
		explain : "군함을 소환합니다. 군함에 부딪힌 적은 강제로 이 군함에 태워지게 됩니다.",
		skill : "- '10 DMG'\n- ' D키를 눌러 대포알 을 발사해 30 DMG를 줄 수 있다. '",
	}
}
global.skill_exp[51][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 감자 구르기",
		explain : "7초간 연속으로 굴러 자신 주위의 적에게 피해를 줍니다.",
		skill : "- ' 14 DMG '\n- ' A키로 중간에 스킬중단이 가능하다. '\n- ' 피격 시 스킬중단 '",
	}
}
global.skill_exp[51][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 고기 뜯기",
		explain : " 자신의 고기를 뜯어 체력을 회복한 후 \n먹다 남긴 뼈를 전방으로 던집니다.",
		skill : "- ' + 15 HP / 20 DMG '\n- ' 피격 시 스킬중단 '\n 8초간 데미지 감소 버프",
	}
}
global.skill_exp[51][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 버섯 점프대",
		explain : "아군과 적군을 튕겨내는 버섯을 설치한다.\n 이버섯은 아군에게는 이롭지만 적에게는 피해를 준다. ",
		skill : "- ' 10 DMG ''\n- ' 버섯에 닿인 아군/적군은 튕겨난다. '\n- ' 아군이 이 버섯에 닿았을 때 [ 연타 ]를 시전한다.'",
	}
}
global.skill_exp[51][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 포도송이",
		explain : "전장에 있는 모든 아군은 [ 감자 구르기 ]를 시전한다.",
		skill : "- ' 야! 제발 저리 좀 비켜, 내 앞에 돌 좀 치워  '",
	}
}
global.skill_exp[52][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 후루룩",
		explain : "짬뽕을 2초동안 먹어 체력을 회복합니다. \n짬뽕 그릇에 아군이 있다면 그 아군도 체력을 회복합니다.",
		skill : "\n- ' 초당 HP + 0.3(40) '\n- ' 피격 시 스킬중단 '",
	}
}
global.skill_exp[52][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 중국집 오토바이",
		explain : " 오토바이를 탑승합니다. 오토바이가 캔슬될경우 주위에 짜장버프를 걸어줍니다.",
		skill : "- ' 4.5초동안 타면 [Q]를 눌러 던질 수 있게 됩니다. '\n- '  버프효과 : 받는 데미지 50% 감소 '",
	}
}
global.skill_exp[52][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 캡사이신- ' 권 '",
		explain : "극한의 매운맛에 취한 그는 자신의 피를 깎아내며 한계를 뛰어넘는 펀치를 날립니다.",
		skill : "- '66 DMG '\n- ' 시전에 성공하면 주변아군에게 [ 화산 버프 ]를 부여한다. '",
	}
}
global.skill_exp[52][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 짬동력",
		explain : "자기 주변에 면발을 소환하여 자신을 보호하고 적군에겐 데미지를 줍니다.",
		skill : "- ' 10 DMG '\n- ' 지속 시간동안 E키를 한번더 누르면 면발을 소모해 '\n  ' 적에게 18 DMG 를 주고 적을 끌어옵니다.  '",
	}
}
global.skill_exp[53][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 징 울리기",
		explain : "징을 울려 자신 주변의 적에게 피해를 줍니다.",
		skill : "- ' 12 DMG '\n- ' 적에게 있는 모든 버프 / 디버프를 해제한다. '",
	}
}
global.skill_exp[53][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 수플렉스",
		explain : " 전방을 적을 잡아 지면에 처박습니다.",
		skill : "- ' 20 DMG '",
	}
}
global.skill_exp[53][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 승전보 ",
		explain : "강하게 지면을 내리 친 후 종을 세워 종 주변의 아군에게 화염버프를 주는 영역을 7초간 생성합니다. ",
		skill : "- ' 12 DMG '\n- ' 팀 기지로 취급된다. '",
	}
}
global.skill_exp[53][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 끌어오기",
		explain : " 직선 경로로 갈고리를 발사합니다.\n갈고리에 피격당한 적은 당신한테 끌려오게 될 것 입니다.",
		skill : "- ' 20 DMG '",
	}
}
global.skill_exp[54][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 컨베이어 벨트",
		explain : "자신의 위치에 컨베이어 벨트를 설치합니다.",
		skill : "- '초당 0.04(40) DMG'\n- ' 컨베이어 벨트 위에 D 시전시 강화된다. '\n- ' 강화된 컨베이어 벨트는 적을 밀어낸다.'",
	}
}
global.skill_exp[54][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 회전 모터",
		explain : "자신의 위치에 회전 모터를 설치합니다.\n밟은 아군 / 적군은 회전하게 됩니다.",
		skill : "- ' 9 DMG '",
	}
}
global.skill_exp[54][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 점프 발판",
		explain : "자신의 앞에 점프발판을 설치합니다.",
		skill : "- '메로나 탄이 닿으면 폭발하여 20 DMG를 준다.'\n밟은 아군은 해당 방향으로 점프합니다.",
	}
}
global.skill_exp[54][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 텔레포터",
		explain : "자신의 위치에 텔레포터를 설치합니다.\n적군은 조금식 설치한 지점으로 순간이동 됩니다.",
		skill : "- ' E키를 두 번 사용해 시작점 과 도착점을 설치해야 활성화 된다. '",
	}
}
global.skill_exp[55][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 전기",
		explain : "직선 경로로 콜라를 던집니다. 맞은 적은 전기 디버프에 걸립니다.",
		skill : "- ' 21 DMG '\n- ' 디버프효과 : 행동제어 '",
	}
}
global.skill_exp[55][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 얼음",
		explain : "직선 경로로 우유를 던집니다. 맞은 적은 얼음 디버프에 걸립니다.",
		skill : "- ' 15 DMG '\n- '벽에 튕깁니다.'\n- ' 디버프효과 : 이동속도 감소 '",
	}
}
global.skill_exp[55][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 독",
		explain : "직선 경로로 라면을 던집니다. 맞은 적은 독 디버프에 걸립니다.",
		skill : "- ' 21 DMG '\n- ' 디버프효과 : 체력 감소 '",
	}
}
global.skill_exp[55][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 초코파이 먹기",
		explain : "초코 파이를 먹습니다. 이 후 당신의 스킬들은 추가타격을 줍니다. ",
		skill : "- ' 20 DMG '\n- ' 추가 타격은 마나 디버프를 준다. '\n- ' 디버프효과 : 체력 감소 '",
	}
}
global.skill_exp[56][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 순간 진동",
		explain : "자신 주위의 적이 가진 버프를 해제하고\n당신을 마지막으로 입힌 적에게 순간이동 합니다.",
		skill : "- ' 12 DMG'",
	}
}
global.skill_exp[56][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 순간 척살",
		explain : " 자신에게 가장 먼거리에 있는 적에게 순간이동해 피해를 줍니다.",
		skill : "- ' 19 DMG '",
	}
}
global.skill_exp[56][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 즉발모으기",
		explain : "전장에 있는 모든 아군/적군 을 한자리에 모이게 합니다.",
		skill : "- '  E 사용중일 때는 사용할 수 없다. '",
	}
}
global.skill_exp[56][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 안전 구역",
		explain : "안전구역을 생성합니다. 30초뒤 안전구역을 제외한 모든 전장에 폭격이 날아옵니다.",
		skill : "- ' 안전구역 밖에 있는 플레이어들은 기/ 마나 / EXP가 1이 된다. '\n- ' 안전구역 밖에 있는 적은 체력 페널티 디버프에 걸린다. '\n- ' 디버프효과 : 체력 15 '",
	}
}
global.skill_exp[57][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 바위 던지기",
		explain : "거대한 바위를 일자로 던집니다.\n벽이나 플레이어 부딪히면 폭발하여 피해를 줍니다.",
		skill : "\n- ' 22 DMG '\n- ' 키 다운 시 몸이 커지며 최대 2.5배까지 증가합니다. '",
	}
}
global.skill_exp[57][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 땅 고르기",
		explain : " 땅을 힘껏 내려쳐 거대한 균열을 일으킵니다.\n균열은 2초후 폭발하여 강력한 데미지를 줍니다.",
		skill : "\n- ' 36 DMG '\n - ' 시전 딜레이 동안 방향조절 가능 '",
	}
}
global.skill_exp[57][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 케르릉 보호막",
		explain : "주위의 돌들로 자신의 몸을 두릅니다.\n보호막은 6초동안 데미지를 기록합니다.",
		skill : "- ' + 잃은체력의 (35%) HP '\n- ' 시전시 0.5초 무적이 된다. '\n- ' 6초후 받은데미지의 (35%) 만큼 아군을 회복시킨다. '",
	}
}
global.skill_exp[57][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 대지 두드리기",
		explain : "대지를 흔들어 거대한 땅의 파도를 일으킵니다",
		skill : "- ' 20 DMG '\n - ' 파도에 맞은 아군 / 적군은 자신쪽으로 끌려오게 된다. '\n - ' 적의 모든 버프를 해제한다. '",
	}
}
global.skill_exp[58][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 기관소총",
		explain : " 먼 거리에서 기관소총을 연사합니다. \n시전 후 무게에 의해 움직일 수없습니다.",
		skill : "- 11 DMG\n-' A키를 연타하세요 '\n-' 시전 도중 피격시 스킬중단 '",
	}
}
global.skill_exp[58][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 지뢰",
		explain : " 자신 위치에 지뢰를 설치합니다. \n일정시간이 되거나 적이 밟으면 터져 피해를 줍니다.",
		skill : "- ' 20 DMG \n- ' 적에게는 지뢰가 보이지 않는다. '\n- ' 시전 후 0.8 초간 은신 '",
	}
}
global.skill_exp[58][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 무차별 폭격",
		explain : "자신이 지정한 곳에 무차별 폭격을 지시합니다.",
		skill : "- ' 32 DMG '\n- ' 25 초동안 지속되며 5초마다 폭발을 일으킨다. '\n- ' 시전 후 1.5초 뒤에 지정가능 '",
	}
}
global.skill_exp[58][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 대륙간 탄도 미사일",
		explain : "은신상태가 되며 핵탄두 를 조종합니다.\n핵탄두는 7초뒤에 터지며 강력한 피해를 줍니다.",
		skill : "- ' 70 DMG '\n- ' 피격 시 스킬중단 '\n 타격시 적에게 독 디버프를 부여한다.",
	}
}
global.skill_exp[59][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 시간의 굴레",
		explain : "자신 주위의 적들에게 피해를 주고 자신의 아이템 쿨타임을 감소시킵니다.",
		skill : "- ' 17 DMG \n- ' 사용시 5.5초 감소 '",
	}
}
global.skill_exp[59][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 데자뷰",
		explain : " 데자뷰",
		skill : "- ' 자신이 마지막으로 사용한 아이템을 한번만 시전합니다. '\n- ' 해당 아이템이 공격형이면 마나가 50%감소합니다. '",
	}
}
global.skill_exp[59][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 모닝콜",
		explain : " 도타를 하기 위해 알람을 설정합니다.",
		skill : "- ' 10 DMG \n- 설정한 알람이 3초뒤에 울려 피해를 줍니다.\n- 기절한 아군이나 자신이 기절상태를 해제하고 버프- 가속을 부여합니다.",
	}
}
global.skill_exp[59][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 시간 역행",
		explain : "고도의 기술로 이루어진 시계를 작동시켜 자신의 위치에 \n현재 자신의 마나와 위치를 저장하여 잔상을 남깁니다. ",
		skill : "- ' 시전시 자신의 모든 아이템을 80% 감소시킵니다. '\n- ' E를 재시전하거나 10초 뒤 해당 잔상으로 돌아가, 자신이 저장한 상태를 돌려받습니다. '\n- ' 돌려 받을때 모든 쿨타임이 최대치로 증가합니다. '",
	}
}
global.skill_exp[60][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 감시자의 눈",
		explain : "자신은 모습을 감추고 눈을 조종하여 적에게 피해를 줍니다.",
		skill : "- ' 15 DMG '\n- ' 피격 시 스킬중단 '\n- ' 레벨 3 달성시 성능이 강화됩니다. '",
	}
}
global.skill_exp[60][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 석화",
		explain : " 메두사의 눈을 반짝여 적에게 석화 디버프를 부여합니다.",
		skill : "- ' 10 DMG '\n- ' 디버프 효과 : 경직 'n- ' [D] 스킬 시전 도중에도 사용가능 하다. '",
	}
}
global.skill_exp[60][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 황금 방패",
		explain : "모든 것을 검열합니다.",
		skill : "- ' 음소거 / 채팅금지 / 스킬표기 금지 '",
	}
}
global.skill_exp[60][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - BIG BROTHER IS WATCHING YOU",
		explain : "시전시 경고가 뜨며 10초 카운트가 시작됩니다. 카운트 안에 피격 시 스킬이 중단됩니다.\n아이템, 스킬사용이 불가하지만 움직일수 있습니다.",
		skill : "- ' 40 DMG '\n- ' 10초동안 피격 당하지 않아 스킬 사용에 성공했을 시 '\n- ' 10초동안 마우스 우클릭을 통해 적에게 데미지를 입힐수 있다. '",
	}
}
global.skill_exp[61][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 수리검",
		explain : "부채꼴 범위로 표창을 5갈래로 던져 피해를 줍니다.\n끝에 맞은적은 더 큰 피해를 입습니다.",
		skill : "- ' 15 DMG '\n- ' 표창이 날라갈때 [ 표식 ] 이 있는적은 현재 체력의 11% 데미지를 입는다.'\n - ' 땅에 박힌 표창은 적에게 [ 표식 ] 을 부여한다. '",
	}
}
global.skill_exp[61][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 연막",
		explain : "자신의 앞에 연막을 던집니다.\n연막안에서 [ 표식 ]이 있는 적은 이동속도가 감소합니다.",
		skill : "\n- ' 연막은 은신을 부하여며 적의 돌진류 스킬을 차단한다. \n- ' 연막안에서는 스테미너 재생량이 100% 증가한다. '",
	}
}
global.skill_exp[61][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 그림자 분신",
		explain : "자신의 위치에 [ 수리검 ]을 사방으로 뿌리는 분신을 남긴채 \n보고 있는 방향으로 순간이동 합니다.",
		skill : "- ' 15 DMG '",
	}
}
global.skill_exp[61][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 표식 / 인살",
		explain : "칼을 던져 적에게 표식을 남깁니다.\nE스킬을 한번 더 사용하면 [ 표식 ] 을 가진 대상에게 순간이동해 광범위 데미지를 줍니다.",
		skill : "- ' 20 DMG '",
	}
}
global.skill_exp[62][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 리프 블레이드",
		explain : "잎파리를 뽑아 3회 발사합니다..",
		skill : "- ' 11/22 DMG '\n- ' 마지막 공격은 더 강한 피해를 줍니다. '",
	}
}
global.skill_exp[62][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 초보신공 버니합",
		explain : "전방으로 점프~합니다.",
		skill : "- ' 지형지물을 넘나들 수 있습니다. '",
	}
}
global.skill_exp[62][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 리프 가드",
		explain : "1.5초동안 낙엽바람을 일으켜 적들을 방해합니다.",
		skill : "- 7 DMG \n-' 낙엽바람은 총 5번 시전 됩니다. '",
	}
}
global.skill_exp[62][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 솔라빔",
		explain : "광합성을 해 에너지를 모은 후 전방으로 투사체를 발사합니다.",
		skill : "- ' 15/25/35/45 '\n-' 모을수록 피해는 증가합니다. '",
	}
}
global.skill_exp[63][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 라이트닝 어퍼",
		explain : " 전방으로 충격파를 발사합니다.'",
		skill : "- ' 23 DMG / 40 DMG (강화) '",
	}
}
global.skill_exp[63][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 템페스트",
		explain : " 즉시 빠른속도로 돌진합니다",
		skill : "- ' 17 DMG / 27 DMG (강화) '",
	}
}
global.skill_exp[63][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 스파이럴 피스트",
		explain : " 전방을 향해 힘찬 주먹질 발사 ",
		skill : "- ' 6 DMG / 12 DMG (강화)\n- ' 스킬 시전도중엔 이동속도 20 % 감소합니다. '",
	}
}
global.skill_exp[63][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 쇼 다운",
		explain : " 하늘로 뛰어오른 후 강하하여 강력한 피해를 줍니다. ",
		skill : "- ' 25 DMG / 50 DMG (강화)\n- ' - 공중에 있을때는 무적이지만, 시전 도중 피해를 입으면 즉시 피해를 줍니다. '\n- ' 강하하는 위치가 정해지면, 정해진 위치에 있는 적들을 느리게 만듭니다. '",
	}
}
global.skill_exp[65][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 용접",
		explain : "마스크를쓰고 용접을 시작합니다. \n- ' 오브젝트를 회복시킬수 있다. '",
		skill : "- ' 초당 10 DMG '\n- ' 2초뒤 푸른불꽃을 내뿜으며 강화된다. '",
	}
}
global.skill_exp[65][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 자동포탑",
		explain : " 주변 구역을 보호하는 포탑을 설치합니다. \n포탑은 적을 자동으로 조준하여 공격합니다.",
		skill : "- ' 10 DMG '\n- ' 체력: 40 '\n- ' 파괴시 GI회수가 가능한 [기어]를 생성합니다.'",
	}
}
global.skill_exp[65][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 자판기",
		explain : " 마나포션을 뱉어내는 자판기를 설치합니다.\n 기본공격시 30% 확률로 얻을 수 있습니다.",
		skill : "- ' + 10 MP / + 20 MP '\n- ' 체력: 70 '\n- ' 파괴시 GI회수가 가능한 [기어]를 생성합니다.'",
	}
}
global.skill_exp[65][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 드론",
		explain : "자신을 보호하는 드론을 생성합니다. \n드론은 적을 자동으로 조준하여 공격합니다.",
		skill : "- ' 15 DMG '\n- '드론에게 데미지가 입혀지면 즉시 파괴된다. '",
	}
}
global.skill_exp[66][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 번트",
		explain : "재빨리 배트를 들어올려 공을 친다.",
		skill : "- ' 15 DMG '\n- ' 피격시 스킬중단. '",
	}
}
global.skill_exp[66][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 폭투",
		explain : "공을 위로 던집니다.\nD스킬로 치면 직선으로 날라가 경로상의 적에게 강력한 피해를 던집니다.  ",
		skill : "- ' 15 DMG / 45 DMG '\n- ' 피격시 스킬 중단 '",
	}
}
global.skill_exp[66][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 플레이볼",
		explain : "공을 괴상하게 던진 후 자신의 밑에 베이스를 설치합니다.\n베이스 위에선 마나 재샹량이 25%, 스테미너 재생량이 폭발적으로 증가합니다.",
		skill : "\n- ' 매 4초마다 공을 생성한다. '\n- ' 지속시간 20초 '\n- ' 쿨타임이 있다. '",
	}
}
global.skill_exp[66][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 홈런",
		explain : "긴 차징 후 운명의 공을 불러옵니다.\nD스킬로 치면 직선으로 날라가 경로상의 적에게 강력한 피해를 던집니다.",
		skill : "- ' 25 DMG / 45 DMG '\n- ' D스킬로 쳤을 때 크기가 대폭 증가한다. '\n- ' 피격시 스킬 중단 '",
	}
}
global.skill_exp[67][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 요리",
		explain : "8초 동안 가만히 요리를 한다.\n낚아 올린 일부 물고기와 상호작용이 된다.",
		skill : "- ' 완성된 음식은 체력 / 마나 / 경험치 를 회복시킨다. '\n' 완성된 음식의 품질은 랜덤이다. '",
	}
}
global.skill_exp[67][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 짬통 배급",
		explain : "짬통을 자신의 위치에 설치합니다.\n아군 / 적군은 F키로 먹어서 회복 할 수 있습니다.",
		skill : "- ' + 20 HP '\n- ' 먹어서 응원하자 '",
	}
}
global.skill_exp[67][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 핫스팟",
		explain : "자신과 자신의 주변에 있는 아군 플레이어는 \n이동속도가 대폭 증가합니다.",
		skill : "- ' 여기선 낚시가 가능하다. '\n- ' 초당 2.4HP를 회복시킨다. '",
	}
}
global.skill_exp[67][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ A ] - 부메랑 나이프",
		explain : "자신의 A스킬이 영구히 [ 부메랑 나이프 ] 로 바뀝니다.",
		skill : "- ' 20 DMG '",
	}
}
global.skill_exp[68][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 레가토",
		explain : "피아노를 쳐 주변적에게 피해를 줍니다.\n이 후,특정 타이밍에 맞춰 시전 시 추가타를 줍니다..",
		skill : "- ' 초당 0.3(40)HP / 15DMG '",
	}
}
global.skill_exp[68][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 고음 주역 테스트",
		explain : " 내려오는 음표에 맞춰 스킬을 재시전 하면 음표를 방출합니다.",
		skill : "- '19 DMG'\n- ' 타이밍을 맞추지 않으면 즉시 시전이 종료된다. '\n- ' 맨 마지막 공격의 100% 추가 피해를 준다.'",
	}
}
global.skill_exp[68][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 위플래시",
		explain : "박자가 안 맞잖아, 다시!",
		skill : "- '23 DMG'\n- ' 범위 안의 적들에게 일정시간마다 데미지를 주게한다.'",
	}
}
global.skill_exp[68][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 광란의 연주",
		explain : "긴 차징 후 고막이 터질듯한 굉음을 \n전방에 발사하여 강력한 충격파가 적군을 밀쳐버립니다. ",
		skill : "- ' 35 DMG '",
	}
}
global.skill_exp[69][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 나무정령 / 재배치",
		explain : "자신의 위치에 [ 나무정령 ]을 생성합니다.\n[ 나무정령 ]은 당신이 바라보는 방향대로 화살을 4갈래로 발사합니다.",
		skill : "- ' 체력 30 / 15 DMG'\n- ' [ 나무정령 ]이 전장에 존재하는 경우 D스킬이 [ 재배치 ]로 바뀐다. '\n- ' [ 나무정령 ]의 위치를 [ 재배치 ]로 옮 길 수있다. '",
	}
}
global.skill_exp[69][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 만개",
		explain : "전방으로 꽃을 피웁니다.\n꽃에 닿인 아군과 소환수들은 회복하지만 적군에게는 석화 디버프 줍니다.",
		skill : "- ' 초당  0.4(40) HP'\n- ' 디버프 효과 : 경직 '",
	}
}
global.skill_exp[69][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 염병 / 괴성",
		explain : "자신의 위치에 [ 염병 ]을 생성합니다\n[ 염병 ]은 당신이 바라보는 방향대로 뼈를 발사한다.",
		skill : "- ' 체력 40 / 28 DMG '\n- ' 4초마다 주위에 [ 괴성 ]을 질러 28 DMG를 준다.'\n- ' [ 염병 ]의 위치를 [ 재배치 ]로 옮 길 수있다. '",
	}
}
global.skill_exp[69][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 유작",
		explain : "신 암흑인물열전 중 1명이 만든 최악의 소환수를 소환한다.  ",
		skill : "- ' 체력 50 '\n- ' 이 망령은 적을 자동으로 추적하며 적을 탈모상태로 만든다. '\n- ' 탈모에 걸린 적은 이동 외에는 아무것 도 할수 없다. '",
	}
}
global.skill_exp[70][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 채혈",
		explain : "적울 할퀴어 피해를 줍니다.",
		skill : "- ' - 10 + 자신의 잃은체력의 (32%) DMG '\n- '[ 불사 ] 상태 동안에는 스킬이 강화됩니다. '",
	}
}
global.skill_exp[70][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 물어 뜯기",
		explain : "자신 앞의 대상을 물어 뜯어 준 피해만큼 체력을 흡수한다. ",
		skill : "- ' - 20 + 잃은체력의 (16%) DMG '\n- ' 기절당한 적에게도 사용가능. '",
	}
}
global.skill_exp[70][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 박쥐떼",
		explain : "박쥐로 변신해 0.75초동안 지형지물을 무시하며 빠르게 이동합니다. ",
		skill : "- ' 11 + 잃은체력의 (14%) DMG '",
	}
}
global.skill_exp[70][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 찢어 발기기",
		explain : "8초간 사망에 대한 면역, [ 불사 ] 가 부여됩니다.",
		skill : "- ' 체력이 10미만 으로 내려가지 않는다.  '\n- ' [ 불사 ] 상태 동안 HP 소모값 사용제한 또한 사라집니다. '",
	}
}
global.skill_exp[71][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 런지",
		explain : "앞으로 순간이동 하며 레이피어로 적을 찌릅니다.",
		skill : "- ' 자신의 강화 A스킬의 효과를 받는다. '\n- ' 피격 시 스킬중단 '",
	}
}
global.skill_exp[71][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 역습",
		explain : " 레이피어를 치켜올려 적의 공격을 방어하고 반격합니다.",
		skill : "- ' 30 DMG '\n- ' 반격에 성공하면 [중첩] 하나를 획득합니다.'\n- ' 반격에 성공하면 소모마나의 50%를 획득합니다. '",
	}
}
global.skill_exp[71][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 피날레",
		explain : "전방의 적을 기절시킨 후 뒤로 물러나 찌르기 자세를 취합니다.\n잠시 후 전방을 빠르게 찔러 적에게 피해를 줍니다.",
		skill : "- ' 2 DMG '\n- ' 찌르는 도중 무적 '\n- ' 중첩수 만큼 8씩 데미지가 증가합니다. '",
	}
}
global.skill_exp[71][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 총사대",
		explain : "자신의 총사대를 소환해 광범위 한 범위로 전방에 총을 쏘게합니다.\n2초뒤 총을 발사하여 잃은체력에 비례한 데미지를  줍니다",
		skill : "- ' 10 DMG '\n- ' 현재체력 28% 추가 DMG '\n- ' 방향키로만 방향조정하며 1회만 발사할 수있습니다. '",
	}
}
global.skill_exp[72][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 눈쑤시개",
		explain : "총알을 1발씩 장전합니다. 최대 6발까지 장전가능 합니다.",
		skill : "- ' 최대 49 DMG (거리비례) '\n- ' 장전된 총알은 [ A ]키로 발사한다. '\n- ' 발사체는 벽을 뚫지 못한다. '",
	}
}
global.skill_exp[72][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 루돌프 돌진",
		explain : " 총알 2개를 폭파시켜 전방으로 돌진한다.",
		skill : "- ' 24 DMG '\n- ' 도착지점에 눈사람[ 10 DMG ]을 생성한다. '",
	}
}
global.skill_exp[72][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 도 넘은 선물",
		explain : "총알을 하나 소비해 벽을 넘는 초탄을 발사합니다.",
		skill : "- ' 1 DMG '\n- ' 초탄은 일정거리후 터지며 최대 49 DMG (거리비례)를 준다.'\n- ' 터진 발사체는 벽을 뚫지 못한다. '",
	}
}
global.skill_exp[72][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 굴뚝 속에 빠진 플루톤",
		explain : "눈덩이를 굴립니다. 굴린 눈덩이는 점점 커져 플루톤보다도 커집니다.",
		skill : "- ' 눈덩이에 닿은 적은 움직임을 제어당한다. '\n- ' 눈덩이가 사라질때 폭발하며 20 DMG를 준다.'\n- ' 벽에 닿으면 더이상 구르지않는다.'",
	}
}
global.skill_exp[73][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 도둑질",
		explain : "자신 주변의 적들에게 피해를 주고 경험치를 훔친뒤 달아납니다.\n중간 크기의 지형지물을 넘나 들 수 있습니다.",
		skill : "\n- ' 15 DMG '\n- ' 피격 당한 적은 자신의 레벨에 비례해 경험치를 잃습니다. '",
	}
}
global.skill_exp[73][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 단검 태세",
		explain : "두손에 단검을 쥐어 다양한 공격을 할 수있습니다. ",
		skill : "- ' [ A ] 를 누르면 [ W ] '시해' 가 시전됩니다. '\n- ' [ Q ] 를 한번더 누르면 8초간 독데미지를 주는 독검을 던집니다. (24 DMG)'\n- ' 또한 [ Q ]스킬은 은신 지속시간을 초기화 시킵니다 . '",
	}
}
global.skill_exp[73][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 시해",
		explain : "먼거리의 적들에게 돌진하여 강력한 피해를 줍니다.\n피격 당한 적은 레벨에 비례해 경험치를 잃습니다.",
		skill : "- ' 12/36 DMG '\n- ' 큰 크기의 지형지물을 넘나 들수있다. '\n- ' 피격 시 스킬중단 '",
	}
}
global.skill_exp[73][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 숨통 끊기",
		explain : "아무런 소리를 내지않고 은신합니다.\n 2초 후 A키를 눌러 강력한 데미지를 줄 수 있습니다.",
		skill : "- ' 33 DMG '\n- ' 피격 시 스킬중단 '\n- ' 피격 당한 적은 자신의 레벨에 비례해 경험치를 잃습니다. '",
	}
}
global.skill_exp[74][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 스키 준비",
		explain : "스키 장비를 착용해 질주를 준비합니다. '",
		skill : "- ' 34 DMG '\n- ' [스키] 상태일땐 자동으로 앞으로가며 방향키로 방향을 조정할수 있습니다. '\n- '[A] 키로 캔슬하면 시전을 중단하고 빠른속도로 돌진하여 전방의 적에게 피해를 줍니다.'",
	}
}
global.skill_exp[74][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 스키 묘기",
		explain : "스키를 배운지 얼마 안됬지만",
		skill : "- ' 16 DMG '\n- ' 지정된 방향으로 점프해 눈바람을 일으킨후 튀어올라 바라본 방향으로 점프합니다. '\n - ' 이후 2초간 '버프 -실침 '을 부여합니다. '",
	}
}
global.skill_exp[74][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] -저녁숲 스키 동호회",
		explain : "휘슬을 불어 자신이 속한 동호회 친구들을 부릅니다.",
		skill : "- ' 29 DMG '\n- ' 친구들은 소환 시 '스키 준비'를시전합니다. '\n - ' 소환된 시간동안 재사용시 추가마나를 소모해 자신이 바라본 곳으로 '스키 준비'를 시전하게 합니다.  '",
	}
}
global.skill_exp[74][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  운지천 드링크",
		explain : "운지천을 마셔 모든 피로를 회복합니다. 더 달릴 수 있을 듯합니다",
		skill : "- ' - 초당 40 마나 회복 '",
	}
}
global.skill_exp[75][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 쿵쿵쿵",
		explain : "자신의 몸을 동그랗게 말아 3번 튀어오릅니다..",
		skill : "- ' 30 DMG '\n- ' 공격성 : 데미지가 30 % 감소하지만 시전속도가 빨라집니다. '\n- ' 시전 중에는 모든 벽을 넘을 수 있습니다. '",
	}
}
global.skill_exp[75][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 분열",
		explain : " 자신의 몸을 나눠 전방에 피해를 주며 특정한 위치에 더 큰 피해를 줍니다.",
		skill : "- ' 10/36 DMG '\n- ' 공격성 : 데미지가 60 % 감소하지만 연속 9회 타격합니다. '",
	}
}
global.skill_exp[75][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 형태변화",
		explain : "뛰어난 학습능력으로 최근 피격당한 스킬을 복사합니다.",
		skill : "- ' 복사된 스킬은 단 한번만 사용됩니다. '\n- ' 공격성 : 공격성이 유지되는한 무제한 사용 가능 '",
	}
}
global.skill_exp[75][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 우걱우걱",
		explain : "입을 크게 벌려 적을 맛있게 먹습니다.",
		skill : "- ' 32 DMG '\n- ' 공격성 : 적을 삼켜 5초동안 아무행동도 못하게합니다.'",
	}
}
global.skill_exp_level5[1][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 장풍",
		explain : "잠깐의 준비 후 장풍을 일자로 발사해 데미지를 준다",
		skill : "- '....'",
	}
}
global.skill_exp_level5[1][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - ....",
		explain : " ....",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[1][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 즉발캐논",
		explain : "골렘 D스킬을 즉시 시전한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[1][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ 패시브 ] - 게이",
		explain : "적을 죽이면 죽인적을 자신처럼 변하게한다.",
		skill : "- ' 기지 데미지에 면역 '",
	}
}
global.skill_exp_level5[2][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 점프",
		explain : "단거리를 잽싸게 점프한다.궤도에 적군이 있다면 타격을 입힌다.",
		skill : "- '....'",
	}
}
global.skill_exp_level5[2][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 날리기",
		explain : "자신 주위의 적을 날려 적을 랜덤한 위치로 이동시킨다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[2][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 연타",
		explain : "이동속도가 빨라지며 기절시간이 짧은 기본공격을 연속으로 사용한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[2][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ R ] - 인간먹기",
		explain : "적을 먹어 전방의 적들을 즉사시킨다.",
		skill : "- ' 옴뇸뇸 '",
	}
}
global.skill_exp_level5[3][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 램프",
		explain : "자신의 아이템 쿨타임을 감소시킨다.",
		skill : "- '....'",
	}
}
global.skill_exp_level5[3][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 전기 정원",
		explain : "전기 + 장미정원",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[3][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 워낭소리",
		explain : "아군/적군 모두 [ 돌진 ] 을 시전한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[3][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 날개검",
		explain : "정의의 날개짓 + 땅의검술",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[4][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 방패",
		explain : "적의 공격을 막는다. 막은 데미지는 체력으로 전환한다.",
		skill : "- '....'",
	}
}
global.skill_exp_level5[4][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 탱크발사",
		explain : "짧게 탱크를 발사한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[4][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 진동워크",
		explain : "적을 즉시 기절시킨다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[4][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 화룡검술",
		explain : "화산버프 + 용검술",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[5][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 뿡야",
		explain : "일시적으로 크기가 증가하며 적을 공격한다.",
		skill : "- '....'",
	}
}
global.skill_exp_level5[5][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 이상한 나라로 간 앨리스",
		explain : "랜덤한 적 위치로 이동된다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[5][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 미친 앨리스",
		explain : "전방의 적을 무차별적으로 공격한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[5][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] - 오늘의 일기",
		explain : " 경험치를 획득한다.",
		skill : "- ' 시전 중 움직일 수 있다. '",
	}
}
global.skill_exp_level5[6][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 미친 총질1",
		explain : "군인 D스킬",
		skill : "- '....'",
	}
}
global.skill_exp_level5[6][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 미친 총질2",
		explain : "사냥꾼 Q스킬",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[6][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 미친 총질3",
		explain : "적에게 다량의 총알을 사방으로 박는다.",
		skill : "- ' 시전중 이동속도 증가 '",
	}
}
global.skill_exp_level5[6][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  서윤호의 저격",
		explain : " 날개 + 저격 ",
		skill : "- ' 시전 중 무적. '",
	}
}
global.skill_exp_level5[7][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 바퀴벌레 전투",
		explain : "지정된 스킬을 랜덤하게 시전한다.",
		skill : "- ' 돌진  D '\n- ' 무사  D '\n- ' 마그마관리인 D '",
	}
}
global.skill_exp_level5[7][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 야골레스가 제일 좋아하는 스킬",
		explain : "마녀의 저주 + 텔레포트",
		skill : "- '....'",
	}
}
global.skill_exp_level5[7][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 개 발광 나대기",
		explain : "미친듯이 날뛴다",
		skill : "- ' 날뛰는 중에는 벽을 무시한다. '",
	}
}
global.skill_exp_level5[7][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  깝치기 절정신공",
		explain : " 블럭소환 + 도깨비안개 ",
		skill : "- ' 시전 중 무적. '",
	}
}
global.skill_exp_level5[8][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 야차의 후각",
		explain : "적을 추격하기 위해 대량의 SP( 노란 게이지)를 공급 받습니다.",
		skill : "- '....'",
	}
}
global.skill_exp_level5[8][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 플로만식 톱지르르르",
		explain : "마론 Q + 야차 Q",
		skill : "- '....'",
	}
}
global.skill_exp_level5[8][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 율법",
		explain : "마신의 율법에 따라 버프를 가진 적에게 데미지를 준 후 적들의 버프를 해제합니다.",
		skill : "- '....'",
	}
}
global.skill_exp_level5[8][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ A ] - 플로만식 도끼질",
		explain : " 전 방향으로 도끼질을 한다. ",
		skill : "- '  '",
	}
}
global.skill_exp_level5[9][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 인체장기",
		explain : "2배로 빠른 인체 장기를 이동하면서 사용할 수 있습니다.",
		skill : "- '.... '",
	}
}
global.skill_exp_level5[9][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 마법서",
		explain : "마지막에 사용한 마법서를 명령어 입력 없이 즉시 쓸 수 있습니다.",
		skill : "- '....'",
	}
}
global.skill_exp_level5[9][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 정기 흡수",
		explain : "자신의 위치에 토템을 박습니다.",
		skill : "- ' 토템 근처의 적을 죽이면 그 적은 유령으로 바뀐다. '",
	}
}
global.skill_exp_level5[9][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  라이프 베슬",
		explain : " 사용시 라이프 베슬을 리치 왕의 위치에 '고정'합니다.\n라이프 베슬을 생성한 상태인 리치 왕은 피격 대상이 되지 않습니다. ",
		skill : "- ' 라이프 베슬은 리치 왕의 체력을 대신한다. '\n- ' 라이프 베슬이 살아있는한 상태 효과를 받을 수 없다.'",
	}
}
global.skill_exp_level5[10][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 숨고베기",
		explain : "밴디트 D",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[10][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 찌르기",
		explain : "무사 Q",
		skill : "- ' 타격시 흡혈 '",
	}
}
global.skill_exp_level5[10][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - ....",
		explain : "....",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[10][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  즉발일섬",
		explain : "무사 W를 즉시 시전",
		skill : "- ' 90DMG '",
	}
}
global.skill_exp_level5[11][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 월드와이드웹",
		explain : "전기 D 를 던진다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[11][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 4차산업혁명",
		explain : "전방으로 화살을쏘는 포탑을 생성한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[11][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 정보통신망 ",
		explain : "사방으로 화살을쏘는 포탑을 생성한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[11][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  ....",
		explain : "....",
		skill : "- '....'",
	}
}
global.skill_exp_level5[12][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 8갈래 화살",
		explain : "수많은 화살을 전방으로 발사한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[12][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 사격",
		explain : "먼거리의 적에게 총질한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[12][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 미사일",
		explain : "막대한 데미지를 주는 미사일을 발사한다.",
		skill : "- ' 벽에 튕긴다. '",
	}
}
global.skill_exp_level5[12][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  핵력",
		explain : "자신에게 핵력 버프를 부여한다.",
		skill : "- '버프 유지중 피격시 폭발하여 적에게 피해를 준다.'\n- ' 다른버프와 중첩가능 '",
	}
}
global.skill_exp_level5[13][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 자유형 ",
		explain : "전방의 적에게 며르치의 맛을 보게한다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[13][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 며루치떼의 형성 ",
		explain : "지정된 스킬을 랜덤하게 시전한다.",
		skill : "- ' 지진  D '\n- ' 지진  Q '\n- ' 지진  W / E '",
	}
}
global.skill_exp_level5[13][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 액젓 뿌리기 ",
		explain : "적에게 액젓을 뿌린다.",
		skill : "- ' 비기절 공격 '",
	}
}
global.skill_exp_level5[13][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  날치가 되고싶은 멸치 ",
		explain : "돌을 튕겨서 진동파를 만든다.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[14][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 밀쳐내기 ",
		explain : "적에게 돌진하고 적을 밀쳐낸다.",
		skill : "- ' 적이 밀쳐나는 도중 벽에 박히면 추가 데미지를 입는다.'",
	}
}
global.skill_exp_level5[14][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 긴급지원 ",
		explain : "야차 Q + 성녀 Q",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[14][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 단죄 ",
		explain : "화산버프 + 베기.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[14][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  성역",
		explain : "자신이 받는 피해를 감소시킨다.",
		skill : "- ' 적에게는 힐벤 디버프를 준다. '",
	}
}
global.skill_exp_level5[15][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 날개방패 ",
		explain : "날개 + 검투사 Q",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[15][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 9연속검돌풍 ",
		explain : " 풍신의 날리기 스킬을 사용하며 9바퀴를 돌고 멈춘다. ",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[15][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 수룡검 ",
		explain : "물고기버프 + 땅의 검술.",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[15][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E / R ] -  모으기 / 밀기",
		explain : "적을 모으거나 밀쳐낸다",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[17][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 정보 부족 카페에 누가 좀 알려줘",
		explain : "....",
		skill : "- ' ...'",
	}
}
global.skill_exp_level5[17][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - ... ",
		explain : "...",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[17][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - ... ",
		explain : "...",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[17][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  ...",
		explain : "...",
		skill : "- ' ...'",
	}
}
global.skill_exp_level5[18][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 정보 부족 카페에 누가 좀 알려줘",
		explain : "....",
		skill : "- ' ...'",
	}
}
global.skill_exp_level5[18][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - ... ",
		explain : "...",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[18][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - ... ",
		explain : "...",
		skill : "- ' .... '",
	}
}
global.skill_exp_level5[18][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ E ] -  ...",
		explain : "...",
		skill : "- ' ...'",
	}
}

global.skill_sang[0][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 가르기 / 회전베기 ",
		explain : " 직선방향으로 붓을 긋습니다. 시전도중 한번 더 누르면 주변을 휘두릅니다.",
		skill : "- ' 돌진하여 자신이 이동한 경로에 붓자국을 남긴다. [ 9 DMG ] '\n- ' 가르기 시전이 끝나기 직전, 한번 더 사용하면 데미지를 추가로 준다.[ 15 DMG ] '",
	}
}
global.skill_sang[0][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 문무백관",
		explain : " 자신의 무기를 활로 바꿉니다.\n 무기에 따라 [ D ][ W ]의 스킬이 변경됩니다.",
		skill : "\n- ' 무기가 바뀔 때마다 4초간 [상투 버프]를 부여합니다.'\n- '버프 효과: 타격시 기 회복 + 25%'",
	}
}
global.skill_sang[0][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 무아지경",
		explain : "고도의 집중력으로 한 획을 긋습니다.",
		skill : "- ' 전방으로 붓에 힘을 담아 공격합니다. 가진 버프를 3초 증가시킨다.[ 14 DMG ]'",
	}
}
global.skill_sang[0][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ ! 이름 ] - 이리오너라",
		explain : "적이 자신에게 오게 하도록 명령합니다.",
		skill : "- ' 채팅창에 [ ! 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 해당 영웅이 자신에게 순간이동 합니다. '",
	}
}
global.skill_sang[1][0] = {
	ui_type : 1,
	attack_type : 1,
	Dskill : global.normal_attack, 
	attack_type1 : 1, 
	Qskill : { 
		name : " [ D ] - 활쏘기",
		explain : "적을 조준하여 활을 발사합니다.",
		skill : "- ' 전방을 향해 화살을 4연발 발사한다. [ 11 DMG ] '",
	}
}
global.skill_sang[1][1] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ Q ] - 문무백관",
		explain : " 자신의 무기를 붓으로 바꿉니다.\n 무기에 따라 [ D ][ W ]의 스킬이 변경됩니다.",
		skill : "\n- ' 무기가 바뀔 때마다 4초간 [상투 버프]를 부여합니다.'\n- '버프 효과: 타격시 기 회복 + 25%'",
	}
}
global.skill_sang[1][2] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ W ] - 백발백중",
		explain : "폭탄을 부착한 화살을 발사합니다. \n 최대 차징 시 3갈래로 발사합니다.",
		skill : "- ' 직선으로 활을 쏩니다. 화살은 벽이나 플레이어에게 박힙니다. '\n- ' 박힌 화살은 3초뒤 폭발하여 [ 12 DMG ]를 줍니다. '\n- ' 무기를 바꾸어 즉시 폭발을 일으킬수 있습니다. '",
	}
}
global.skill_sang[1][3] = {
	ui_type : 0,
	attack_type : 1,
	Dskill : { 
		name : " [ ! 이름 ] - 이리오너라",
		explain : "적이 자신에게 오게 하도록 명령합니다.",
		skill : "- ' 채팅창에 [ ! 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 해당 영웅이 자신에게 순간이동 합니다. '",
	}
}

/*
global.skill_exp[15] = {
	Dname : " [ D ] - 힐",
	Dexplain : "자신과 자신 전방의 아군을 회복시킨다",
	Dskill : "- 자신에게 초당 HP + 0.7(40)\n- 아군에게 초당 HP + 1.5(40)",
	Qname : " [ Q ] - 사이렌",
	Qexplain : "자신과 자신 주위의 아군을 회복시킨다.",
	Qskill : "초당 HP + 0.9(40)\n-' 쿨타임이 있으니 신중하게 사용해야 한다. '",
	Wname : " [ A ] - 부활",
	Wexplain : "시체 상태인 아군을 체력 100의 상태로 즉시 부활시킨다.",
	Wskill : "- A키로 시전",
	Ename : " [ E ] - 기도",
	Eexplain : " 생명을 잃은 동료들을 모두 다시 일으키는 기적이 일어난다. ",
	Eskill : "-' 전장에 시체 상태인 아군 모두를 부활시킨다. '",
	Pname : "■ LV 4 ■ [ 패시브 ] - 희생  ",
	Pexplain : " 자신이 죽으면 자신의 모든 동료들이 천사의 가호를 받게 됩니다. ",
	Pskill : "-'자신이 사망할 시 아군 모두에게 상당량의 경험치를 준다.'",
}
global.skill_exp[12] = {
	Dname : " [ D ] - 메테오",
	Dexplain : "긴 준비시간 후 지정된 위치에 메테오를 발사한다.",
	Dskill : "-' 40 DMG '\n-' 타이밍에 맞춰 A키로 발사. '\n-' 시전 중 움직일 수없다. '",
	Qname : " [ Q ] - 슬레이브",
	Qexplain : "긴 준비시간 후 지정된 위치에 슬레이브를 발사한다.",
	Qskill : "-' 40 DMG '\n-' 피격시 스킬중단. '\n-' 키다운으로 발사지점을 확인가능 '",
	Wname : " [ W ] - 훈장",
	Wexplain : "아군의 마나를 회복시킨다.",
	Wskill : "-' 주변에 아군이 없다면 본인의 마나를 회복한다. '",
	Ename : " [ E ] - 방화계",
	Eexplain : "즉시 [ 메테오 ] 시전한다.",
	Eskill : "-' 기본 [ 메테오 ]보다 지속시간이 짧다. '",
	Pname : "■ LV 3 ■ [ 패시브 ] - 파이어볼  ",
	Pexplain : "자신의 A스킬이 [ 파이어 볼 ]이 된다.",
	Pskill : "-' 10 DMG '",
}
global.skill_exp[10] = {
	Dname : " [ D ] - 은신",
	Dexplain : "자신의 주변을 공격한뒤 은신 상태가 된다.",
	Dskill : "- 15 DMG\n-' 매 4초 이내 재시전 시 마나 6을 추가로 소모한다.'",
	Qname : " [ Q ] - 물고기버프",
	Qexplain : "자신 주위의 아군에게 물고기 버프를 준다.",
	Qskill : "- ' 버프효과: HP/스테미너 자동회복 '",
	Wname : " [ W ] - 물 귀신",
	Wexplain : "벽 넘어의 적을 침수시킨다.",
	Wskill : "- ' 25 DMG '\n-' 작은 벽을 넘을 수 있다. '\n-' 피격당한 적은 시야가 3초동안 차단된다. '",
	Ename : " [ E ] - 소나기",
	Eexplain : "세차게 비가 내리고 나면, 몸이 한결 차분해지고 시원해 집니다.",
	Eskill : "-' 아군 전체 은신 상태가 된다. '",
	Pname : "■ LV 1 ■ [ A ] - 분수  ",
	Pexplain : "자신의 A스킬이 [ 분수 ]가 된다.",
	Pskill : "- '22 DMG '",
}
global.skill_exp[19] = {
	Dname : " [ D ] - 텔레포트",
	Dexplain : "자신의 주변을 공격한뒤 랜덤한 위치로 이동한다.",
	Dskill : "- 27 DMG'\n-' 시전 중 움직일 수없다. '",
	Qname : " [ Q ] - 날리기",
	Qexplain : "자신 주위의 적을 날려 적을 랜덤한 위치로 이동시킨다.",
	Qskill : "- 20 DMG",
	Wname : " [ W ] - 도깨비 안개",
	Wexplain : "아군 과 적군 모두 한 자리로 모이게 한다.",
	Wskill : "-' 강제 한타 '",
	Ename : " [ 패시브 ] - 풍신보법  ",
	Eexplain : "자신의 이동속도가 증가한다.",
	Eskill : "-'....'",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[7] = {
	Dname : " [ D ] - 거대화",
	Dexplain : "자신의 크기를 증가 시킨다.",
	Dskill : "- ' 피격시 작아진다 '\n- ' 3레벨 이후 2번의 보호막이 생긴다.. '",
	Qname : " [ Q ] - 흔들어치기",
	Qexplain : "흔들흔들",
	Qskill : "- ' 10 DMG '\n- ' 크기가 잠깐 커졌다 원래대로 돌아온다. '",
	Wname : " [ W ] - 으라차차",
	Wexplain : "사용시 거대화 지속시간을 초기화 시켜 더 오랫동안 유지하게 한다.",
	Wskill : "- ' 10 DMG '\n- ' 으라차차차차차차차차차차차차 '",
	Ename : " X ",
	Eexplain : "....",
	Eskill : "- ' .... '",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 신화  ",
	Pexplain : "자신의 레벨이 오를 수록 D스킬의 크기가 증가한다.",
	Pskill : "- ' 모든 아이템 쿨타임 감소에 대한 효과가 50% 감소한다. '",
}
global.skill_exp[29] = {
	Dname : " [ D ] -장미덩굴",
	Dexplain : "덩굴을 직선으로 발사하여 적을 가둔다.",
	Dskill : "- ' 13 DMG '-\n ' 시전중 A키를 누르면 덩굴을 거두며 데미지를 준다.'",
	Qname : " [ Q ] - 가시정원",
	Qexplain : "둥그런 장미정원을 자신의 주변에 만든다.",
	Qskill : "- 17 DMG \n-' 시전중 Q키를 다시 한번 누르면 정원 안쪽을 공격한다 .'",
	Wname : " [ W ] - 독나비",
	Wexplain : "나비들이 조용히 나풀 거린다. 이 나비들은 아무 소리없이 적의 피를 빨아 먹는다.",
	Wskill : "- 초당 0.35(40) DMG \n-' 비기절 공격 '",
	Ename : " [ E ] - 할퀴기",
	Eexplain : "자신 주위의 적들을 밀어낸다.",
	Eskill : "- 20 DMG",	
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[3] = {
	Dname : " [ D ] - 석궁",
	Dexplain : "부채꼴 범위로 화살을 4번연속 발사하여 적을 공격한다. ",
	Dskill : "- 15 DMG\n-' 레벨이 오를수록 마나 소모량 감소 '",
	Qname : " [ Q ] - 피스톨",
	Qexplain : "지정된 방향대로 6갈래 공격을 가한다.",
	Qskill : "- 40 DMG",
	Wname : " [ W ] - 저격",
	Wexplain : "저격 태세를 취한다. 5초 뒤 지정된 조준선에 맞춰 저격한다.",
	Wskill : "- 120 DMG \n-' 피격시 저격태세가 해제된다. '",
	Ename : " [ E ] - 생식",
	Eexplain : "전방의 적을 잡아먹어 장기간 행동불능 상태로 만든다.",
	Eskill : "-' 잡아먹힌 적은 점점 HP가 감소한다. '\n-' 잡아 먹은 상태에서 피격시 잡아먹힌 적은 즉시 행동불능 상태에서 해체된다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[8] = {
	Dname : " [ D ] - 땅굴파기",
	Dexplain : "잠깐의 준비 후 앞으로 짧게 순간이동 하며 주위의 적에게 피해를 준다.",
	Dskill : "- 25 DMG\n-' 레벨이 오를수록 마나 소모량 감소 '",
	Qname : " [ Q ] - 화산버프",
	Qexplain : "자신 주위의 아군에게 [ 화산 버프 ]를 부여한다.",
	Qskill : "- ' 버프효과: 공격력 1.5배 '",
	Wname : " [ W ] - 핵",
	Wexplain : "핵 발동 준비를 한다. 10초 뒤 핵이 터지며 전장에있는 아군과 적군 모두 데미지를 준다.",
	Wskill : "- 아군에게 50 DMG / 적에게 70 DMG \n-' 시전중 움직일 수 없다.'\n-' 준비도중 피격시 스킬중단 '",
	Ename : " [ E ] - 종말핵",
	Eexplain : "종말핵 발동 준비를한다. 20초 뒤 핵이 터지며 전장의 모든 적을 즉사 시킨다.",
	Eskill : "- 아군에게 70 DMG / 적 즉사 \n-' 시전중 움직일 수 없다.'\n-' 준비도중 피격시 스킬중단 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[16] = {
	Dname : " [ D ] - 점프",
	Dexplain : " 단거리를 잽싸게 점프한다.궤도에 적군이 있다면 타격을 입힌다.",
	Dskill : "- ' 15 DMG '\n-' 중간 크기의 지형지물을 넘나 들수있다. '\n-' 피격시 스킬중단 '",
	Qname : " [ Q ] - 바이크",
	Qexplain : "바이크를 소환하여 타고 다닌다. 이 바이크와 부딪히면 적은 타격을 받는다.",
	Qskill : "- ' 15 DMG '\n-' 탑승 시 이속증가  '\n-' 피격시 스킬중단 '",
	Wname : " [ W ] - 멀리뛰기",
	Wexplain : "칼루이스보다 더 멀리 점프합니다. 진정한 양아치존이 아닐 수 없다.",
	Wskill : "- ' 35 DMG '\n-' 꽤 큰 크기의 지형지물을 넘나 들수있다. '\n-' 피격시 스킬중단 '",
	Ename : " [ E ] - 개발길질",
	Eexplain : "발로 마구 짓밟아서 비참하게 죽인다. 발에 밟혀 죽은 사람은 이 게임에서 가장 큰 굴욕을 느낀다.",
	Eskill : "- ' 5 DMG '\n-' 기절 공격 이지만 기절걸린 적에게 사용가능 하다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[6] = {
	Dname : " [ D ] - 소세지 덜렁 거리기",
	Dexplain : "소세지를 덜렁거려 타격을 입힌다.",
	Dskill : "- 23 DMG\n-' 레벨이 오를 수록 마나 소모량이 증가한다. '",
	Qname : " [ Q ] - 소세지 장사	",
	Qexplain : " 소세지를 뿌려서 자신과 주변 아군들의 체력을 회복 한다.",
	Qskill : "- 초당 HP + 1.5(40)",
	Wname : " [ W ] - 멀리뛰기",
	Wexplain : "소세지 대가리 꼭다리를 이용해, 컴파스처럼 찝어 돌아서 이동 합니다.",
	Wskill : "- ' 레벨이 오를 수록 마나 소모량이 증가한다. '",
	Ename : " [ 패시브 ] - 존나커짐 ",
	Eexplain : "소세지가 말도 안되게 엄청 커집니다. ",
	Eskill : "- '[ 페널티 ] : D 스킬 사용시 크기가 일시적으로 작아진다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[4] = {
	Dname : " [ D ] - 진동",
	Dexplain : " 진동을 일으켜 자기 주변의 범위의 적을 기절 시킵니다.",
	Dskill : "- 10 DMG\n-' 2.5 초 기절 '\n-' 시전 도중 피격시 스킬중단 '",
	Qname : " [ Q ] - 지진",
	Qexplain : " 진동의 힘이 커져, 지진이 일어납니다.",
	Qskill : "- 20 DMG\n-' 3 초 기절 '\n-'레벨이 오를 수록 마나 소모량이 감소 한다.  '",
	Wname : " [ W ] - 대지진",
	Wexplain : " 아버지의 영혼이 자신의 두피에서 돋아나, \n그 분의 능력과 함께 대지진을 일으킵니다. ",
	Wskill : "- 35 DMG / 초당 4(40) DMG\n-' 가까운 적에게는 5초 기절, 멀리있는 적에게는 비기절 공격을 준다. '\n-' 피격시 스킬중단 '",
	Ename : " [ E ] - 개발길질",
	Eexplain : " 분노한 아버지가 괴성을 지르며 미친 지진을처럼 일으킵니다. ",
	Eskill : "- 55 DMG\n-' 피격시 스킬중단 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[13] = {
	Dname : " [ D ] - 빨대",
	Dexplain : "적군의 체력과 마나, 경험치를 빨대로 쪽쪽 빨아 먹습니다.",
	Dskill : "- 초당 0.3(40) DMG\n-' 비기절 공격 '\n-' 피격시 스킬중단 '",
	Qname : " [ Q ] - 사과나무",
	Qexplain : "나무를 펼쳐 아군의 체력을 회복하고, 적의 시야로 부터 가려 줍니다.",
	Qskill : "- 초당 HP + 0.06(40)\n-''",
	Wname : " [ % 이름 ] - 데스노트",
	Wexplain : "데스노트를 이용하여 적군의 이름을 적습니다. 적힌 적은 침을 기도로 삼켜 30초 뒤 즉사합니다.",
	Wskill : "- ' 채팅창에 [ % 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 8초동안 적힌 사람의 이름을 씁니다. '\n- ' 피격시 스킬중단 '",
	Ename : " [ E ] - 루크의 노트",
	Eexplain : " 노트에 적군의 이름이 랜덤하게 적힙니다.",
	Eskill : "- 즉사\n-' 자신도 죽을 수 있다. '\n- ' 랜덤으로 전장에 있는 아군/적군을 사망시킨다. '\n- 4레벨 미만의 플레이어는 사망하지 않는다.",
	Pname : "",
	Pexplain : "",
	Pskill : "",
}
global.skill_exp[23] = {
	Dname : " [ D ] - 무적의 날개짓",
	Dexplain : "성스러운 날개의 힘으로 자기 자신은 일정시간 동안 날개버프를 가집니다.",
	Dskill : "- 버프효과 : 무적",
	Qname : " [ Q ] - 날개버프",
	Qexplain : " 자기 주변의 동료들에게도 날개의 힘을 나누어 줍니다. ",
	Qskill : "- ' 아군과 자신에게 날개버프 '\n-' 쿨타임이 길기 때문에 신중하게 사용해야 한다. '",
	Wname : " [ W ] - 황금의 날개짓",
	Wexplain : "황금날개의 힘을 이용하여 자신과 주변 동료들의 마나와 경험치를 증가 시킵니다.",
	Wskill : "-' 황금날개 스킬은 3레벨 이상의 모자에게는 힘을 주지 않는다.(자기 자신 제외)",
	Ename : " [ E ] - 정의의 날개짓",
	Eexplain : " 긴 준비 시간 후 앞으로 날아가며 적을 썰어버립니다.",
	Eskill : "- 70 DMG\n-' 시전 도중 방향 전환 불가'\n' 피격시 스킬중단 '",
	Pname : " ■ LV 3 ■ [ 패시브 ] - 황금의 날개짓",
	Pexplain : "황금날개의 힘을 이용하여 자신과 주변 동료들의 마나와 경험치를 증가 시킵니다.",
	Pskill : "- ' 일정확률로 기를 소모하지 않고 자동으로 시전 '",	
}
global.skill_exp[24] = {
	Dname : " [ D ] - 전기",
	Dexplain : " 전기장을 발생시켜 주변인들을 감전시킵니다. ",
	Dskill : "- 14 DMG\n- ' 아군 / 적군 모두에게 전기 디버프를 줍니다. '/n- ' 버프효과 : 행동제어 '  ",
	Qname : " [ Q ] - 피뢰침",
	Qexplain : " 길쭉한 전기칼을 재빠르게 소환하여 적을 찌릅니다. ",
	Qskill : "- 10 DMG",
	Wname : " [ W ] - 섬광",
	Wexplain : "220W 전구가 한번 번쩍이게 되면 \n기절해 있던 아군이 깨어 나고, 약간의 체력이 회복 됩니다.",
	Wskill : "- HP + 10\n- ' 기절해 있던 전장의 모든 아군 기절해제 '",
	Ename : " [ E ] - 해킹",
	Eexplain : " 랜덤으로 은행계좌를 해킹하거나, 점수판을 조작하거나, 버프를 해킹 합니다.",
	Eskill : "- 랜덤으로 아래에 있는 스킬 중 한개를 실행\n-' 상대방의 돈을 감소시킵니다. '\n- ' 랜덤으로 버프적용 '\n- ' 아군의 점수를 증가시키고 적군의 점수를 깍음  '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[26] = {
	Dname : " [ D ] - 소총",
	Dexplain : " 소총을 연사합니다. \n이 총은 근거리에서는 타격을 입히지 못합니다.",
	Dskill : "- 10 DMG\n-' 레이싱 모드를 사용하면서 쏘는 것이 좋다. '\n-' 시전 도중 피격시 스킬중단 '",
	Qname : " [ Q ] - 구급치료",
	Qexplain : "구급용품을 이용하여 응급치료를 시작합니다. \n가까이오는 아군의 체력도 회복해 줍니다 .",
	Qskill : "HP + 0.08 \n-' 피격시 스킬중단 '",
	Wname : " [ W ] - 주포",
	Wexplain : " 커다란 주포를 순식간에 건설합니다. \n그 위용은 보는 것만으로도 떨게 합니다. ",
	Wskill : "- 40 DMG\n-' A키로 주포를 발사한다. / 시전 도중 움직일 수 없다 '\n-' 시전 시간동안 짜장 버프( 데미지 감소 )를 가집니다. '",
	Ename : " [ E ] - 탱크",
	Eexplain : "탱크는 적군을 짓밟아 죽이는데는 최고의 자가용 입니다.\n하지만 포는 주포보다 약합니다.",
	Eskill :"- 14 DMG\n-' D키로 발포한다.( 15 DMG )'\n-' 시전 시간동안 짜장 버프( 데미지 감소 )를 가집니다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[2] = {
	Dname : " [ D ] - 베기",
	Dexplain : "전방의 적을 짧게 돌려베기 합니다.",
	Dskill : "- ' 29 DMG '",
	Qname : " [ Q ] - 찌르기",
	Qexplain : "전방의 적을 빠르게 찌릅니다.",
	Qskill : "- ' 49 DMG '",
	Wname : " [ W ] - 일섬",
	Wexplain : "전방의 적을 즉사시켜버리는 초발도술.",
	Wskill : "- ' 즉사 '\n- ' 거대화 적용 불가 '\n- ' 피격시 스킬중단 '",
	Ename : " [ E ] - 외나무 베기",
	Eexplain : "잠깐의 준비 후 자신의 전방을 광범위한 범위로 베어버립니다.",
	Eskill : "- ' 14 DMG '\n- '기절 상태인 적에게도 데미지를 준다. '\n 적의 이동속도를 감소시킨다.",
	Pname : " ■ LV 4 ■ [ 패시브 ] - 무념",
	Pexplain : " 대쉬를 하지 않고 있으면 마나의 회복속도가 증가한다.",
	Pskill : "- ' 마나가 2배의 속도로 차오릅니다. '",
}
global.skill_exp[11] = {
	Dname : " [ D ] - 물줄기",
	Dexplain : "지정된 방향에 물줄기를 뿜어 적을 공격합니다.",
	Dskill : "- 18 DMG\n-' 3레벨 이후 범위가 증가한다. '",
	Qname : " [ Q ] - 얼음",
	Qexplain : "적에게 얼음큐브를 던집니다. \n얼음을 맞은 적은 얼음 디버프에 걸립니다.",
	Qskill : "- 10 ~ 26 DMG\n-' 거리가 멀수록 데미지가 증가한다. ' \n-' 디버프효과 : 이동속도 감소 '",
	Wname : " [ W ] - 달빛 요정의 장난",
	Wexplain : "달빛요정들의 축제에 초청 받은 자는, \n본연의 모습을 잃고 장난끼 어린 시절로 되돌아 갑니다.",
	Wskill : "- 16 DMG\n- ' 전장에 있는 모든 아군/적군은 크기가 일시적으로 감소한다. '\n- '적군에게 얼음 디버프를 준다. '",
	Ename : " [ E ] - 정령의 보호",
	Eexplain : " 정령들이 주변을 돌며 자신을 보호해 줍니다. ",
	Eskill : "- 10 DMG '",
	Pname : " ■ LV 1 ■ [ A ] - 물줄기",
	Pexplain : " 전방에 물줄기를 뿜어 적을 공격합니다.",
	Pskill : "- 12 DMG "
}
global.skill_exp[17] = {
	Dname : " [ D ] - 야차의 후각",
	Dexplain : "적을 추격하기 위해 대량의 SP( 노란 게이지)를 공급 받습니다.",
	Dskill : "- 10 DMG / Stemina + 400 ",
	Qname : " [ Q ] - 톱지르르",
	Qexplain : "광신적으로 톱질을 하며 전진 합니다.",
	Qskill : "- 17 DMG \n- '자신의 A스킬 효과를 받는다.'",
	Wname : " [ W ] - 율법",
	Wexplain : "마신의 율법에 따라 버프를 가진 적에게 데미지를 준 후 적들의 버프를 해제합니다.",
	Wskill : "- 12 DMG/n- ' 주위 적의 모든 버프/디버프를 해제시킨다. '\n- '준 데미지만큼 체력을 회복한다.'",
	Ename : " [ E ] - 습격",
	Eexplain : " 자신의 목표물 앞으로 순식간에 이동하여 척살합니다. ",
	Eskill : "- 19 DMG",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 야차의 강화",
	Pexplain : " 레벨이 오를수록 A스킬의 데미지와 공격속도가 증가합니다.",
	Pskill : "- ■ LV 1 ■ 10 DMG\n- ■ LV 2 ■ 17 DMG\n- ■ LV 3 ■ 19 DMG\n- ■ LV 4 ■ 19 DMG(가속) "
}
global.skill_exp[20] = {
	Dname : " [ D ] - 암살",
	Dexplain : "유령처럼 자신의 모습을 숨깁니다. 이동할 수 없습니다.",
	Dskill : "- ' 70 DMG '\n- ' 2초가 지난 다음부터 공격키를 누르면 영혼을 자르는 낫질을 할 수 있다. '\n- ' 피격시 스킬중단 '",
	Qname : " [ Q ] - 거미줄",
	Qexplain : "주변에 3갈래로 거미줄을 뿌려 적군을 움직이지 못하게 합니다.'\n-'피격시 스킬중단 '",
	Qskill : "- ' 초당 0.15(40) DMG '\n-' 비기절 공격 '",
	Wname : " [ W ] - 귀환",
	Wexplain : "시체 상태인 아군/ 적군을 체력 50으로 부활시킨다.",
	Wskill : "- ' 적에게 시전시 적군이 아군으로 환생한다. '\n- ' 부활 시  ■ LV 3 ■ 으로 만 부활한다. '\n- ' 피격시 스킬중단 '",
	Ename : " [ E ] - 묻지만 살인",
	Eexplain : "은신하면서 이동 할 수 있습니다. 은신 후 2초 뒤부터 타격 가능 합니다. ",
	Eskill : "- ' 90 DMG '\n-' 피격시 스킬중단 '",
	Pname : " ■ LV 3 ■ [ 패시브 ] - 사신의 암살",
	Pexplain : "낫질의 공포도가 증가합니다.",
	Pskill : "- ' 90 DMG '\n- ' D스킬이 강화되어 더 큰 데미지를 준다. '\n- ' 피격시 스킬중단 '",
}
global.skill_exp[28] = {
	Dname : " [ D ] - 울기",
	Dexplain : "울보처럼 질질짜면서 자신의 체력을 회복합니다.",
	Dskill : "- ' 자신이 타격을 받아 기절했을때만 사용가능합니다. '\n- ' 기절 시간동안에 스킬이 지속된다. '",
	Qname : " [ Q ] - 비행",
	Qexplain : " 얼굴이 약간 커지면서 어느 곳이든 이동할 수 있게 됩니다. ",
	Qskill : "- ' 15 DMG '\n- ' 지속시간 동안 모든 구조물을 넘을 수있 습니다. '\n-' 피격시 스킬중단 '",
	Wname : " [ ~ 이름 ] - 사탕발림",
	Wexplain : "사탕발린 말로 팀을 바꾸게 합니다, ",
	Wskill : "- ' 채팅창에 [ ~ 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 입력된 적군이 아군으로 편입됩니다.'\n- ' 과도한 편입은 배신과 배반 시스템을 작동 시킬 수 있습니다. '",
	Ename : " [ E ] - 뽀뽀",
	Eexplain : "아군에게 뽀뽀를 해주면 아군의 힘이 쌔집니다.",
	Eskill : "- ' 아군에게  짧은 시간 화산 버프를 준다.\n- ' 버프효과 : 공격력 1.8 배 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[18] = {
	Dname : " [ D ] - 부채질",
	Dexplain : " A4용지를 펄럭이며 바람을 솔솔 일으킵니다. \n체력을 조금씩 깎으며 이동을 불편하게 합니다.",
	Dskill : "- 초당 0.4(40) DMG\n- '비기절 공격 '\n- '피격시 스킬중단 '",
	Qname : " [ Q ] - 선풍기",
	Qexplain : " 선풍기를 켜서 더 크고 넓은 범위에 바람을 일으킵니다. \n회전 가능합니다.",
	Qskill : "- 초당 0.5(40) DMG\n- '비기절 공격 '\n- '피격시 스킬중단 '",
	Wname : " [ A ] - 꽁꽁",
	Wexplain : "일반 타격공격으로 적군을 얼릴 수 있게 됩니다.",
	Wskill : "- 10 DMG/n- '적에게 얼음 디버프를 준다.'\n-버프효과 : 이동속도 감소",
	Ename : " [ E ] - 마나존",
	Eexplain : "얼음 속에 갇혀 있던 대 마나를 방출 시켜 \n아군이 그 힘을 나누어 쓰게 합니다.",
	Eskill : "- 전장의 모든 아군은 마나 회복속도가 일정시간 동안 대폭 증가한다.",
	Pname : " ■ LV 4 ■ [ 패시브 ] - 빙신( 氷身 )",
	Pexplain : "타격 데미지가 영구히 감소 됩니다.",
	Pskill : "- ■ LV 4 ■ 50% 받는 데미지 감소 "
}
global.skill_exp[9] = {
	Dname : " [ D ] - 1레벨 랜덤",
	Dexplain : "모든 모자 1차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
	Dskill : "- ' .... '",
	Qname : " [ Q ] - 2레벨 랜덤",
	Qexplain : " 모든 모자 2차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
	Qskill : "- ' .... '",
	Wname : " [ W ] - 3레벨 랜덤",
	Wexplain : "모든 모자 3차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
	Wskill : "- ' .... '",
	Ename : " [ E ] - 4레벨 랜덤",
	Eexplain : "모든 모자 4차 스킬 중에서 랜덤으로 스킬을 1개 사용합니다.",
	Eskill : "- ' .... '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[5] = {
	Dname : " [ 패시브 ] - 부활",
	Dexplain : "당신이 사망했을 때 일정마나를 소비하고 [ 고자파 ]를 사용하면서 1회 부활합니다.",
	Dskill : "- ' 내가 고자라니'\n- '부활 시 체력 50'",
	Qname : " [ Q ] - 수류탄 삼키기",
	Qexplain : " 수류탄을 삼켜 주변에게 데미지를 주고\n자신의 체력을 1로 만듭니다. ",
	Qskill : "- ' 20 DMG '",
	Wname : " [ W ] -  고자파",
	Wexplain : "고자의 힘을 파동으로 내 뿜습니다.",
	Wskill : "- 12 DMG ",
	Ename : " [ E ] - X",
	Eexplain : "- ' .... '",
	Eskill : "- ' .... '",
	Pname : " ■ LV 2 ■ [ 패시브 ] - 고자의 저주",
	Pexplain : "적이 당신을 죽였을때 그 적은 자신을 죽인 벌을 받습니다.",
	Pskill : "- ' 80 DMG '\n- '저주에 걸린 적이 85체력 이하 라면 고자가 된다.'",
}
global.skill_exp[25] = {
	Dname : " [ D ] - 물먹이기",
	Dexplain : "적군에게 물을 먹입니다. 기절해 있더라도 먹일 수 있습니다.",
	Dskill : "- ' 15 DMG'\n- ' 비기절 공격 '",
	Qname : " [ Q ] - 램프",
	Qexplain : " 램프 요술램프를 문질러서 잠자는 요정을 불러 봅니다. 아이템의 쿨타임이 회복됩니다.",
	Qskill : "- ' 아이템 쿨타임 10초 감소 '",
	Wname : " [ W ] - 정전기",
	Wexplain : "사막의 지배자인 술탄은 정전기를 이용합니다.\n백성들은 이를 어둠의 마법이라 하여 두려워 하였습니다.",
	Wskill : "- ' 10 DMG '\n- '적에게 전기 디버프를 준다.'",
	Ename : " [ E ] - 피라미드",
	Eexplain : "- 거대한 피라미드 영역을 생성합니다. 이 영역에서는 아군의 체력은 회복되고, \n적군의 체력은 감소합니다.",
	Eskill : "- ' 아군 초당 HP + 0.11(40)'\n- '초당 0.11(40) DMG'\n- ' 시전 중에는 어떤한 행동도 할수 없다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[31] = {
	Dname : " [ D ] - 블럭",
	Dexplain : "이계에서 온 이 네모난 건설자는, 이계로부터 블럭을 소환할 수 있습니다.",
	Dskill : "- ' 40 DMG '\n- '시전 중 무적 버프를 획득한다.'\n- '소환된 블럭은 벽판정'",
	Qname : " [ Q ] - 발사기",
	Qexplain : " 일정시간 동안 화살을 발사하는 발사기를 설치한다.",
	Qskill : "- '발당 10 DMG'\n- '발사기는 4초후 사라진다.",
	Wname : " [ W ] - 자폭",
	Wexplain : "음산한 소리를 내며 돌아다니다가 누군가 자신을 공격하면\n핵보다 강한 위력으로 폭발해 버립니다.",
	Wskill : "- ' 즉사 '\n- ' 자폭 후 ■ LV 2 ■ 로 강등된다... '",
	Ename : " [ E ] - 창조",
	Eexplain : "신비한 호박속에서는 세상의 구조를 바꿀 수 있는 마력을 발산합니다.\n16초 뒤 맵을 바꿉니다.",
	Eskill : "- ' 채팅창에 원하는 맵 이름을 입력하여 갈 수있습니다.(EX. 돌다리)\n- '맵이 바뀌면 아군/적군 모두 체력 100이 됩니다. '\n- ' 피격시 스킬중단 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[39] = {
	Dname : " [ D ] - 빔소드",
	Dexplain : "날파리같이 튀어 다니며 공격합니다.",
	Dskill : "- ' 15 DMG '\n- '시전 시간동안 이동속도가 증가합니다.'\n- ' 피격시 스킬중단 '",
	Qname : " [ Q ] - 레비건",
	Qexplain : " 사방으로 총을 튀기며 무자비한 공격을 합니다.",
	Qskill : "- ' 발당 16 DMG '\n- ' 시전 중에는 방향전환만 가능하다. '\n- ' 피격시 스킬중단 '",
	Wname : " [ W ] - 지뢰",
	Wexplain : "즉시 자신의 몸을 숨깁니다.",
	Wskill : "- ' 30 DMG '\n- 'A키를 누르면 자신의 주변에 4연속 폭발을 일으키면서 적에게 피해를 준다 '\n- ' 숨는 도중 피격시 스킬중단 '",
	Ename : " [ E ] - 절명검",
	Eexplain : " 검을 소환하여 적군을 내려 칩니다.",
	Eskill : "- ' 81 DMG '",
	Pname : " ■ LV 4 ■ [ A ] - 절명검",
	Pexplain : "검을 소환하여 적군을 내려 칩니다.",
	Pskill : "-' 81 DMG '\n- ' 기본 공격시 6% 의 확률로 [ 절명검 ] 스킬이 시전됨 ' "
}
global.skill_exp[30] = {
	Dname : " [ D ] - 빗자루 날리기",
	Dexplain : "요술빗자루들이 들썩거리면 아군과 지신은 랜덤한 위치로 텔레포트를 하게 됩니다.",
	Dskill : "- ' 4 DMG '\n- '시전 중 피격시 자신의 텔레포트가 중단된다.'",
	Qname : " [ Q ] - 그림자망토",
	Qexplain : " 흑마술의 기본인 어둠의 술법으로, 빛을 반사시켜서 자신의 모습을 감춥니다.",
	Qskill : "- ' 버프효과 : 은신 '",
	Wname : " [ W ] - 마녀의 저주",
	Wexplain : "마녀에게 저주 받은 자들은 식은땀을 흘리며 자신의 정신력을 소모시킵니다.",
	Wskill : "- ' 지정된 마법진 위치에 디버프를 준다. '\n- ' 디버프 효과 : 마나 감소 '",
	Ename : " [ E ] - 백귀야행",
	Eexplain : " 시체를 뜯어 먹으며 사는 까마귀들의 혼령이 대마녀의 부름에 따라 이계의 황혼으로부터 재림 합니다",
	Eskill : "- ' 9 DMG '\n- '적을 따라다니며 방해한다.'",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[21] = {
	Dname : " [ D ] - 와이파이 스캔",
	Dexplain : "와이파이를 스캔하여 숨겨진 유닛을 찾아 냅니다",
	Dskill : "- ' 기술을 시전할 시 자신의 시야 안에 은신해 있는 적군들의 모습이 \n잠시동안 보이게 된다. '",
	Qname : " [ Q ] - MT 광선검",
	Qexplain : "MT광선검을 소환하여 레이저 빔으로 적들을 벱니다. ",
	Qskill : "-' 15 DMG '\n- ' 피격시 스킬중단 ' ",
	Wname : " [ W ] - 슬라이드",
	Wexplain : " 미끄러져 나아 갑니다.",
	Wskill : "- ' 10 DMG'",
	Ename : " [ E ] - 회전 광선검",
	Eexplain : "자신의 위치에 돌아가는 회전 광선검을 설치하여 주변적에게 피해를 줍니다.",
	Eskill : "- ' 15 DMG '",
	Pname : " ■ LV 1 ■ [ 패시브 ] -  거대로봇",
	Pexplain : "레벨이 오르면 오를수록 크기가 점점 커집니다.",
	Pskill : "-' ■ LV 1 ■ X 1.4 '\n-' ■ LV 2 ■ X 1.6 '\n-' ■ LV 3 ■ X 1.8 '\n-' ■ LV 3 ■ X 2.0 '",
}
global.skill_exp[32] = {
	Dname : " [ D ] - 검술",
	Dexplain : "잠깐의 준비 후 검을 뽑은 후 일정시간 동안 전투태세로 바뀐다.",
	Dskill : "- 25 DMG \n-' 피격시 전투태세가 해제된다. '",
	Qname : " [ Q ] - 마법",
	Qexplain : "긴 준비시간 후 지정된 방향으로 메테오를 발사한다.",
	Qskill : "-' 40 DMG '\n-' 타이밍에 맞춰 A키로 발사. '\n-' 시전 중 움직일 수없다. '",
	Wname : " [ W ] - 힐",
	Wexplain : "자신과 자신 전방의 아군을 회복시킨다",
	Wskill : "- 자신에게 초당 HP + 0.7(40)\n- 아군에게 초당 HP + 1.5(40)",
	Ename : " [ E ] - 3가지 기술",
	Eexplain : "[ E + D/Q/W] 를 사용해 다양한 스킬을 사용하실 수 있습니다.",
	Eskill : "-' [ E + D ] : 암전 '\n-'  [ E + Q ] : 진동 '\n-'  [ E + W ] : 날개 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[22] = {
	Dname : " [ D ] - 쌍도끼소환 ",
	Dexplain : " 쌍도끼를 한 번 소환합니다. 그 다음부터는 소환하지 않고, \n일반 공격키로 쌍도끼를 사용 가능합니다.",
	Dskill : "- ' 19 DMG '\n- ' 쌍도끼 카운트 : 해당 효과는 3번 피격시 사라집니다. '\n- ' 쌍도끼 카운트가 적어질수록 19 /23/ 27 DMG 를 준다. '",
	Qname : " [ Q ] - 도약회심",
	Qexplain : " 일시적으로 커지며 점프하면서 도끼를 내리 찍습니다. \n도끼가 소환되어 있지 않은 상황에서는 그냥 점프만 합니다. ",
	Qskill : "- ' 19 DMG '\n- '  중간 크기의 지형지물을 넘나 들수있다.  '\n- '  쌍도끼 상태가 아니면 소모값이 3배로 증가한다.  '",
	Wname : " [ W / 패시브 ] - 열정",
	Wexplain : "랜덤 확률로 화산버프가 발동 합니다.",
	Wskill : "- ' 버프효과 : 공격력 1.5 배 '\n- ' 확률이 아니더라도 W키로 발동시킬수 있다. '",
	Ename : " [ E ] -으라차차차차",
	Eexplain : "아링의 몸이 순간적으로 거대해지면서 도끼를 소환 합니다.",
	Eskill : "- ' 으라차차차차차차차차차차차차차차차차차 '",
	Pname : " ■ LV 1 ■ [ D / 패시브 ] -  도끼 투척 / 투지",
	Pexplain : "자신이 가지고 있던 도끼를 던져 직선상의 경로의 적에게 피해를 줍니다.\n잃은 체력의 1.6%당 1% 데미지감소가 적용된다.",
	Pskill : "- '자신의 A스킬 데미지에 비례한다. '\n- ' 해당스킬 사용후 A스킬이 원상태로 돌아간다. '",
}
global.skill_exp[33] = {
	Dname : " [ D ] - 슬레이브",
	Dexplain : "위저드의 [ 슬레이브 ]를 지정된 위치에 차징 없이 바로 날린다. ",
	Dskill : "-' 40 DMG '\n-' 피격시 스킬중단. '\n-' 시전 중 움직일 수없다. '",
	Qname : " [ Q ] - 전투이탈",
	Qexplain : " 텔레포트를 해서 자신의 주변 랜덤 위치로 이동한다.",
	Qskill : "- ' 긴급탈출 '",
	Wname : " [ W ] -파이어월",
	Wexplain : "위저드의 [ 메테오 ]를 회전하며 시전한다.",
	Wskill : "-' 40 DMG '\n-' 타이밍에 맞춰 A키로 발사. '\n-' 시전 중 움직일 수없다. '",
	Ename : " [ E ] - 사일런트",
	Eexplain : "적군의 모든 스킬과 버프를 해제하고 충격을 줍니다.",
	Eskill : "-' 만약에 적군이 스킬을 쓰거나 버프를 가지고 있을 시 그것을 없애고 모두에게 2.4초의 기절시간을 부여한다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[36] = {
	Dname : " [ D ] - 검기",
	Dexplain : " 검기를 날려 적을 베고, 자신의 모습을 잠시동안 사라지게 합니다.",
	Dskill : "- ' 16 DMG '\n-' 시전 시 2.2초 은신 '",
	Qname : " [ Q ] - 뒤돌아 베기",
	Qexplain : "즉시 뒤로 순간이동 한뒤 한번 검기를 날립니다.",
	Qskill : "- ' 12 DMG '\n-' 시전 시 2.2초 은신 '",
	Wname : " [ W ] -  뒤돌아 찌르기",
	Wexplain : "지정된 위치에 있는 적을 강하게 찔러 암살합니다.",
	Wskill : "- ' 40 DMG '",
	Ename : " [ E ] - 회전베기",
	Eexplain : "2개의 검을 양손에 잡고 휘둘러 \n강력한 바람을 일으켜 주변 적에게 연속피해를 줍니다.",
	Eskill : "- ' 13 DMG '\n-' 피격시 스킬중단 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[37] = {
	Dname : " [ D ] - 할로윈",
	Dexplain : "유령을 소환하여 적을 깜짝 놀라게 합니다.",
	Dskill : "- ' 9 DMG'",
	Qname : " [ Q ] - 신출귀몰.",
	Qexplain : "일정 시간이 되면 랜덤으로 적/아군의 위치로 이동합니다.",
	Qskill : "- ' 까꿍 '\n- ' 시전 후 6초동안 은신한다. '",
	Wname : " [ 패시브 ] - 영체(靈體)",
	Wexplain : "벽이나 사람에 막히지 않고 관통합니다.",
	Wskill : "- ' 모든 구조물을 무시하고 지나간다. '",
	Ename : " [ E ] - 초능력",
	Eexplain : " 아군들을 모두 공중부양 시킵니다.",
	Eskill : "- ' 모든 아군이 일정시간동안 벽이나 사람에 막히지 않고 관통한다.'",
	Pname : " ■ LV 4 ■ [ 패시브 ] -  괴기현상",
	Pexplain : "갑자기 커지기도 하고, 작아지기도 합니다.",
	Pskill : "- ' 몇초마다 크기가 랜덤하게 바뀝니다. '",
}
global.skill_exp[34] = {
	Dname : " [ D ] - 물고기버프",
	Dexplain : "자신의 주위에 있는 아군들에게 물고기버프를 부여합니다.",
	Dskill : "- ' 버프효과: HP/스테미너 자동회복 '",
	Qname : " [ Q ] - 그림자버프",
	Qexplain : " 자신의 주위에 있는 아군들에게 그림자버프를 부여합니다.",
	Qskill : "-  ' 버프효과: 은신 '",
	Wname : " [ W ] - 날개버프",
	Wexplain : "자신의 주위에 있는 아군들에게 날개버프를 부여합니다.",
	Wskill : "- ' 버프효과: 무적 '",
	Ename : " [ E ] - 화산버프",
	Eexplain : "자신의 주위에 있는 아군들에게 화산버프를 부여합니다.",
	Eskill : "- ' 버프효과: 공격력 1.8 배 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
global.skill_exp[38] = {
	Dname : " [ D ] - 인공지능 텔레포트",
	Dexplain : "자신의 주변을 공격한뒤 랜덤한 위치로 이동한다.",
	Dskill : "- ' 27 DMG '\n- ' 피격시 스킬중단 '",
	Qname : " [ Q ] - 실침당기기",
	Qexplain : " 실침을 이용하여 매우 빠르게 이동 합니다.",
	Qskill : "- ' 시전시 이동속도 증가 버프를 2초동안 가진다 '",
	Wname : " [ 패시브/ W ] - 세균가스",
	Wexplain : "위험한 맹독 가스가 몸에서 발사 되어 주변의 적에게 독 디버프를 준다.",
	Wskill : "- ' 디버프효과 : 체력 감소 '\n- ' 피격시 일정확률로 기 소모없이 시전된다. '",
	Ename : " [ E ] - 파리떼",
	Eexplain : "원형으로 빙빙도는 파리를 소환합니다. \n파리에 맞은 적은 힐벤 디버프에 걸립니다.",
	Eskill : "- ' 17 DMG '\n- ' 디버프효과 : 회복 금지 '",
	Pname : " ■ LV 4 ■ [ A ] -  식충이",
	Pexplain : "시체를 먹습니다.\n 죽은자를 먹으면 죽은자의 마나를 60상태로 만들고 전장에서 제외시킵니다.",
	Pskill : "- ' 10 DMG '\n- ' 시체 상태인 적을 먹으면 그 적을 완전히 소멸시킬 수 있습니다. '\n-	' 완전히 소멸한 적은 어떠한 상호작용도 받지못합니다.( EX.부활 ) '",
}
global.skill_exp[40] = {
	Dname : " [ A / D ] - 정권 / 날개정권",
	Dexplain : "주먹을 휘둘러 짧고 강하게 적에게 피해를 줍니다.",
	Dskill : "- ' 10 DMG '\n- ' [ D ] - 날개 정권 (14 DMG) '\n- ' 자신에게 걸린 버프/디버프를 해체하고 [ 정권 ]을 시전합니다.  '",
	Qname : " [ Q ] - 날라차기",
	Qexplain : "앞으로 돌려차기를 하며 특정 타이밍에 피해를 줍니다.",
	Qskill : "- ' 23 DMG '\n- ' 중간 크기의 지형지물을 넘나 들수있다. '\n- ' 피격시 스킬중단 '",
	Wname : " [ W ] - 팔괘장",
	Wexplain : "자신에게 가장 가까운 적에게 순간이동하여 피해를 줍니다.",
	Wskill : "- ' 16 DMG '\n- ' 쿨타임이 있으니 신중하게 써야한다. '\n- ' 대상의 버프를 제거한다. '",
	Ename : " [ E ] - 귀신각",
	Eexplain : "긴 준비시간 후 맵 곳곳을 랜덤으로 이동하며 마구 햘퀴어대며 공격합니다.",
	Eskill : "- ' 36 DMG '\n- ' 시전동안 날개버프를 얻는다. '\n- ' 버프효과 : 무적 '",
	Pname : " ■ LV 1 ■ [ 패시브 ] -  C O M B O",
	Pexplain : "격투가는 매 타격마다 힘을 쌓습니다.\n일정 힘이 쌓이면 아래와 같은 효과를 얻습니다.",
	Pskill : "- ' 3 STACK 이상 : 짜장 버프 '\n- ' 6 STACK 이상 : 물고기 버프'\n- ' 12 STACK 이상 : 화산 버프'",
}
/*
global.skill_exp[35] = {
	Dname : " [ D ] - 코끼리 점프",
	Dexplain : "귀여운 아기 코끼리가 꿈속에서 처럼 가볍게 뛰어 다닙니다.",
	Dskill : "- ' - 15 DMG '\n-' 중간 크기의 지형지물을 넘나 들수있다. '\n-' 피격시 스킬중단 '",
	Qname : " [ Q ] - 코끼리 코",
	Qexplain : " 자상한 엄마 코끼리가 아기 코끼리에게 줄 간식을 만듭니다."
	Qskill : "- ' 초당 0.3(40) DMG '\n-' 비기절 공격 '\n-' 피격시 스킬중단 '",
	Wname : " [ W ] - 코끼리 격노",
	Wexplain : "엄한 아빠코끼리가 화를 냅니다.",
	Wskill : "- ' - 27 DMG '\n-' 3초 기절 '\n-' 피격시 스킬중단 '",
	Ename : " [ E ] - 매머드 돌진",
	Eexplain : "고대의 조상들이 땅속에서 다시 나타나 부활하여 날뜁니다.",
	Eskill : "- ' 35 DMG '\n- ' 거대화 적용 불가 '\n- ' 피격시 스킬중단 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
	case spr_hat41:
	Dname : " [ D ] - 슬쩍숨기",
	Dexplain : "은근슬쩍 대변을 보고 숨습니다. \n대변은 밟은 적은 마나 디버프에 걸립니다. ",
	Dskill : "- ' 10 DMG '\n- ' 디버프효과 : 마나감소 '\n- ' A키를 눌러 숨기를 해제 할 수있다.  '",
	Qname : " [ Q ] - 똥 묻히기",
	Qexplain : " 지정된 위치에 있는 먼거리의 적을 공격합니다. "
	Qskill : "- ' 14 DMG '\n- ' 캡스락을 이용해 공격하는 것이 좋다. '\n- ' 피격시 스킬중단  '",
	Wname : " [ W ] - 똥 폭풍",
	Wexplain : "짧은 준비 후 자신의 전방에 똥 폭풍을 일으킨다. \n범위내의 적은 일반적인 방법으로는 빠져나갈 수없다.",
	Wskill : "- ' 15 DMG '\n- ' 벽 판정 '\n- ' 피격시 스킬중단  '",
	Ename : " [ E ] - 변기 내려찍기",
	Eexplain : "엄청난 크기의 변기를 내려쳐 넓은 범위로 큰 기절을 줍니다.",
	Eskill : "- ' 12 DMG '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat42:
	Dname : " [ D ] - 조준 사격",
	Dexplain : "자신의 앞에 있는 적군에게 피스톨을 날립니다. 경로상의 적에게 적은 피해를 주고\n끝에 위치한 적에게 큰피해를 줍니다. ",
	Dskill : "- ' 23 DMG / 32 DMG '",
	Qname : " [ Q ] - 동시 사격",
	Qexplain : " 빠르게 양손에 피스톨을 꺼내 지정된 위치에 피해를 줍니다."
	Qskill : "- ' 25 DMG '",
	Wname : " [ W ] - 난사",
	Wexplain : "잠깐의 준비 후 전방으로 무차별 사격을 가합니다.",
	Wskill : "- ' 발당 25 DMG '\n- ' 사용중 움직 일 수 있다. '\n- ' 피격시 스킬중단  '",
	Ename : " [ E ] - 장전",
	Eexplain : "총에 강력한 탄환을 넣어 장전합니다. 마나와 화산 버프를 얻습니다.",
	Eskill : "- ' + 45 MP '\n- ' 버프효과 : 공격력 1.8 배 '\n- ' 피격시 스킬중단 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat43:
	Dname : " [ D ] - 투창",
	Dexplain : "전방을 향해 창을 던집니다. 키다운 시 조준을 할 수 있습니다.",
	Dskill : "- ' 26 DMG '",
	Qname : " [ Q ] - 막기",
	Qexplain : "적의 공격을 막습니다. 막은 데미지만큼 체력을 회복합니다.",
	Qskill : "- ' 방패 너무 사기 ' \n- ' 비기절 공격은 막지못한다. (ex.빨대) '",
	Wname : " [ W ] - 말타기",
	Wexplain : " 말을 타면서 이동속도가 약간 올라가게 됩니다. \n말은 일정시간이 되면 뛰어올라 강력한 데미지를 줍니다. ",
	Wskill : "- ' 70 DMG '\n- ' 시전 중에  D, Q,를 사용할 수 있다.'\n- ' 피격시 스킬중단 '",
	Ename : " [ E ] - 기마군단",
	Eexplain : "전장의 모든 아군이 [ 말타기 ]를 시전합니다.",
	Eskill : "- ' 사람이 많을때 압도적인 성능 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat44:
	Dname : " [ D ] - 파이어볼",
	Dexplain : "자신의 A스킬이 [ 파이어 볼 ]이 된다.",
	Dskill : "-' 10 DMG '\n- ' 피격시 A스킬이 원래대로 돌아간다. '",
	Qname : " [ Q ] - 파이어월",
	Qexplain : " 자신의 전방에 불로 이루어진 벽을 세워 적을 방해합니다."
	Qskill : "- ' 10 DMG '\n- ' 피격시 스킬중단  '\n- ' 틱당 데미지 1씩 증가  '",
	Wname : " [ W ] - 메테오 스트라이크",
	Wexplain : "긴 묻 준비 후 지정된 위치에 강력한 메테오를 떨굽니다.",
	Wskill : "- ' 120 DMG '\n- ' 피격시 스킬중단  '",
	Ename : " [ E ] - 파이어 레인",
	Eexplain : "지정된 위치에 불로 이루어진 비를 내립니다.",
	Eskill : "- ' 초당 0.4(40) DMG '\n- ' 피격시 스킬중단  '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat45:
	Dname : " [ D ] - 월광",
	Dexplain : "먼 거리에 위치한 아군을 회복시키고 적에게 피해를 줍니다.",
	Dskill : "- ' 초당 8 DMG / 아군에게 초당 HP + 8  '",
	Qname : " [ Q ] - 거인력",
	Qexplain : " 주변에 있는 아군 1명을 거대화 합니다. 아무도 없다면 자신을 거대화 합니다. "
	Qskill : "- ' .... '",
	Wname : " [ W ] - 원령 소환",
	Wexplain : "거대한 원령이 자신을 향해 날아와 경로 상의 적에게 피해를 줍니다.",
	Wskill : "- ' 29 DMG '\n- ' 피격시 스킬중단  '",
	Ename : " [ E ] - 비석문",
	Eexplain : "간절하게 바라면 우주가 나서서 도와준단다",
	Eskill : "- ' [비석문] 은 소한 후 앞으로 천천히 전진합니다.'\n- ' 매3초마다 아군을 부활 시키고 무적을 부여합니다. '\n- ' 매3초마다 25 DMG를 주는 공격을 합니다.  '",
	Pname : ""
	Pexplain : ""
	Pskill : ""
}
case spr_hat46:
	Dname : " [ D ] - 베고 숨기",
	Dexplain : "자신의 검집에서 검을 뽑아서 가까이있는 적을 1번 벤 다음 \n3.5초동안의 은신이 부여합니다. ",
	Dskill : "- ' 25 DMG '\n- ' 적 잃은 체력에 비례해 주가 데미지를 준다 ( x 0.2) '",
	Qname : " [ Q ] - 쉐도우 블레이드",
	Qexplain : " 빠른 속도로 회전하면서 이동합니다. 부딪힌 적에게 데미지를 줍니다."
	Qskill : "- ' 10 DMG '\n- ' 시전 중 이동속도가 증가한다. '",
	Wname : " [ W ] - 4연베기",
	Wexplain : "4번 연속 적을 벱니다. 매 타 마다 범위가 줄어들고 더 큰 피해를 줍니다. ",
	Wskill : "- ' 29 / 32 / 35 / 49 DMG '\n- ' 매 타 마다 입력한 방향키대로 순간이동 한다. '\n- ' 피격시 스킬중단  '",
	Ename : " [ E ] - 침투",
	Eexplain : " 아군을 자신의 주변으로 소환합니다. 기절해 있는 아군은 모두 깨어나고 체력도 모두 회복됩니다. ",
	Eskill : "- ' 이걸로 뇌절하지 마십쇼... '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
	case spr_hat47:
	Dname : " [ D ] - 골렘 캐논",
	Dexplain : "골렘이 힘을 모은 뒤 강력한 캐논을 전방에 퍼붓습니다.",
	Dskill : "- ' 초당 3(40) DMG '\n- ' 비기절 공격 '\n- ' 피격시 스킬중단  '",
	Qname : " [ Q ] - 골램 슬레이브",
	Qexplain : " 골렘이 힘을 모은 뒤 4개의 슬레이브를 자신의 주위에 퍼붓습니다."
	Qskill : "- ' 40 DMG '\n- ' 피격시 스킬중단  '",
	Wname : " [ W ] - 박명수 앨범소환 ",
	Wexplain : "지정된 위치에 박명수 앨범을 소환하여 길을 막습니다.",
	Wskill : "- ' 벽판정 '\n- ' 안에 있는 적만큼 EXP를 획듭합니다.  '\n- ' 피격시 스킬중단  '",
	Ename : " [ E ] - 성 감옥",
	Eexplain : "자신의 전방에 있는 적들을 가둡니다.",
	Eskill : "- ' 벽판정 '\n- ' 피격시 스킬중단  '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat48:
	Dname : " [ D ] - 인체장기",
	Dexplain : "자신 주위에 3방향으로 눈알을 S자로 발사하고 다시 같은 방법으로 회수합니다. ",
	Dskill : "- ' 36 DMG '\n- ' 피격시 스킬중단  '",
	Qname : " [ Q ] - 전염병",
	Qexplain : " 지정된 위치에 쥐도 새도 모르게 전염병을 퍼뜨립니다."
	Qskill : "- ' 초당 0.15(40) DMG '\n- ' 시전 중 움직일 수 없습니다. '\n- ' 피격시 스킬중단  '",
	Wname : " [ W ] - 뼈 던지기 연타",
	Wexplain : "스킬 [ 연타 ]를 실행한후 뼈를 마구 던집니다.",
	Wskill : "- ' 10 DMG / 20 DMG '",
	Ename : " [ E ] - 마법서",
	Eexplain : "스킬 9개를 사용할수 있는 마법서의 설명서를 읽습니다.",
	Eskill : "- ' 채팅창에 & 1 ~ 9 을 입력하고 E키를 누르면 시전된다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat49:
	Dname : " [ D ] -  에너지 흡수",
	Dexplain : "자신의 앞에 있는 적의 에너지를 흡수합니다.",
	Dskill : "- ' 9 DMG \n- ' 흡수한 에너지만큼 거대화가 부여됩니다. (최대 260%) '\n- ' 거대화 지속시간은 4초입니다. '",
	Qname : " [ Q ] - 공학 레이저",
	Qexplain : " 잠시 준비 한 뒤 레이저를 상하좌우로 4개 발사합니다. "
	Qskill :  "- ' 초당 0.75(40) DMG '\n- ' 시전 중 방향전환만 가능합니다. '",
	Wname : " [ W ] - 핵력",
	Wexplain : "기절해 있는 아군에게 [ 지뢰 ] 스킬을 시전하게 합니다.",
	Wskill : "- ' 아군은 30 DMG의 피해를 주는 스킬을 시전할 수 있게된다.'\n- ' 시전 후 2.25초 동안은 무적입다니. '",
	Ename : " [ E ] - 초가디언 소환",
	Eexplain : "강력한 로봇 '초가디언을 소환 합니다. \nD ,Q로 공격하고 W로 빠르게 이동할 수있습니다.",
	Eskill : "- ' 40 DMG '",
	Pname : " [ A ] -  방사능 중독",
	Pexplain : "자신의 앞에 있는 적에게 독 디버프를 부여합니다.",
	Pskill : "- ' 12 DMG \n- ' 디버프 효과 : 체력 감소 '\n- ' 모든 버프를 무시하고 부여한다. '",
}
case spr_hat50:
	Dname : " [ D ] - 잠수",
	Dexplain : " 0.5초간 무적이 되며 지형지물을 통과 할 수 있는 상태가 됩니다.\n 3초뒤 모습을 드러내며 주변적에게 피해를 줍니다.",
	Dskill : "- ' 28 DMG '\n- ' 시전도중 D스킬을 눌러 즉시 잠수를 해제할 수있다. '\n- ' 시전도중 이동속도 30% 증가  '",
	Qname : " [ Q ] - 총질 칼질",
	Qexplain : " 총을 즉시 발사하여 적에게 큰 피해를 줍니다.\n 이후 당신의 A스킬은 [ 칼질 ] 로 바뀝니다 ."
	Qskill : "- ' 55 DMG / 10 DMG '\n- ' [ 칼질 ]은 기절상태의 적에게 데미지와 [ 출혈 ] 디버프를 준다.  '\n- ' 피격 시 A스킬은 원래 상태로 돌아간다. '",
	Wname : " [ W ] - 역돌격",
	Wexplain : "자신의 몸에 폭탄을 붙여 적진으로 갈 준비를 한다.",
	Wskill : "- ' 30 DMG '\n- ' 붙인 폭탄은 8초뒤 터지며 터질때 현재 체력의 25%가 감소한다. '\n- ' 적군의 공격에 의해 파괴되면 페널티를 받지 않는다. '",
	Ename : " [ E ] - 승선",
	Eexplain : "군함을 소환합니다. 군함에 부딪힌 적은 강제로 이 군함에 태워지게 됩니다.",
	Eskill : "- '10 DMG'\n- ' D키를 눌러 대포알 을 발사해 30 DMG를 줄 수 있다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat51:
	Dname : " [ D ] - 감자 구르기",
	Dexplain : "7초간 연속으로 굴러 자신 주위의 적에게 피해를 줍니다.",
	Dskill : "- ' 14 DMG '\n- ' A키로 중간에 스킬중단이 가능하다. '\n- ' 피격 시 스킬중단 '",
	Qname : " [ Q ] - 고기 뜯기",
	Qexplain : " 자신의 고기를 뜯어 체력을 회복한 후 \n먹다 남긴 뼈를 전방으로 던집니다."
	Qskill : "- ' + 15 HP / 20 DMG '\n- ' 피격 시 스킬중단 '\n 8초간 데미지 감소 버프"
	Wname : " [ W ] - 버섯 점프대",
	Wexplain : "아군과 적군을 튕겨내는 버섯을 설치한다.\n 이버섯은 아군에게는 이롭지만 적에게는 피해를 준다. ",
	Wskill : "- ' 10 DMG ''\n- ' 버섯에 닿인 아군/적군은 튕겨난다. '\n- ' 아군이 이 버섯에 닿았을 때 [ 연타 ]를 시전한다.'",
	Ename : " [ E ] - 포도송이",
	Eexplain : "전장에 있는 모든 아군은 [ 감자 구르기 ]를 시전한다.",
	Eskill : "- ' 야! 제발 저리 좀 비켜, 내 앞에 돌 좀 치워  '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat52:
	Dname : " [ D ] - 후루룩",
	Dexplain : "짬뽕을 2초동안 먹어 체력을 회복합니다. \n짬뽕 그릇에 아군이 있다면 그 아군도 체력을 회복합니다.",
	Dskill : "\n- ' 초당 HP + 0.3(40) '\n- ' 피격 시 스킬중단 '",
	Qname : " [ Q ] - 중국집 오토바이",
	Qexplain : " 오토바이를 탑승합니다. 오토바이가 캔슬될경우 주위에 짜장버프를 걸어줍니다."
	Qskill : "- ' 4.5초동안 타면 [Q]를 눌러 던질 수 있게 됩니다. '\n- '  버프효과 : 받는 데미지 50% 감소 '",
	Wname : " [ W ] - 캡사이신- ' 권 '",
	Wexplain : "극한의 매운맛에 취한 그는 자신의 피를 깎아내며 한계를 뛰어넘는 펀치를 날립니다."
	Wskill : "- '66 DMG '\n- ' 시전에 성공하면 주변아군에게 [ 화산 버프 ]를 부여한다. '",
	Ename : " [ E ] - 짬동력",
	Eexplain : "자기 주변에 면발을 소환하여 자신을 보호하고 적군에겐 데미지를 줍니다.",
	Eskill : "- ' 10 DMG '\n- ' 지속 시간동안 E키를 한번더 누르면 면발을 소모해 '\n  ' 적에게 18 DMG 를 주고 적을 끌어옵니다.  '",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 넘쳐흘러",
	Pexplain : "다 ~ 찢겨져버린 사이~ 더 기워봐도 다시 ~",
	Pskill : "- ' 매 초 10% 확률로 [국물]이 쏟아진다. '\n- ' [국물]은 아군에게 (10) HP 와 (25) exp 를 제공한다. '",
}
case spr_hat53:
	Dname : " [ D ] - 징 울리기",
	Dexplain : "징을 울려 자신 주변의 적에게 피해를 줍니다.",
	Dskill : "- ' 12 DMG '\n- ' 적에게 있는 모든 버프 / 디버프를 해제한다. '",
	Qname : " [ Q ] - 수플렉스",
	Qexplain : " 전방을 적을 잡아 지면에 처박습니다. "
	Qskill : "- ' 20 DMG '",
	Wname : " [ W ] - 승전보 ",
	Wexplain : "강하게 지면을 내리 친 후 종을 세워 종 주변의 아군에게 화염버프를 주는 영역을 7초간 생성합니다. ",
	Wskill : "- ' 12 DMG '\n- ' 팀 기지로 취급된다. '",
	Ename : " [ Q ] - 끌어오기",
	Eexplain : " 직선 경로로 갈고리를 발사합니다.\n갈고리에 피격당한 적은 당신한테 끌려오게 될 것 입니다."
	Eskill : "- ' 20 DMG '",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 메아리",
	Pexplain : "기절이 포함된 공격을 받으면 징이 반응하여 화염고리를 생성합니다.",
	Pskill : "- ' 초당 10 DMG '\n- ' 기절상태 해제시 스킬종료. ' "
}
case spr_hat54:
	Dname : " [ D ] - 컨베이어 벨트",
	Dexplain : "자신의 위치에 컨베이어 벨트를 설치합니다.",
	Dskill : "- '초당 0.04(40) DMG'\n- ' 컨베이어 벨트 위에 D 시전시 강화된다. '\n- ' 강화된 컨베이어 벨트는 적을 밀어낸다.'",
	Qname : " [ Q ] - 회전 모터",
	Qexplain : "자신의 위치에 회전 모터를 설치합니다.\n밟은 아군 / 적군은 회전하게 됩니다."
	Qskill : "- ' 9 DMG '",
	Wname : " [ W ] - 점프 발판",
	Wexplain : "자신의 앞에 점프발판을 설치합니다.",
	Wskill : "- '메로나 탄이 닿으면 폭발하여 20 DMG를 준다.'\n밟은 아군은 해당 방향으로 점프합니다."
	Ename : " [ E ] - 텔레포터",
	Eexplain : "자신의 위치에 텔레포터를 설치합니다.\n적군은 조금식 설치한 지점으로 순간이동 됩니다.",
	Eskill : "- ' E키를 두 번 사용해 시작점 과 도착점을 설치해야 활성화 된다. '",
	Pname : " ■ LV 1 ■ [ A ] - 메로나탄",
	Pexplain : "자신의 A키가 영구적으로 [ 메로나탄 ] 으로 강화된다.",
	Pskill : "- ' 메로나탄의 이동속도에 비례해 10 ~ 34 DMG를 준다. '\n- ' 모든 발판과 상호작용을 한다. '",
}
case spr_hat55:
	Dname : " [ D ] - 전기",
	Dexplain : "직선 경로로 콜라를 던집니다. 맞은 적은 전기 디버프에 걸립니다.",
	Dskill : "- ' 21 DMG '\n- ' 디버프효과 : 행동제어 '",
	Qname : " [ Q ] - 얼음",
	Qexplain : "직선 경로로 우유를 던집니다. 맞은 적은 얼음 디버프에 걸립니다."
	Qskill : "- ' 15 DMG '\n- '벽에 튕깁니다.'\n- ' 디버프효과 : 이동속도 감소 '",
	Wname : " [ W ] - 독",
	Wexplain : "직선 경로로 라면을 던집니다. 맞은 적은 독 디버프에 걸립니다.",
	Wskill : "- ' 21 DMG '\n- ' 디버프효과 : 체력 감소 '",
	Ename : " [ E ] - 초코파이 먹기",
	Eexplain : "초코 파이를 먹습니다. 이 후 당신의 스킬들은 추가타격을 줍니다. ",
	Eskill : "- ' 20 DMG '\n- ' 추가 타격은 마나 디버프를 준다. '\n- ' 디버프효과 : 체력 감소 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat56:
	Dname : " [ D ] - 순간 진동",
	Dexplain : "자신 주위의 적이 가진 버프를 해제하고\n당신을 마지막으로 입힌 적에게 순간이동 합니다.",
	Dskill : "- ' 12 DMG'",
	Qname : " [ Q ] - 순간 척살",
	Qexplain : " 자신에게 가장 먼거리에 있는 적에게 순간이동해 피해를 줍니다."
	Qskill : "- ' 19 DMG '",
	Wname : " [ W ] - 즉발모으기",
	Wexplain : "전장에 있는 모든 아군/적군 을 한자리에 모이게 합니다.",
	Wskill : "- '  E 사용중일 때는 사용할 수 없다. '",
	Ename : " [ E ] - 안전 구역",
	Eexplain : "안전구역을 생성합니다. 30초뒤 안전구역을 제외한 모든 전장에 폭격이 날아옵니다.",
	Eskill : "- ' 안전구역 밖에 있는 플레이어들은 기/ 마나 / EXP가 1이 된다. '\n- ' 안전구역 밖에 있는 적은 체력 페널티 디버프에 걸린다. '\n- ' 디버프효과 : 체력 15 '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat57:
	Dname : " [ D ] - 바위 던지기",
	Dexplain : "거대한 바위를 일자로 던집니다.\n벽이나 플레이어 부딪히면 폭발하여 피해를 줍니다.",
	Dskill : "\n- ' 22 DMG '\n- ' 키 다운 시 몸이 커지며 최대 2.5배까지 증가합니다. '",
	Qname : " [ Q ] - 땅 고르기",
	Qexplain : " 땅을 힘껏 내려쳐 거대한 균열을 일으킵니다.\n균열은 2초후 폭발하여 강력한 데미지를 줍니다."
	Qskill : "\n- ' 36 DMG '\n - ' 시전 딜레이 동안 방향조절 가능 '",
	Wname : " [ W ] - 케르릉 보호막",
	Wexplain : "주위의 돌들로 자신의 몸을 두릅니다.\n보호막은 6초동안 데미지를 기록합니다.",
	Wskill : "- ' + 잃은체력의 (35%) HP '\n- ' 시전시 0.5초 무적이 된다. '\n- ' 6초후 받은데미지의 (35%) 만큼 아군을 회복시킨다. '",
	Ename : " [ E ] - 대지 두드리기",
	Eexplain : "대지를 흔들어 거대한 땅의 파도를 일으킵니다",
	Eskill : "- ' 20 DMG '\n - ' 파도에 맞은 아군 / 적군은 자신쪽으로 끌려오게 된다. '\n - ' 적의 모든 버프를 해제한다. '",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 대지의 은혜",
	Pexplain : "기절이 포함된 공격을 받으면 스택이 쌓인다.",
	Pskill : "- ' + (15 + 잃은체력) HP / 20 DMG '\n- ' 매 6번 피격시 주변의 아군과 자신은 회복한다.' "
}
case spr_hat58:
	Dname : " [ D ] - 기관소총",
	Dexplain : " 먼 거리에서 기관소총을 연사합니다. \n시전 후 무게에 의해 움직일 수없습니다.",
	Dskill : "- 11 DMG\n-' A키를 연타하세요 '\n-' 시전 도중 피격시 스킬중단 '",
	Qname : " [ Q ] - 지뢰",
	Qexplain : " 자신 위치에 지뢰를 설치합니다. \n일정시간이 되거나 적이 밟으면 터져 피해를 줍니다."
	Qskill : "- ' 20 DMG \n- ' 적에게는 지뢰가 보이지 않는다. '\n- ' 시전 후 0.8 초간 은신 '",
	Wname : " [ W ] - 무차별 폭격",
	Wexplain : "자신이 지정한 곳에 무차별 폭격을 지시합니다.",
	Wskill : "- ' 32 DMG '\n- ' 25 초동안 지속되며 5초마다 폭발을 일으킨다. '\n- ' 시전 후 1.5초 뒤에 지정가능 '",
	Ename : " [ E ] - 대륙간 탄도 미사일",
	Eexplain : "은신상태가 되며 핵탄두 를 조종합니다.\n핵탄두는 7초뒤에 터지며 강력한 피해를 줍니다.",
	Eskill : "- ' 70 DMG '\n- ' 피격 시 스킬중단 '\n 타격시 적에게 독 디버프를 부여한다."
	Pname : " [ A ] - AK모드",
	Pexplain : "당신의 A스킬이 [ Ak 소총 ] 으로 강화됩니다. ",
	Pskill : "- ' 7 DMG'\n- ' 3회 시전합니다. '",
}
case spr_hat59:
	Dname : " [ D ] - 시간의 굴레",
	Dexplain : "자신 주위의 적들에게 피해를 주고 자신의 아이템 쿨타임을 감소시킵니다.",
	Dskill : "- ' 17 DMG \n- ' 사용시 5.5초 감소 '",
	Qname : " [ Q ] - 데자뷰",
	Qexplain : " 데자뷰, 느껴 본 적 있어?"
	Qskill : "- ' 자신이 마지막으로 사용한 아이템을 한번만 시전합니다. '\n- ' 해당 아이템이 공격형이면 마나가 50%감소합니다. '",
	Wname : " [ W ] - 모닝콜",
	Wexplain : " 도타를 하기 위해 알람을 설정합니다."
	Wskill : "- ' 10 DMG \n- 설정한 알람이 3초뒤에 울려 피해를 줍니다.\n- 기절한 아군이나 자신이 기절상태를 해제하고 버프- 가속을 부여합니다."
	Ename : " [ E ] - 시간 역행",
	Eexplain : "고도의 기술로 이루어진 시계를 작동시켜 자신의 위치에 \n현재 자신의 마나와 위치를 저장하여 잔상을 남깁니다. ",
	Eskill : "- ' 시전시 자신의 모든 아이템을 80% 감소시킵니다. '\n- ' E를 재시전하거나 10초 뒤 해당 잔상으로 돌아가, 자신이 저장한 상태를 돌려받습니다. '\n- ' 돌려 받을때 모든 쿨타임이 최대치로 증가합니다. '",
	Pname : "■ LV 3 ■ [ A ] - 정지!",
	Pexplain : "타임 스토푸",
	Pskill : "- ' 10 DMG \n- 적에게 버프- 일시정지를 1.5초간 부여합니다.\n- 버프효과 : 행동불능."
}
case spr_hat60:
	Dname : " [ D ] - 감시자의 눈",
	Dexplain : "자신은 모습을 감추고 눈을 조종하여 적에게 피해를 줍니다.",
	Dskill : "- ' 15 DMG '\n- ' 피격 시 스킬중단 '\n- ' 레벨 3 달성시 성능이 강화됩니다. '",
	Qname : " [ Q ] - 석화",
	Qexplain : " 메두사의 눈을 반짝여 적에게 석화 디버프를 부여합니다."
	Qskill : "- ' 10 DMG '\n- ' 디버프 효과 : 경직 'n- ' [D] 스킬 시전 도중에도 사용가능 하다. '",
	Wname : " [ W ] - 황금 방패",
	Wexplain : "모든 것을 검열합니다.",
	Wskill : "- ' 음소거 / 채팅금지 / 스킬표기 금지 '",
	Ename : " [ E ] - BIG BROTHER IS WATCHING YOU",
	Eexplain : "시전시 경고가 뜨며 10초 카운트가 시작됩니다. 카운트 안에 피격 시 스킬이 중단됩니다.\n아이템, 스킬사용이 불가하지만 움직일수 있습니다.",
	Eskill : "- ' 40 DMG '\n- ' 10초동안 피격 당하지 않아 스킬 사용에 성공했을 시 '\n- ' 10초동안 마우스 우클릭을 통해 적에게 데미지를 입힐수 있다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat61:
	Dname : " [ D ] - 수리검",
	Dexplain : "부채꼴 범위로 표창을 5갈래로 던져 피해를 줍니다.\n끝에 맞은적은 더 큰 피해를 입습니다.",
	Dskill : "- ' 15 DMG '\n- ' 표창이 날라갈때 [ 표식 ] 이 있는적은 현재 체력의 11% 데미지를 입는다.'\n - ' 땅에 박힌 표창은 적에게 [ 표식 ] 을 부여한다. ' "
	Qname : " [ Q ] - 연막",
	Qexplain : "자신의 앞에 연막을 던집니다.\n연막안에서 [ 표식 ]이 있는 적은 이동속도가 감소합니다."
	Qskill : "\n- ' 연막은 은신을 부하여며 적의 돌진류 스킬을 차단한다. \n- ' 연막안에서는 스테미너 재생량이 100% 증가한다. '",
	Wname : " [ W ] - 그림자 분신",
	Wexplain : "자신의 위치에 [ 수리검 ]을 사방으로 뿌리는 분신을 남긴채 \n보고 있는 방향으로 순간이동 합니다.",
	Wskill : "- ' 15 DMG '",
	Ename : " [ E ] - 표식 / 인살",
	Eexplain : "칼을 던져 적에게 표식을 남깁니다.\nE스킬을 한번 더 사용하면 [ 표식 ] 을 가진 대상에게 순간이동해 광범위 데미지를 줍니다.",
	Eskill : "- ' 20 DMG '",
	Pname : " ■ LV 1 ■ [ A ] - 뒷치기",
	Pexplain : "스테미너를 소모하여 적을 타격하고 돌진한다.\n 적이 데미지를 입으면 [ 표식 ]을 부여한다.",
	Pskill : "- ' 12 DMG '\n- ' 스테미너가 부족하면 일반공격을 시전한다. ' "
}
case spr_hat62:
	Dname : " [ D ] - 리프 블레이드",
	Dexplain : "잎파리를 뽑아 3회 발사합니다..",
	Dskill : "- ' 11/22 DMG '\n- ' 마지막 공격은 더 강한 피해를 줍니다. '",
	Qname : " [ Q ] - 초보신공 버니합",
	Qexplain : "전방으로 점프~합니다."
	Qskill : "- ' 지형지물을 넘나들 수 있습니다. '",
	Wname : " [ W ] - 리프 가드",
	Wexplain : "1.5초동안 낙엽바람을 일으켜 적들을 방해합니다.",
	Wskill : "- 7 DMG \n-' 낙엽바람은 총 5번 시전 됩니다. '",
	Ename : " [ E ] - 솔라빔",
	Eexplain : "광합성을 해 에너지를 모은 후 전방으로 투사체를 발사합니다.",
	Eskill : "- ' 15/25/35/45 '\n-' 모을수록 피해는 증가합니다. '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat63:
	Dname : " [ D ] - 라이트닝 어퍼",
	Dexplain :" 전방으로 충격파를 발사합니다.'",
	Dskill : "- ' 23 DMG / 40 DMG (강화) '",
	Qname : " [ Q ] - 템페스트",
	Qexplain : " 즉시 빠른속도로 돌진합니다 "
	Qskill : "- ' 17 DMG / 27 DMG (강화) '",
	Wname : " [ W ] - 스파이럴 피스트",
	Wexplain : " 전방을 향해 힘찬 주먹질 발사 ",
	Wskill : "- ' 6 DMG / 12 DMG (강화)\n- ' 스킬 시전도중엔 이동속도 20 % 감소합니다. '",
	Ename : " [ E ] - 쇼 다운",
	Eexplain : " 하늘로 뛰어오른 후 강하하여 강력한 피해를 줍니다. ",
	Eskill : "- ' 25 DMG / 50 DMG (강화)\n- ' - 공중에 있을때는 무적이지만, 시전 도중 피해를 입으면 즉시 피해를 줍니다. '\n- ' 강하하는 위치가 정해지면, 정해진 위치에 있는 적들을 느리게 만듭니다. '",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 폭발하는 건틀렛",
	Pexplain : "적에게 기절을 포함한 데미지를 줄경우 [ 강화 ]가 쌓입니다.",
	Pskill : "- ' 최대 3번까지 쌓입니다.\n- ' 최대[강화]일 경우 자신의 다음 스킬은 [ 강화 ] 데미지를 줍니다.. '",
}
case spr_hat64:
	switch(testing.q_attack_type) {
		case spr_sangbrush :
			Dname : " [ D ] - 가르기 / 회전베기 ",
			Dexplain : " 직선방향으로 붓을 긋습니다. 시전도중 한번 더 누르면 주변을 휘두릅니다.",
			Dskill : "- ' 돌진하여 자신이 이동한 경로에 붓자국을 남긴다. [ 9 DMG ] '\n- ' 가르기 시전이 끝나기 직전, 한번 더 사용하면 데미지를 추가로 준다.[ 15 DMG ] '",
			Qname : " [ Q ] - 문무백관",
			Qexplain : " 자신의 무기를 활로 바꿉니다.\n 무기에 따라 [ D ][ W ]의 스킬이 변경됩니다."
			Qskill : "\n- ' 무기가 바뀔 때마다 4초간 [상투 버프]를 부여합니다.'\n- '버프 효과: 타격시 기 회복 + 25%'",
			Wname : " [ W ] - 무아지경",
			Wexplain : "고도의 집중력으로 한 획을 긋습니다.",
			Wskill : "- ' 전방으로 붓에 힘을 담아 공격합니다. 가진 버프를 3초 증가시킨다.[ 14 DMG ]'",
			Ename : " [ ! 이름 ] - 이리오너라",
			Eexplain : "적이 자신에게 오게 하도록 명령합니다.",
			Eskill :"- ' 채팅창에 [ ! 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 해당 영웅이 자신에게 순간이동 합니다. '",
			Pname : " ■ LV 1 ■ [ 패시브 ] - 풍청월랑",
			Pexplain : "바람이 맑고 달이 밝다는 뜻으로, 마음이 결백함을 비유하여 이르는 말",
			Pskill : "- ' 상투버프가 활성화 되어있으면 스킬데미지 + 100% '",
		}
		default :
			Dname : " [ D ] - 활쏘기",
			Dexplain : "적을 조준하여 활을 발사합니다.",
			Dskill : "- ' 전방을 향해 화살을 4연발 발사한다. [ 11 DMG ] '",
			Qname : " [ Q ] - 문무백관",
			Qexplain : " 자신의 무기를 붓으로 바꿉니다.\n 무기에 따라 [ D ][ W ]의 스킬이 변경됩니다."
			Qskill : "\n- ' 무기가 바뀔 때마다 4초간 [상투 버프]를 부여합니다.'\n- '버프 효과: 타격시 기 회복 + 25%'",
			Wname : " [ W ] - 백발백중",
			Wexplain : "폭탄을 부착한 화살을 발사합니다. \n 최대 차징 시 3갈래로 발사합니다.",
			Wskill : "- ' 직선으로 활을 쏩니다. 화살은 벽이나 플레이어에게 박힙니다. '\n- ' 박힌 화살은 3초뒤 폭발하여 [ 12 DMG ]를 줍니다. '\n- ' 무기를 바꾸어 즉시 폭발을 일으킬수 있습니다. '",
			Ename : " [ ! 이름 ] - 이리오너라",
			Eexplain : "적이 자신에게 오게 하도록 명령합니다.",
			Eskill :"- ' 채팅창에 [ ! 적 이름 ]을 입력하여 시전 '\n- ' 시전 시 해당 영웅이 자신에게 순간이동 합니다. '",
			Pname : " ■ LV 1 ■ [ 패시브 ] - 풍청월랑",
			Pexplain : "바람이 맑고 달이 밝다는 뜻으로, 마음이 결백함을 비유하여 이르는 말",
			Pskill : "- ' 상투버프가 활성화 되어있으면 스킬데미지 + 100% '",
		}
		}
		break
case spr_hat65:
	Dname : " [ D ] - 용접",
	Dexplain : "마스크를쓰고 용접을 시작합니다. \n- ' 오브젝트를 회복시킬수 있다. '",
	Dskill : "- ' 초당 10 DMG '\n- ' 2초뒤 푸른불꽃을 내뿜으며 강화된다. '",
	Qname : " [ Q ] - 자동포탑",
	Qexplain : " 주변 구역을 보호하는 포탑을 설치합니다. \n포탑은 적을 자동으로 조준하여 공격합니다."
	Qskill : "- ' 10 DMG '\n- ' 체력: 40 '\n- ' 파괴시 GI회수가 가능한 [기어]를 생성합니다.'",
	Wname : " [ W ] - 자판기",
	Wexplain : " 마나포션을 뱉어내는 자판기를 설치합니다.\n 기본공격시 30% 확률로 얻을 수 있습니다.",
	Wskill : "- ' + 10 MP / + 20 MP '\n- ' 체력: 70 '\n- ' 파괴시 GI회수가 가능한 [기어]를 생성합니다.'",
	Ename : " [ E ] - 드론",
	Eexplain : "자신을 보호하는 드론을 생성합니다. \n드론은 적을 자동으로 조준하여 공격합니다.",
	Eskill : "- ' 15 DMG '\n- '드론에게 데미지가 입혀지면 즉시 파괴된다. '",
	Pname : " ■ LV 1 ■ [ A ] - 몽키 스패너",
	Pexplain : "몽키스패너로 적의 대가릴 깹니다.'\n하지만 아군에겐 한없이 자상하지 ",
	Pskill : "- ' 10 DMG/ + 10HP '\n- ' 이 스킬로 이 모자가 소유한 오브젝트의 마나를 회복시킬수 있습니다. '\n- ' 마나가 가득찬 오브젝트들은 [과열]하여 성능이 향상됩니다. '",
}
case spr_hat66:
	Dname : " [ D ] - 번트",
	Dexplain : "재빨리 배트를 들어올려 공을 친다.",
	Dskill : "- ' 15 DMG '\n- ' 피격시 스킬중단. '",
	Qname : " [ Q ] - 폭투",
	Qexplain : "공을 위로 던집니다.\nD스킬로 치면 직선으로 날라가 경로상의 적에게 강력한 피해를 던집니다.  "
	Qskill : "- ' 15 DMG / 45 DMG '\n- ' 피격시 스킬 중단 '",
	Wname : " [ W ] - 플레이볼",
	Wexplain :  "공을 괴상하게 던진 후 자신의 밑에 베이스를 설치합니다.\n베이스 위에선 마나 재샹량이 25%, 스테미너 재생량이 폭발적으로 증가합니다.",
	Wskill :  "\n- ' 매 4초마다 공을 생성한다. '\n- ' 지속시간 20초 '\n- ' 쿨타임이 있다. '",
	Ename : " [ E ] - 홈런",
	Eexplain : "긴 차징 후 운명의 공을 불러옵니다.\nD스킬로 치면 직선으로 날라가 경로상의 적에게 강력한 피해를 던집니다.",
	Eskill : "- ' 25 DMG / 45 DMG '\n- ' D스킬로 쳤을 때 크기가 대폭 증가한다. '\n- ' 피격시 스킬 중단 '",
	Pname : " ■ LV 1 ■ [ A ] - 빠따질",
	Pexplain : "야구 방망이를 들어올려 범위 안의 적을 밀쳐냅니다.'\n■ LV 3 ■ 일 시 시전속도가 강화됩니다.  ",
	Pskill : "- ' 15 DMG '\n- ' 시전 도중 방향전환이 가능하다. '\n- ' 피격시 스킬중단. '",
}
case spr_hat67:
	Dname : " [ D ] - 요리",
	Dexplain : "8초 동안 가만히 요리를 한다.\n낚아 올린 일부 물고기와 상호작용이 된다.",
	Dskill : "- ' 완성된 음식은 체력 / 마나 / 경험치 를 회복시킨다. '\n' 완성된 음식의 품질은 랜덤이다. '",
	Qname : " [ Q ] - 짬통 배급",
	Qexplain : "짬통을 자신의 위치에 설치합니다.\n아군 / 적군은 F키로 먹어서 회복 할 수 있습니다."
	Qskill : "- ' + 20 HP '\n- ' 먹어서 응원하자 '",
	Wname : " [ W ] - 핫스팟",
	Wexplain : "자신과 자신의 주변에 있는 아군 플레이어는 \n이동속도가 대폭 증가합니다.",
	Wskill : "- ' 여기선 낚시가 가능하다. '\n- ' 초당 2.4HP를 회복시킨다. '",
	Ename : " [ A ] - 부메랑 나이프",
	Eexplain : "자신의 A스킬이 영구히 [ 부메랑 나이프 ] 로 바뀝니다.",
	Eskill : "- ' 20 DMG '",
	Pname : "",
	Pexplain : "",
	Pskill : ""
}
case spr_hat68:
	Dname : " [ D ] - 레가토",
	Dexplain : "피아노를 쳐 주변적에게 피해를 줍니다.\n이 후,특정 타이밍에 맞춰 시전 시 추가타를 줍니다..",
	Dskill : "- ' 초당 0.3(40)HP / 15DMG '",
	Qname : " [ Q ] - 고음 주역 테스트",
	Qexplain : " 내려오는 음표에 맞춰 스킬을 재시전 하면 음표를 방출합니다."
	Qskill : "- '19 DMG'\n- ' 타이밍을 맞추지 않으면 즉시 시전이 종료된다. '\n- ' 맨 마지막 공격의 100% 추가 피해를 준다.'",
	Wname : " [ W ] - 위플래시",
	Wexplain : "박자가 안 맞잖아, 다시!",
	Wskill : "- '23 DMG'\n- ' 범위 안의 적들에게 일정시간마다 데미지를 주게한다.'",
	Ename : " [ E ] - 광란의 연주",
	Eexplain : "긴 차징 후 고막이 터질듯한 굉음을 \n전방에 발사하여 강력한 충격파가 적군을 밀쳐버립니다. ",
	Eskill : "- ' 35 DMG '",
	Pname : "",	
	Pexplain : "",
	Pskill : ""
}
case spr_hat69:
	Dname : " [ D ] - 나무정령 / 재배치",
	Dexplain : "자신의 위치에 [ 나무정령 ]을 생성합니다.\n[ 나무정령 ]은 당신이 바라보는 방향대로 화살을 4갈래로 발사합니다.",
	Dskill : "- ' 체력 30 / 15 DMG'\n- ' [ 나무정령 ]이 전장에 존재하는 경우 D스킬이 [ 재배치 ]로 바뀐다. '\n- ' [ 나무정령 ]의 위치를 [ 재배치 ]로 옮 길 수있다. '",
	Qname : " [ Q ] - 만개",
	Qexplain : "전방으로 꽃을 피웁니다.\n꽃에 닿인 아군과 소환수들은 회복하지만 적군에게는 석화 디버프 줍니다."
	Qskill : "- ' 초당  0.4(40) HP'\n- ' 디버프 효과 : 경직 '",
	Wname : " [ W ] - 염병 / 괴성",
	Wexplain : "자신의 위치에 [ 염병 ]을 생성합니다\n[ 염병 ]은 당신이 바라보는 방향대로 뼈를 발사한다.",
	Wskill : "- ' 체력 40 / 28 DMG '\n- ' 4초마다 주위에 [ 괴성 ]을 질러 28 DMG를 준다.'\n- ' [ 염병 ]의 위치를 [ 재배치 ]로 옮 길 수있다. '",
	Ename : " [ E ] - 유작",
	Eexplain : "신 암흑인물열전 중 1명이 만든 최악의 소환수를 소환한다.  ",
	Eskill : "- ' 체력 50 '\n- ' 이 망령은 적을 자동으로 추적하며 적을 탈모상태로 만든다. '\n- ' 탈모에 걸린 적은 이동 외에는 아무것 도 할수 없다. '",
	Pname : " ■ LV 3 ■ [ W ] - 해골 병사",
	Pexplain : "자신을 보호 해주는 해골 병사를 소환합니다.",
	Pskill : "- ' 체력 25 / 20 DMG'\n- ' [ 해골병사 ] 는 자신의 주위를 계속 내려 찍어 피해를 준다.\n- ' [ 염병 ]이 전장에 존재하는 경우 W스킬이 [ 해골병사 ]로 바뀐다. '",
}
case spr_hat70:
	Dname : " [ D ] - 채혈",
	Dexplain : "적울 할퀴어 피해를 줍니다.",
	Dskill : "- ' - 10 + 자신의 잃은체력의 (32%) DMG '\n- '[ 불사 ] 상태 동안에는 스킬이 강화됩니다. '",
	Qname : " [ Q ] - 물어 뜯기",
	Qexplain : "자신 앞의 대상을 물어 뜯어 준 피해만큼 체력을 흡수한다. "
	Qskill : "- ' - 20 + 잃은체력의 (16%) DMG '\n- ' 기절당한 적에게도 사용가능. '",
	Wname : " [ W ] - 박쥐떼",	
	Wexplain : "박쥐로 변신해 0.75초동안 지형지물을 무시하며 빠르게 이동합니다. ",	
	Wskill : "- ' 11 + 잃은체력의 (14%) DMG '",
	Ename : " [ E ] - 찢어 발기기",
	Eexplain : "8초간 사망에 대한 면역, [ 불사 ] 가 부여됩니다.",
	Eskill : "- ' 체력이 10미만 으로 내려가지 않는다.  '\n- ' [ 불사 ] 상태 동안 HP 소모값 사용제한 또한 사라집니다. '",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 혈 변환",
	Pexplain : "자신의 마나를 소모해 HP를 지속적으로 회복 시킵니다.",
	Pskill : "- ' 초당 + 0.15(40) HP ' '\n- ' 마나 재생량이 0이 되지만 모든 마나회복 효율이 (150%) 증가합니다.'\n- ' [A]를 적에게 사용하면 달라붙어 체력을 흡수합니다. '\n- ' [A]로 흡수한 체력은 마나로 전환됩니다. '",
}
case spr_hat71:
	Dname : " [ D ] - 런지",
	Dexplain : "앞으로 순간이동 하며 레이피어로 적을 찌릅니다.",
	Dskill : "- ' 자신의 강화 A스킬의 효과를 받는다. '\n- ' 피격 시 스킬중단 '",	
	Qname : " [ Q ] - 역습",
	Qexplain : " 레이피어를 치켜올려 적의 공격을 방어하고 반격합니다."
	Qskill : "- ' 30 DMG '\n- ' 반격에 성공하면 [중첩] 하나를 획득합니다.'\n- ' 반격에 성공하면 소모마나의 50%를 획득합니다. '",
	Wname : " [ W ] - 피날레",
	Wexplain : "전방의 적을 기절시킨 후 뒤로 물러나 찌르기 자세를 취합니다.\n잠시 후 전방을 빠르게 찔러 적에게 피해를 줍니다.",
	Wskill : "- ' 2 DMG '\n- ' 찌르는 도중 무적 '\n- ' 중첩수 만큼 8씩 데미지가 증가합니다. '",
	Ename : " [ E ] - 총사대",
	Eexplain : "자신의 총사대를 소환해 광범위 한 범위로 전방에 총을 쏘게합니다.\n2초뒤 총을 발사하여 잃은체력에 비례한 데미지를  줍니다",
	Eskill : "- ' 10 DMG '\n- ' 현재체력 28% 추가 DMG '\n- ' 방향키로만 방향조정하며 1회만 발사할 수있습니다. '",
	Pname : " ■ LV 1 ■ [ A / 패시브 ] - 레이피어",
	Pexplain : "자신이 스킬을 사용할때 마다 A스킬이 강화됩니다.",
	Pskill : "- ' 13 DMG '",
}
case spr_hat72:
	Dname : " [ D ] - 눈쑤시개",
	Dexplain : "총알을 1발씩 장전합니다. 최대 6발까지 장전가능 합니다.",
	Dskill : "- ' 최대 49 DMG (거리비례) '\n- ' 장전된 총알은 [ A ]키로 발사한다. '\n- ' 발사체는 벽을 뚫지 못한다. '",
	Qname : " [ Q ] - 루돌프 돌진",
	Qexplain : " 총알 2개를 폭파시켜 전방으로 돌진한다."
	Qskill : "- ' 24 DMG '\n- ' 도착지점에 눈사람[ 10 DMG ]을 생성한다. '",
	Wname : " [ W ] - 도 넘은 선물",
	Wexplain : "총알을 하나 소비해 벽을 넘는 초탄을 발사합니다.",
	Wskill : "- ' 1 DMG '\n- ' 초탄은 일정거리후 터지며 최대 49 DMG (거리비례)를 준다.'\n- ' 터진 발사체는 벽을 뚫지 못한다. '",
	Ename : " [ E ] - 굴뚝 속에 빠진 플루톤",
	Eexplain : "눈덩이를 굴립니다. 굴린 눈덩이는 점점 커져 플루톤보다도 커집니다.",
	Eskill : "- ' 눈덩이에 닿은 적은 움직임을 제어당한다. '\n- ' 눈덩이가 사라질때 폭발하며 20 DMG를 준다.'\n- ' 벽에 닿으면 더이상 구르지않는다.'",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 특별한 날",
	Pexplain : "플붕이들에게 선물을 줬으니 값을 받아야하지요.\n산타는 자원 봉사자가 아닙니다.",
	Pskill : "- ' 오른쪽 중단 총알 UI로 [ D ]를 강화할 수 있다. '\n- ' 레벨마다 3가지 선택지를 주며 그 중 하나만 선택가능 하다. '",
}
case spr_hat73:
	Dname : " [ D ] - 도둑질",
	Dexplain : "자신 주변의 적들에게 피해를 주고 경험치를 훔친뒤 달아납니다.\n중간 크기의 지형지물을 넘나 들 수 있습니다.",
	Dskill : "\n- ' 15 DMG '\n- ' 피격 당한 적은 자신의 레벨에 비례해 경험치를 잃습니다. '",
	Qname : " [ Q ] - 단검 태세",
	Qexplain : "두손에 단검을 쥐어 다양한 공격을 할 수있습니다. "
	Qskill : "- ' [ A ] 를 누르면 [ W ] '시해' 가 시전됩니다. '\n- ' [ Q ] 를 한번더 누르면 8초간 독데미지를 주는 독검을 던집니다. (24 DMG)'\n- ' 또한 [ Q ]스킬은 은신 지속시간을 초기화 시킵니다 . '",
	Wname : " [ W ] - 시해",
	Wexplain : "먼거리의 적들에게 돌진하여 강력한 피해를 줍니다.\n피격 당한 적은 레벨에 비례해 경험치를 잃습니다.",
	Wskill : "- ' 12/36 DMG '\n- ' 큰 크기의 지형지물을 넘나 들수있다. '\n- ' 피격 시 스킬중단 '",
	Ename : " [ E ] - 숨통 끊기",
	Eexplain : "아무런 소리를 내지않고 은신합니다.\n 2초 후 A키를 눌러 강력한 데미지를 줄 수 있습니다.",
	Eskill : "- ' 33 DMG '\n- ' 피격 시 스킬중단 '\n- ' 피격 당한 적은 자신의 레벨에 비례해 경험치를 잃습니다. '",
	Pname : " ■ LV 1 ■ [ A ] - 강탈",
	Pexplain : "자신의 A스킬이 [ 강탈 ]로 영구히 강화됩니다.",
	Pskill : "- ' 10 DMG '\n- ' 적의 버프를 훔칩니다. (디버프 제외) '\n- ' 훔친 버프는 5초간 지속됩니다. '",
}
case spr_hat74:
	Dname : " [ D ] - 스키 준비",
	Dexplain : "스키 장비를 착용해 질주를 준비합니다. '",
	Dskill : "- ' 34 DMG '\n- ' [스키] 상태일땐 자동으로 앞으로가며 방향키로 방향을 조정할수 있습니다. '\n- '[A] 키로 캔슬하면 시전을 중단하고 빠른속도로 돌진하여 전방의 적에게 피해를 줍니다.'",
	Qname : " [ Q ] - 스키 묘기",
	Qexplain : "스키를 배운지 얼마 안됬지만, 가오가 그의 온몸을 지배하기 시작합니다."
	Qskill : "- ' 16 DMG '\n- ' 지정된 방향으로 점프해 눈바람을 일으킨후 튀어올라 바라본 방향으로 점프합니다. '\n - ' 이후 2초간 '버프 -실침 '을 부여합니다. '",
	Wname : " [ W ] -저녁숲 스키 동호회",
	Wexplain : "휘슬을 불어 자신이 속한 동호회 친구들을 부릅니다.",
	Wskill : "- ' 29 DMG '\n- ' 친구들은 소환 시 '스키 준비'를시전합니다. '\n - ' 소환된 시간동안 재사용시 추가마나를 소모해 자신이 바라본 곳으로 '스키 준비'를 시전하게 합니다.  '",
	Ename : " [ E ] -  운지천 드링크",
	Eexplain : "운지천을 마셔 모든 피로를 회복합니다. 더 달릴 수 있을 듯합니다",
	Eskill : "- ' - 초당 40 마나 회복 '",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 싸라기 눈",
	Pexplain : "-빠른속도로 무언가 지나가면, 그자리엔 오직 눈자국만 있습니다.",
	Pskill : "- ' 적정 이동속도에 도달하면 [ 싸라기눈 ]을 생성합니다. '",
break
case spr_hat75:
	Dname : " [ D ] - 쿵쿵쿵",
	Dexplain : "자신의 몸을 동그랗게 말아 3번 튀어오릅니다..",
	Dskill : "- ' 30 DMG '\n- ' 공격성 : 데미지가 30 % 감소하지만 시전속도가 빨라집니다. '\n- ' 시전 중에는 모든 벽을 넘을 수 있습니다. '",
	Qname : " [ Q ] - 분열",
	Qexplain : " 자신의 몸을 나눠 전방에 피해를 주며 특정한 위치에 더 큰 피해를 줍니다."
	Qskill : "- ' 10/36 DMG '\n- ' 공격성 : 데미지가 60 % 감소하지만 연속 9회 타격합니다. '",
	Wname : " [ W ] - 형태변화",
	Wexplain : "뛰어난 학습능력으로 최근 피격당한 스킬을 복사합니다.",
	Wskill : "- ' 복사된 스킬은 단 한번만 사용됩니다. '\n- ' 공격성 : 공격성이 유지되는한 무제한 사용 가능 '",
	Ename : " [ E ] - 우걱우걱",
	Eexplain : "입을 크게 벌려 적을 맛있게 먹습니다.",
	Eskill : "- ' 32 DMG '\n- ' 공격성 : 적을 삼켜 5초동안 아무행동도 못하게합니다.'",
	Pname : " ■ LV 1 ■ [ 패시브 ] - 적응진화",
	Pexplain : "타격 혹은 피해를 입으면 2초동안 '생존본능' 과 ' 공격성' 효과를 얻습니다.",
	Pskill : "- ' 생존본능: 초당 3.2의 체력을 회복하며, 자신과 닿은 대상의 HP를 초당 2.8씩 제거시킵니다. '\n- ' 공격성: 모든 스킬의 효과가 변경 됩니다. '\n- ' 두 효과는 중첩되지 않습니다. '",
break
case spr_level5_hat1:
	Dname : " [ D ] - 장풍",
	Dexplain : "잠깐의 준비 후 장풍을 일자로 발사해 데미지를 준다",
	Dskill : "- '....'",
	Qname : " [ Q ] - ....",
	Qexplain : " ...."
	Qskill : "- ' .... '",
	Wname : " [ W ] - 즉발캐논",
	Wexplain : "골렘 D스킬을 즉시 시전한다.",
	Wskill : "- ' .... '",
	Ename : " [ 패시브 ] - 게이",
	Eexplain : "적을 죽이면 죽인적을 자신처럼 변하게한다.",
	Eskill : "- ' 기지 데미지에 면역 '",
	Pname : " ■ LV 5 ■ [ R ] - 크기변환",
	Pexplain : "랜덤으로 크기가 변한다.   ",
	Pskill : "- ' 작아져도 난 몰라 '",
break
case spr_level5_hat2:
	Dname : " [ D ] - 점프",
	Dexplain : "단거리를 잽싸게 점프한다.궤도에 적군이 있다면 타격을 입힌다.",
	Dskill : "- '....'",
	Qname : " [ Q ] - 날리기",
	Qexplain : "자신 주위의 적을 날려 적을 랜덤한 위치로 이동시킨다."
	Qskill : "- ' .... '",
	Wname : " [ W ] - 연타",
	Wexplain : "이동속도가 빨라지며 기절시간이 짧은 기본공격을 연속으로 사용한다.",
	Wskill : "- ' .... '",
	Ename : " [ R ] - 인간먹기",
	Eexplain : "적을 먹어 전방의 적들을 즉사시킨다.",
	Eskill : "- ' 옴뇸뇸 '",
	Pname : " ■ LV 5 ■ [ 패시브 ] - 원래거인",
	Pexplain : "영구적으로 크기가 증가한다.   ",
	Pskill : "- ' 체력 증가 + 30 '",
break
case spr_level5_hat3:
	Dname : " [ D ] - 램프",
	Dexplain : "자신의 아이템 쿨타임을 감소시킨다.",
	Dskill : "- '....'",
	Qname : " [ Q ] - 전기 정원",
	Qexplain : "전기 + 장미정원"
	Qskill : "- ' .... '",
	Wname : " [ W ] - 워낭소리",
	Wexplain : "아군/적군 모두 [ 돌진 ] 을 시전한다.",
	Wskill : "- ' .... '",
	Ename : " [ E ] - 날개검",
	Eexplain : "정의의 날개짓 + 땅의검술",
	Eskill : "- ' .... '",
	Pname : " ■ LV 5 ■ [ R ] - 거대화마법",
	Pexplain : "거대화 + 메테오",
	Pskill : "- ' 시전 중 무적 '",
break
case spr_level5_hat4:
	Dname : " [ D ] - 방패",
	Dexplain : "적의 공격을 막는다. 막은 데미지는 체력으로 전환한다.",
	Dskill : "- '....'",
	Qname : " [ Q ] - 탱크발사",
	Qexplain : "짧게 탱크를 발사한다."
	Qskill : "- ' .... '",
	Wname : " [ W ] - 진동워크",
	Wexplain : "적을 즉시 기절시킨다.",
	Wskill : "- ' .... '",
	Ename : " [ E ] - 화룡검술",
	Eexplain : "화산버프 + 용검술",
	Eskill : "- ' .... '",
	Pname : " ■ LV 5 ■ [ R ] - 핵피라미드",
	Pexplain : "피라미드 + 핵",
	Pskill : "- ' 시전 중 무적 '",
break
case spr_level5_hat5:
	Dname : " [ D ] - 뿡야",
	Dexplain : "일시적으로 크기가 증가하며 적을 공격한다.",
	Dskill : "- '....'",
	Qname : " [ Q ] - 이상한 나라로 간 앨리스",
	Qexplain : "랜덤한 적 위치로 이동된다."
	Qskill : "- ' .... '",
	Wname : " [ W ] - 미친 앨리스",
	Wexplain : "전방의 적을 무차별적으로 공격한다.",
	Wskill : "- ' .... '",
	Ename : " [ E ] - 오늘의 일기",
	Eexplain : " 경험치를 획득한다.",
	Eskill : "- ' 시전 중 움직일 수 있다. '",
	Pname : " ■ LV 5 ■ [ R ] - 나쁜손장난",
	Pexplain : "적의 방향을 혼란스럽게 한다.",
	Pskill : "- ' .... '",
break
case spr_level5_hat6:
	Dname : " [ D ] - 미친 총질1",
	Dexplain : "군인 D스킬",
	Dskill : "- '....'",
	Qname : " [ Q ] - 미친 총질2",
	Qexplain : "사냥꾼 Q스킬"
	Qskill : "- ' .... '",
	Wname : " [ W ] - 미친 총질3",
	Wexplain : "적에게 다량의 총알을 사방으로 박는다.",
	Wskill : "- ' 시전중 이동속도 증가 '",
	Ename : " [ E ] -  서윤호의 저격",
	Eexplain : " 날개 + 저격 ",
	Eskill : "- ' 시전 중 무적. '",
	Pname : " ■ LV 5 ■ [ R ] - 서윤호의 멀리뛰기",
	Pexplain : "아주 먼거리를 이동한다.",
	Pskill : "- ' .... '",
break
case spr_level5_hat7:
	Dname : " [ D ] - 바퀴벌레 전투",
	Dexplain : "지정된 스킬을 랜덤하게 시전한다.",
	Dskill : "- ' 돌진  D '\n- ' 무사  D '\n- ' 마그마관리인 D '",
	Qname : " [ Q ] - 야골레스가 제일 좋아하는 스킬",
	Qexplain : "마녀의 저주 + 텔레포트"
	Qskill : "- '....'",
	Wname : " [ W ] - 개 발광 나대기",
	Wexplain : "미친듯이 날뛴다",
	Wskill : "- ' 날뛰는 중에는 벽을 무시한다. '",
	Ename : " [ E ] -  깝치기 절정신공",
	Eexplain : " 블럭소환 + 도깨비안개 ",
	Eskill : "- ' 시전 중 무적. '",
	Pname : " ■ LV 5 ■ [ R ] - 난장판",
	Pexplain : "1 ~ 5레벨 사이의 랜덤한 스킬을 전장의 플레이어 모두가 시전한다.",
	Pskill : "- ' .... '",
break
case spr_level5_hat8:
	Dname : " [ D ] - 야차의 후각",
	Dexplain : "적을 추격하기 위해 대량의 SP( 노란 게이지)를 공급 받습니다.",
	Dskill : "- '....'",
	Qname : " [ Q ] - 플로만식 톱지르르르",
	Qexplain : "마론 Q + 야차 Q"
	Qskill : "- '....'",
	Wname : " [ W ] - 율법",
	Wexplain : "마신의 율법에 따라 버프를 가진 적에게 데미지를 준 후 적들의 버프를 해제합니다.",
	Wskill : "- '....'",
	Ename : " [ A ] - 플로만식 도끼질",
	Eexplain : " 전 방향으로 도끼질을 한다. ",
	Eskill : "- '  '",
	Pname : " ■ LV 5 ■ [ R ] - 플로만의 지옥",
	Pexplain : "자신만의 영역을 생성합니다.",
	Pskill : "- ' 적의 체력은 감소하나 자신의 체력은 회복한다. '\n- ' 가운데의 영역은 더 큰 데미지를 준다.'",
break
case spr_level5_hat9:
	Dname : " [ D ] - 인체장기",
	Dexplain : "2배로 빠른 인체 장기를 이동하면서 사용할 수 있습니다.",
	Dskill : "- '.... '",
	Qname : " [ Q ] - 마법서",
	Qexplain : "마지막에 사용한 마법서를 명령어 입력 없이 즉시 쓸 수 있습니다."
	Qskill : "- '....'",
	Wname : " [ W ] - 정기 흡수",
	Wexplain : "자신의 위치에 토템을 박습니다.",
	Wskill : "- ' 토템 근처의 적을 죽이면 그 적은 유령으로 바뀐다. '",
	Ename : " [ E ] -  라이프 베슬",
	Eexplain : " 사용시 라이프 베슬을 리치 왕의 위치에 '고정'합니다.\n라이프 베슬을 생성한 상태인 리치 왕은 피격 대상이 되지 않습니다. ",
	Eskill : "- ' 라이프 베슬은 리치 왕의 체력을 대신한다. '\n- ' 라이프 베슬이 살아있는한 상태 효과를 받을 수 없다.'",
	Pname : "",
	Pexplain : "",
	Pskill : ""
break
case spr_level5_hat10:
	Dname : " [ D ] - 숨고베기",
	Dexplain : "밴디트 D",
	Dskill : "- ' .... '",
	Qname : " [ Q ] - 찌르기",
	Qexplain : "무사 Q"
	Qskill : "- ' 타격시 흡혈 '",
	Wname : " [ W ] - ....",
	Wexplain : "....",
	Wskill : "- ' .... '",
	Ename : " [ E ] -  즉발일섬",
	Eexplain : "무사 W를 즉시 시전",
	Eskill : "- ' 90DMG '",
	Pname : " ■ LV 5 ■ [ R ] - 심검",
	Pexplain : "근처의 적을 급습한다.",
	Pskill : "- ' 타격시 버프 해제'",
break
case spr_level5_hat11:
	Dname : " [ D ] - 월드와이드웹",
	Dexplain : "전기 D 를 던진다.",
	Dskill : "- ' .... '",
	Qname : " [ Q ] - 4차산업혁명",
	Qexplain : "전방으로 화살을쏘는 포탑을 생성한다."
	Qskill : "- ' .... '",
	Wname : " [ W ] - 정보통신망 ",
	Wexplain : "사방으로 화살을쏘는 포탑을 생성한다.",
	Wskill : "- ' .... '",
	Ename : " [ E ] -  ....",
	Eexplain : "....",
	Eskill : "- '....'",
	Pname : " ■ LV 5 ■ [ R ] - 빅 데이터",
	Pexplain : "적을 자동으로 추격하며 타격하는 포탑을 설치한다.",
	Pskill : "- '.... '",
break
case spr_level5_hat12:
	Dname : " [ D ] - 8갈래 화살",
	Dexplain : "수많은 화살을 전방으로 발사한다.",
	Dskill : "- ' .... '",
	Qname : " [ Q ] - 사격",
	Qexplain : "먼거리의 적에게 총질한다."
	Qskill : "- ' .... '",
	Wname : " [ W ] - 미사일",
	Wexplain : "막대한 데미지를 주는 미사일을 발사한다.",
	Wskill : "- ' 벽에 튕긴다. '",
	Ename : " [ E ] -  핵력",
	Eexplain : "자신에게 핵력 버프를 부여한다.",
	Eskill : "- '버프 유지중 피격시 폭발하여 적에게 피해를 준다.'\n- ' 다른버프와 중첩가능 '",
	Pname : " ■ LV 5 ■ [ 패시브 ] - 비행",
	Pexplain : "벽을 무시한다.",
	Pskill : "- ' .... '",
break
case spr_level5_hat13:
	Dname : " [ D ] - 자유형 ",
	Dexplain : "전방의 적에게 며르치의 맛을 보게한다.",
	Dskill : "- ' .... '",
	Qname : " [ Q ] - 며루치떼의 형성 ",
	Qexplain : "지정된 스킬을 랜덤하게 시전한다.",
	Qskill : "- ' 지진  D '\n- ' 지진  Q '\n- ' 지진  W / E '",
	Wname : " [ W ] - 액젓 뿌리기 ",
	Wexplain : "적에게 액젓을 뿌린다.",
	Wskill : "- ' 비기절 공격 '",
	Ename : " [ E ] -  날치가 되고싶은 멸치 ",
	Eexplain : "돌을 튕겨서 진동파를 만든다.",
	Eskill : "- ' .... '",
	Pname : " ■ LV 5 ■ [ 패시브 ] - 며르치식 전투 ",
	Pexplain : "크기가 1.2배 증가한다.",
	Pskill : "- ' A스킬이 소세지 D스킬로 강화된다. '",
break
case spr_level5_hat14:
	Dname : " [ D ] - 밀쳐내기 ",
	Dexplain : "적에게 돌진하고 적을 밀쳐낸다.",
	Dskill : "- ' 적이 밀쳐나는 도중 벽에 박히면 추가 데미지를 입는다.'",
	Qname : " [ Q ] - 긴급지원 ",
	Qexplain : "야차 Q + 성녀 Q"
	Qskill : "- ' .... '",
	Wname : " [ W ] - 단죄 ",
	Wexplain : "화산버프 + 베기.",
	Wskill : "- ' .... '",
	Ename : " [ E ] -  성역",
	Eexplain : "자신이 받는 피해를 감소시킨다.",
	Eskill : "- ' 적에게는 힐벤 디버프를 준다. '",
	Pname : " ■ LV 5 ■ [ 패시브 ] - 계승 ",
	Pexplain : "자신이 사망하면 자신의 모자를 이어받을 수있는 검을 소환한다.",
	Pskill : "- ' 검을 먹은 다른 플레이어는 1레벨이 된채 이모자가 된다.'",
break
case spr_level5_hat15:
	Dname : " [ D ] - 날개방패 ",
	Dexplain : "날개 + 검투사 Q",
	Dskill : "- ' .... '",
	Qname : " [ Q ] - 9연속검돌풍 ",
	Qexplain : " 풍신의 날리기 스킬을 사용하며 9바퀴를 돌고 멈춘다. "
	Qskill : "- ' .... '",
	Wname : " [ W ] - 수룡검 ",
	Wexplain : "물고기버프 + 땅의 검술.",
	Wskill : "- ' .... '",
	Ename : " [ E / R ] -  모으기 / 밀기",
	Eexplain : "적을 모으거나 밀쳐낸다",
	Eskill : "- ' .... '",
	Pname : " ■ LV 5 ■ [ 패시브 ] - 기묘한 걸음걸이 ",
	Pexplain : "매초마다 이동속도가 바뀐다.",
	Pskill : "- ' .... '",
break
case spr_level5_hat17:
	Dname : " [ D ] - 정보 부족 카페에 누가 좀 알려줘",
	Dexplain : "....",
	Dskill : "- ' ...'",
	Qname : " [ Q ] - ... ",
	Qexplain : "..."
	Qskill : "- ' .... '",
	Wname : " [ W ] - ... ",
	Wexplain : "...",
	Wskill : "- ' .... '",
	Ename : " [ E ] -  ...",
	Eexplain : "...",
	Eskill : "- ' ...'",
	Pname : " ... ",
	Pexplain : "...",
	Pskill : "- ' ...'",
break
case spr_level5_hat18:
	Dname : " [ D ] - 정보 부족 카페에 누가 좀 알려줘",
	Dexplain : "....",
	Dskill : "- ' ...'",
	Qname : " [ Q ] - ... ",
	Qexplain : "..."
	Qskill : "- ' .... '",
	Wname : " [ W ] - ... ",
	Wexplain : "...",
	Wskill : "- ' .... '",
	Ename : " [ E ] -  ...",
	Eexplain : "...",
	Eskill : "- ' ...'",
	Pname : " ... ",
	Pexplain : "...",
	Pskill : "- ' ...'",
break
*/