/// @description Insert description here
// You can write your code in this editor
if (main) {
	switch(pease) {
		case 0:
			obj_expl.what = "공격: (기본:A)"
		break;
		case 1:
			obj_expl.what = "대쉬: (기본:S)"
		break;
		case 2:
			obj_expl.what = "1차 스킬: (기본:D)"
		break;
		case 3:
			obj_expl.what = "2차 스킬: (기본:Q)"
		break;
		case 4:
			obj_expl.what = "3차 스킬: (기본:W)"
		break;
		case 5:
			obj_expl.what = "4차 스킬: (기본:E)"
		break;
		case 6:
			obj_expl.what = "4차 스킬: (기본:R)"
		break;
		case 7:
			obj_expl.what = "레이싱 모드: (기본:Caps_lock)"
		break;
		case 8:
			obj_expl.what = "방향 고정 모드: (기본:shift)"
		break;
		case 9:
			obj_expl.what = "상호작용: (기본:F)"
		break;
		case 10:
			obj_expl.what = "위쪽: (기본:위)"
		break;
		case 11:
			obj_expl.what = "아래쪽: (기본:아래)"
		break;
		case 12:
			obj_expl.what = "왼쪽: (기본:왼쪽)"
		break;
		case 13:
			obj_expl.what = "오른쪽: (기본:오른쪽)"
		break;
		default:
			obj_expl.what = "";
		break;
	}
}

if (collision_point(mouse_x, mouse_y, id, true, false)) {
	image_blend = c_gray;
}
else {
	image_blend = c_white;
}
