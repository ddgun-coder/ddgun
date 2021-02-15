image_speed = 0;
for(var j = 0; j < jj; j++) {
	for (var i = 0; i < 9; i++) {
		var num = j * 9 + i
		item[num] = { 
			price : 6000,
			max_time : 5000,
			cancle : false,
			what : 2,
			expl : ""
		}
		switch (num) {
			case 0:
				item[num].what = 3
				item[num].expl = "가만히 공부를해서 경험치를 얻는다. \n 맞으면 풀리니 조심하자."
			break;
			case 1:
				item[num].price = 5000;
				item[num].max_time = 5000;
				item[num].what = 1;
				item[num].expl = "체력을 회복한다. 이동속도가 느려진다. \n 맞으면 풀리니 조심하자.";
			break;
			case 2:
				item[num].price = 5000;
				item[num].max_time = 5000;
				item[num].what = 1;
				item[num].expl = "마나를 회복한다. 이동속도가 느려진다. \n 맞으면 풀리니 조심하자.";
			break;
			case 3:
				item[num].price = 1500;
				item[num].max_time = 400;
				item[num].what = 3;
				item[num].expl = "멀리서 무언가 볼수있다. 이동속도가 느려진다. \n 맞으면 풀리니 조심하자.";
			break;
			case 4:
				item[num].price = 2000;
				item[num].max_time = 4000;
				item[num].expl = "장풍을 쏴서 공격한다. 대미지:40";
			break;
			case 5://BIG_GUY
				item[num].price = 5500;
				item[num].max_time = 4000;
				item[num].what = 3;
				item[num].expl = "10초동안 몸집이 커진다. 몸집이 커지면 스킬도 커진다.\n 맞으면 풀리니 조심하자.";
			break;
			case 6:
				item[num].price = 2500;
				item[num].max_time = 400;
				item[num].what = 3;
				item[num].expl = "무작위 1차스킬을 사용한다.";
			break;
			case 7:
				item[num].price = 3500;
				item[num].max_time = 800;
				item[num].what = 3;
				item[num].expl = "무작위 2차스킬을 사용한다.";
			break;
			case 8:
				item[num].price = 4500;
				item[num].max_time = 4000;
				item[num].what = 3;
				item[num].expl = "무작위 3차스킬을 사용한다.";
			break;
			case 9:
				item[num].price = 5500;
				item[num].max_time = 2000;
				item[num].expl = "얼음을 쏴서 공격한다. 대미지:20 \n 맞은적은 느려진다.";
			break;
			case 10://P_1
				item[num].price = 2500;
				item[num].max_time = 2000;
				item[num].expl = "스킬사용후 10초간 적에게 안보인다. 대미지:15 \n 그러나 맞거나 공격하면 잠시 보인다.";
			break;
			case 11:
				item[num].price = 2500;
				item[num].max_time = 3000;
				item[num].what = 1;
				item[num].expl = "방패를 들어서 1번 방어를한다. \n 성공하면 경험치와 체력을 얻는다.";
			break;
			case 12:
				item[num].price = 5500;
				item[num].max_time = 6000;
				item[num].expl = "긴 사거리로 강한공격을 한다. \n 3번의 차징이 필요하며 a키로 날리면 된다.";
			break;
			case 13:
				item[num].price = 7000;
				item[num].max_time = 7000;
				item[num].expl = "더 긴 사거리로 더 강한공격을 한다. \n 3번의 차징이 필요하며 a키로 날리면 된다.";
			break;
			case 14:
				item[num].price = 5000;
				item[num].max_time = 5000;
				item[num].what = 1;
				item[num].expl = "15초 동안 사과나무로 회복한다. \n 사용중에 스킬사용이 가능하다.";
			break;
			case 15://JUMP
				item[num].price = 2000;
				item[num].max_time = 1000;
				item[num].expl = "점프를 사용하여 공격한다. \n 중간에 있는 벽을 넘을수도 있다.";
			break;
			case 16:
				item[num].price = 3000;
				item[num].max_time = 1200;
				item[num].expl = "빠르게 순간이동 하여 적을\n 공격한다 (대미지 12)";
			break;
			case 17:
				item[num].price = 3000;
				item[num].max_time = 3000;
				item[num].what = 1;
				item[num].expl = "마나를 30회복하고 은신한 적을 보여준다.\n 단 펭귄모는 보이지않는다.";
			break;
			case 18://ik1
				item[num].price = 2500;
				item[num].max_time = 3000;
				item[num].expl = "가까운 거리로 적에게 초당20피해를 준다.\n 기절하고있는 적에게도 가능하다.";
			break;
			case 19:
				item[num].price = 3000;
				item[num].max_time = 2400;
				item[num].expl = "가만히 숨어있다가 낫질로 공격한다.(대미지:70)\n 사용후 3초후 낫질이 가능하다.";
			break;
			case 20://GUN1
				item[num].price = 2500;
				item[num].max_time = 1200;
				item[num].expl = "살짝 먼 거리로 공격한다.(대미지:10)\n 기절시간이 짧다.";
			break;
			case 21:
				item[num].price = 4000;
				item[num].max_time = 400;
				item[num].what = 1;
				item[num].expl = "적은 범위로 아군을 치유한다.(초당 3.2)\n 맞으면 풀린다.";
			break;
			case 22:
				item[num].price = 4000;
				item[num].max_time = 40 * 125
				item[num].expl = "긴 레이저도 공격한다.(대미지:15)\n 기절시간이 짧다.";
			break;
			case 23:
				item[num].price = 3000;
				item[num].max_time = 3000;
				item[num].what = 1;
				item[num].expl = "아군에게 물버프를 걸어준다.\n 물버프는 스테미너가 빨리차고 체력이 회복된다.";
			break;
			case 24:
				item[num].price = 6000;
				item[num].max_time = 5000;//cry
				item[num].what = 1;
				item[num].expl = "기절시간 동안 체력회복을 한다.(초당 60)";
			break;
			case 25://TELE1
				item[num].price = 2000;
				item[num].max_time = 2000;
				item[num].what = 3;
				item[num].expl = "자신을 기준으로 작은원크기로 공격한다.(대미지:30)\n 스킬 사용후 무작위 위치로 간다.";
			break;
			case 26:
				item[num].price = 2000;
				item[num].max_time = 1000;
				item[num].expl = "살짝 먼 거리로 공격한다.(대미지:10)\n 맞으면 일정시간동안 무작위로 움직인다.";
			break;
			case 27:
				item[num].price = 8000;
				item[num].max_time = 2000;
				item[num].expl = "자신을 기준으로 중간원크기로 공격한다.(대미지:20)\n 맞으면 일정시간동안 무작위로 움직인다.";
			break;
			case 28:
				item[num].price = 4000;
				item[num].max_time = 200;
				item[num].expl = "평타(a)의 공격을 망치로 바꾼다.(대미지:15)\n 맞으면 주먹으로 돌아간다.";
			break;
			case 29:
				item[num].price = 3000;
				item[num].max_time = 600;
				item[num].expl = "검기를 날려 공격한다.(대미지:14)\n 사용후 2초간 은신을 얻는다.";
			break;
			case 30://사과1
				item[num].price = 2000;
				item[num].max_time = 1600;
				item[num].expl = "빨때로 적의 채력과 경험치 마나를 먹는다.(초당:12)\n 기절하고있는 적에게도 가능하다.";
			break;
			case 31:
				item[num].price = 4000;
				item[num].max_time = 2000;
				item[num].expl = "자신을 기준으로 중간원크기로 공격한다.(대미지:10)\n 기절시간이 2.5초로 길다.";
			break;
			case 32:
				item[num].price = 15000;
				item[num].max_time = 6000;
				item[num].expl = "선풍기를 만들어 긴거리로 공격한다.(초당:20)\n 선풍기 범위에 있으면 느려진다.";
			break;
			case 33:
				item[num].price = 4000;
				item[num].max_time = 1000;
				item[num].expl = "부채를 들어서 중거리 공격을 한다.(초당:24)\n 부채 범위에 있으면 느려지며 부채에 맞으면 대미지10을 입는다.";
			break;
			case 34:
				item[num].price = 44444;
				item[num].max_time = 4400;
				item[num].cancle = true;
				item[num].what = 3;
				item[num].expl = "사용시 아군의 채력이 회복되며 끝나면 맵을 바꾼다.\n 1회용이며 사용시 다른 모든 아이템의 쿨타임이 초기화된다.";
			break;
			case 35:
				item[num].price = 2500;
				item[num].max_time = 1200;
				item[num].expl = "앞 4방향으로 화살을 3번 쏜다.(대미지:15)";
			break;
			case 36:
				item[num].price = 2500;
				item[num].max_time = 3500;
				item[num].expl = "짧은 범위 근거리 공격이다.(대미지:36)";
			break;
			case 37:
				item[num].price = 5000;
				item[num].max_time = 2500;
				item[num].expl = "육각형의 꼭짓점 위치로 총을쏩니다.(대미지:40)";
			break;
			case 38:
				item[num].price = 2500;
				item[num].max_time = 1000;
				item[num].what = 3;
				item[num].expl = "삼각형의 꼭짓점 위치로 거미줄을 만듭니다.\n거미줄에 적이 가치면 경험치를 얻습니다.";
			break;
			case 39:
				item[num].price = 2500;
				item[num].max_time = 3500;
				item[num].what = 3;
				item[num].expl = "뒤로 돌아서 순가이동후 검기를 날립니다.(대미지:14).\n사용시 2초간 은신을 얻습니다.";
			break;
			case 40:
				item[num].price = 4000;
				item[num].max_time = 40 * 75;
				item[num].expl = "검을 뽑아서 근거리 공격을 합니다.(대미지:25).\n 맞으면 풀립니다.";
			break;
			case 41:
				item[num].price = 4000;
				item[num].max_time = 4000;
				item[num].what = 1;
				item[num].expl = "짧은 거리로 힐을합니다.(자신:초당 28, 같은팀:초당 60).\n 맞으면 풀립니다.";
			break;
			case 42:
				item[num].price = 1500;
				item[num].max_time = 2400;
				item[num].expl = "자신이 보고있는 방향으로 빠르게 돌진합니다.(대미지:30)\n 맞으면 풀립니다.";
			break;
			case 43:
				item[num].price = 5500;
				item[num].max_time = 360;
				item[num].expl = "평타(a)의 공격을 물마법으로 바꾼다.(대미지:10)\n 맞으면 주먹으로 돌아간다.";
			break;
			case 44:
				item[num].price = 1500;
				item[num].max_time = 1000;
				item[num].expl = "가까운 적에게 대미지르 준다.(10)\n 맞으면 버프가 풀린다.";
			break;
			case 63:
				item[num].price = 3000;
				item[num].max_time = 4000;
				item[num].what = 3;
				item[num].expl = "사용시 적의 버프/ 디버프를 없에고 공격합니다.(대미지:16)";
			break;
			case 45:
				item[num].price = 3600;
				item[num].max_time = 3000;
				item[num].what = 1;
				item[num].expl = "우리팀에게 은신버프를 줍니다.";
			break;
			case 46:
				item[num].price = 3600;
				item[num].max_time = 5000;
				item[num].what = 3;
				item[num].expl = "벽 위로 자유롭게 날아다닙니다.(대미지:15)";
			break;
			case 47:
				item[num].price = 33333;
				item[num].max_time = 0;
				item[num].what = 3;
				item[num].expl = "자신의 얼굴을 바꿉니다.(효과 없음)";
			break;
			case 48:
				item[num].price = 4300;
				item[num].max_time = 40 * 100;
				item[num].expl = "자신을 중심으로 중간원크기의 가시벽을 만듭니다. (대미지:14)";
			break;
			case 49:
				item[num].price = 6600;
				item[num].max_time = 40 * 90;
				item[num].what = 3;
				item[num].expl = "기절한 아군을 바로깨우고 체력을 10 회복합니다.\n기절시간만큼 경험치도 얻습니다.";
			break;
			case 50:
				item[num].price = 4000;
				item[num].max_time = 40 * 50;
				item[num].expl = "일직선으로 빠른 창을 던집니다.(대미지:25)";
			break;
			case 51:
				item[num].price = 2000;
				item[num].max_time = 40 * 50;
				item[num].expl = "근접공격을 2.5초간 사용합니다.(대미지:10)\n사용시 이동속도가 빨라집니다. 맞으면 풀립니다.";
			break;
			case 52:
				item[num].price = 2500;
				item[num].max_time = 40 * 60;
				item[num].expl = "사용시 오토바이를 사용합니다.(대미지:15)\n캡스락으로 움직이면 더 빠르게 움직입니다.";
			break;
			case 53:
				item[num].price = 9500;
				item[num].max_time = 15000;
				item[num].what = 1;
				item[num].expl = "사용시 아군에게 날개버프를 걸어줍니자.\n 날개버프가 있으면 무적입니다.";
			break;
			case 54:
				item[num].price = 1500;
				item[num].max_time = 40 * 30;
				item[num].expl = "사용시 앞으로 이동후 작은 범위 공격을 합니다.(대미지:25)";
			break;
			case 55:
				item[num].price = 1500;
				item[num].max_time = 40 * 25;
				item[num].what = 1;
				item[num].expl = "사용시 작은 범위로 길게 회복합니다.(초당 12)";
			break;
			case 56:
				item[num].price = 4000;
				item[num].max_time = 3500;
				item[num].expl = "넓은 범위로 적을 가둡니다(대미지:40)";
			break;
			case 57:
				item[num].price = 2000;
				item[num].max_time = 40 * 35;
				item[num].expl = "양옆에 대미지를 줍니다. 잠시동안 스테미나가 증가합니다.(대미지:10)";
			break;
			case 58:
				item[num].price = 2000;
				item[num].max_time = 40 * 40;
				item[num].expl = "적에게 독 디버프를 준다 날개버프를 뚫을수 있다";
			break;
			case 59:
				item[num].price = 2000;
				item[num].max_time = 40 * 30;
				item[num].expl = "수리검을 앞으로 4개 던진다. \n거리를 잘맞추면 2번 맞는다.(대미지:15)";
			break;
			case 60:
				item[num].price = 2000;
				item[num].max_time = 40 * 50;
				item[num].expl = "돌덩이를 던져서 원거리로 때린다(대미지:20)";
			break;
			case 61:
				item[num].price = 2000;
				item[num].max_time = 40 * 30;
				item[num].expl = "공기(사도 이득 없음)";
			break;
			case 62:
				item[num].price = 2000;
				item[num].max_time = 40 * 90;
				item[num].expl = "근거리로 대미지를 주며\n 맞은 적은 무작위 위치로 간다(대미지:25)";
			break;
			case 64:
				item[num].price = 2000;
				item[num].max_time = 40 * 300;
				item[num].expl = "";
			break;
			case 65:
				item[num].price = 2000;
				item[num].max_time = 40 * 30;
				item[num].expl = "돌아가는 발판을 설치한다.(대미지:2)";
			break;
			case 66:
				item[num].price = 2000;
				item[num].max_time = 40 * 150;
				item[num].expl = "";
			break;
			case 67:
				item[num].price = 2000;
				item[num].max_time = 40 * 100;
				item[num].expl = "";
			break;
			case 68:
				item[num].price = 2000;
				item[num].max_time = 40 * 22;
				item[num].expl = "";
			break;
			case 69:
				item[num].price = 2000;
				item[num].max_time = 40 * 125;
				item[num].expl = "";
			break;
			case 70:
				item[num].price = 2000;
				item[num].max_time = 40 * 85;
				item[num].expl = "";
			break;
			case 71:
				item[num].price = 2000;
				item[num].max_time = 40 * 69;
				item[num].expl = "";
			break;
		}
	}
}