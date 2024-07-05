/// @description Insert description here
// You can write your code in this editor
var type = -1;
with (serve) {
	type = case111_type;
}
if (type == 0) {
	draw_self();		
}
else {
	var str = "defualt";
	switch(type) {
		case 0:
			str = "팀원 정보 가져오는 중...";
		break;
		case 1:
			str = "스킨 정보 가져오는 중...";
		break;
		case 2:
			str = "밴 리스트 가져오는중...";
		break;
		case 3:
			str = "마무리...";
		break;
		case 4:
			str = "기존 오브젝트 가져오는중...";
		break;
	}
	draw_text(250, 250, str);
}