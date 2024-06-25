effect_index = spr_none;
fishing = false;
var mine = irandom(500);
if (mine < 300) {
	switch(irandom(15)) {
		case 0:
			server51_fish(obj_fish1, random(100) + 50);//일반
		break;
		case 1:
			server51_fish(obj_fish8, random(100) + 50);//
		break;
		case 2:
			server51_fish(obj_fish9, random(100) + 50);//일반
		break;
		case 3:
			server51_fish(obj_fish12, random(10) + 50);
		break;
		case 4:
			server51_fish(obj_fish22, random(10) + 50);
		break;
		case 5:
			server51_fish(obj_fish25, random(10) + 50);
		break;
		case 6:
			server51_fish(obj_fish28, random(150) + 100);
		break;
		case 7:
			server51_fish(obj_fish34, random(50) + 10);
		break;
		case 8:
			server51_fish(obj_fish35, random(50) + 10);
		break;
		case 9:
			server51_fish(obj_fish36, random(50) + 10);
		break;
		case 10:
			server51_fish(obj_fish44, random(50) + 30);
		break;
		case 11:
			server51_fish(obj_fish45, random(50) + 30);
		break;
		case 12:
			server51_fish(obj_fish46, random(50) + 30);
		break;
		case 13:
			server51_fish(obj_fish52, random(50) + 30);
		break;
		case 14:
			server51_fish(obj_fish59, random(50) + 30);
		break;
		case 15:
			server51_fish(obj_fish56, random(50) + 30);
		break;
	}
}
else {
	if (mine < 350) {
		switch(irandom(4)) {
			case 0:
				server51_fish(obj_fish2, random(10) + 50);//쓰레기
			break;
			case 1:
				server51_fish(obj_fish10, random(10) + 50);//쓰레기
			break;
			case 2:
				server51_fish(obj_fish13, random(10) + 50);//쓰레기
			break;
			case 3:
				server51_fish(obj_fish31, random(10) + 50);//쓰레기
			break;
			case 4:
				server51_fish(obj_fish37, random(10) + 50);//쓰레기
			break;
		}
	}
	else {
		if (mine < 400) {
			switch(irandom(6)) {
				case 0:
					server51_fish(obj_fish3, random(10) + 50);// 벌칙
				break;
				case 1:
					server51_fish(obj_fish11, random(10) + 50);// 벌칙
				break;
				/*
				case 2:
					server51_fish(obj_fish17, random(10) + 50);
				break;
				*/
				case 3:
					server51_fish(obj_fish20, random(10) + 50);
				break;
				case 4:
					server51_fish(obj_fish26, random(10) + 50);
				break;
				case 5:
					server51_fish(obj_fish32, random(10) + 50);
				break;
				case 6:
					server51_fish(obj_fish58, random(10) + 50);
				break;
			}
		}
		else {
			if (mine < 475) {
				switch(irandom(13)) {
					case 0:
						server51_fish(obj_fish4, random(150) + 50);//희귀
					break;
					case 1:
						server51_fish(obj_fish7, random(150) + 50);//희귀
					break;
					case 2:
						server51_fish(obj_fish14, random(150) + 50);//희귀
					break;
					case 3:
						server51_fish(obj_fish19, random(150) + 100);
					break;
					case 4:
						server51_fish(obj_fish23, random(150) + 100);
					break;
					case 5:
						server51_fish(obj_fish27, random(150) + 100);
					break;
					case 6:
						server51_fish(obj_fish38, random(150) + 100);
					break;
					case 7:
						server51_fish(obj_fish39, random(150) + 100);
					break;
					case 8:
						server51_fish(obj_fish43, random(15) + 100);
					break;
					case 9:
						server51_fish(obj_fish47, random(15) + 100);
					break;
					case 10:
						server51_fish(obj_fish50, random(15) + 100);
					break;
					case 11:
						server51_fish(obj_fish53, random(15) + 100);
					break;
					case 12:
						server51_fish(obj_fish54, random(15) + 100);
					break;
					case 13:
						server51_fish(obj_fish57, random(15) + 100);
					break;
				}
			}
			else {
				if (mine < 495) {//며루치급
					switch(irandom(8)) {
						case 0:
							server51_fish(obj_fish5, random(150) + 100);
						break;
						case 1:
							server51_fish(obj_fish15, random(150) + 50);
						break;
						case 2:
							server51_fish(obj_fish21, random(150) + 100);
						break;
						case 3:
							server51_fish(obj_fish29, random(150) + 100);
						break;
						case 4:
							server51_fish(obj_fish40, random(150) + 100);
						break;
						case 5:
							server51_fish(obj_fish48, random(150) + 100);
						break;
						case 6:
							server51_fish(obj_fish49, random(150) + 100);
						break;
						case 7:
							server51_fish(obj_fish51, random(150) + 100);
						break;
						case 8:
							server51_fish(obj_fish55, random(150) + 100);
						break;
					}
				}
				else {//전설
					switch(irandom(7)) {
						case 0:
							server51_fish(obj_fish6, random(10) + 50);
						break;
						case 1:
							server51_fish(obj_fish16, random(150) + 100);
						break;
						case 2:
							server51_fish(obj_fish18, random(150) + 100);
						break;
						case 3:
							server51_fish(obj_fish24, random(10) + 50);
						break;
						case 4:
							server51_fish(obj_fish30, random(10) + 50);
						break;
						case 5:
							server51_fish(obj_fish33, random(10) + 100);
						break;
						case 6:
							server51_fish(obj_fish41, random(10) + 100);
						break;
						case 7:
							server51_fish(obj_fish42, random(10) + 100);
						break;
					}
				}
			}
		}
	}
}