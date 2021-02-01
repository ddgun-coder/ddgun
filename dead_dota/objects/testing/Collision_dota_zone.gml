if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {
	if (dota_ball > 0) {
		prt_val_add(Val.ball, -1);
		var what = irandom(30)
		switch(what)
		{
			case 1:
			case 2:
			case 3:
			case 21:
			case 22:
			case 23:
			case 24:
			case 25:
				trying += 1;
				if (trying == 1)
				{
					mine_say = "꽝 ㅋㅋ"
				}
				else
				{
					mine_say = "꽝 ㅋㅋ *" + string(trying) 
				}
				mine_say_time = 100;
			break;
			case 0:
			case 4:
			case 5:
			case 6:
				mine_say = "100경험치"
				mine_say_time = 100;
				aexp += 100;
				trying = 0;
			break;
			case 7:
			case 8:
			case 26:
				mine_say = "300경험치"
				mine_say_time = 100;
				aexp += 300;
				trying = 0;
			break;
			case 9:
				mine_say = "곡괭이 강화 주문서 1개"
				mine_say_time = 100;
				pickaxe_up += 1;
				trying = 0;
			break;
			case 10:
				mine_say = "적당한 마나 회복(75)"
				mine_say_time = 100;
				prt_val_add(Val.mp, 75);
				trying = 0;
			break;
			case 11:
				mine_say = "풍부한 마나 회복(150)"
				mine_say_time = 100;
				prt_val_add(Val.mp, 150);
				trying = 0;
			break;
			case 12:
				mine_say = "기 증가(10)"
				mine_say_time = 100;
				prt_val_add(Val.gi, 10);
				trying = 0;
			break;
			case 13:
				if (irandom(7) == 0) {
					random_level5();
					mine_say = "5차 당첨!"
					mine_say_time = 100;
				}
				else {
					mine_say = "5차 당첨! 아님"
					mine_say_time = 100;
				}
			break;
			case 14:
				switch(fun_try)
				{
					case 0:
					mine_say = "놀라운 사실0: 불은 뜨겁다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 1:
					mine_say = "놀라운 사실1: 샌즈는 강하다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 2:
					mine_say = "놀라운 사실2: 에어컨은 좋은 발명품이다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 3:
					mine_say = "놀라운 사실3: 한국은 아시아에 있다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 4:
					mine_say = "놀라운 사실4: 99플루톤은 플래시도타란 게임을 만들었다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 5:
					mine_say = "놀라운 사실5: 그러던 어느날 99플루톤은 어떤 공지도 하지않고 도중에 빤쓰런했다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 6:
					mine_say = "놀라운 사실6: 우리모두 플래시도타가 그립다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 7:
					mine_say = "놀라운 사실7: 꽝 ㅋㅋ"
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 8:
					mine_say = "놀라운 사실8: 이 게임의 제작자는 어떻게든 플래시도타를 만들려고 했다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 9:
					mine_say = "놀라운 사실9: 그러나 결과는 처참했다. 아무도 이 게임을 하지않는다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 10:
					mine_say = "놀라운 사실10: 그래서 나는 오프라인으로 더 좋은 컨텐츠를 만들고 있다."
					mine_say_time = 100;
					fun_try += 1;
					break;
					case 11:
					mine_say = "놀라운 사실11: 넌 아무도 모르게 열쇠를 먹었다."
					mine_say_time = 100;
					open_key1 = true;
					fun_try += 1;
					break;
					default:
					mine_say = "놀라운 사실" + string(fun_try) +": 더이상 놀라운 사실은 없다." + "\n"
					         + "열쇠로 무언가 해보자"
					mine_say_time = 100;
					fun_try += 1;
					break;
				}
			break;
			case 15:
				mine_say = "많은 기 증가(30)"
				mine_say_time = 100;
				prt_val_add(Val.gi, 30);
			break;
			case 16:
				mine_say = "도타볼한테 돈을 뜯겼다.(500)"
				mine_say_time = 100;
				prt_val_add(0, -500);
			break;
			case 17:
			case 18:
				mine_say = "도타볼한테 돈을 뜯겼다.(1000)"
				mine_say_time = 100;
				prt_val_add(0, -1000);
			break;
			case 19:
			case 20:
			case 27:
				mine_say = "도타볼이 돈을 좀 줬다.(69)"
				mine_say_time = 100;
				prt_val_add(0, 69);
			break;
			case 28:
				mine_say = "도타볼이 돈을 좀 줬다.(6974)"
				mine_say_time = 100;
				prt_val_add(0, 6974);
			break;
			case 29:
				mine_say = "도타볼이 도타볼을 줬다.(2)"
				mine_say_time = 100;
				prt_val_add(Val.ball, 2);
			break;
			case 30:
				mine_say = "도타볼이 대미지를 줬다.(25)"
				mine_say_time = 100;
				hp -= 25;
			break;
		}
	}
}