testing.chat6 = testing.chat5;
testing.chat5 = testing.chat4;
testing.chat4 = testing.chat3;
testing.chat3 = testing.chat2;
testing.chat2 = testing.chat1;
switch(re) {
	case 0:
		testing.chat1 = global.name +  " ▶  " + "내가 100명의 적에게 둘러 싸여 다굴 당하더라도";//채팅 올라가기 
		chat = global.name +  " ▶  " + "내가 100명의 적에게 둘러 싸여 다굴 당하더라도";
	break;
	case 1:
		testing.chat1 = global.name +  " ▶  " + "끝까지 적의 대가리를 한번 더 치고 죽을 것이며";//채팅 올라가기 
		chat = global.name +  " ▶  " + "끝까지 적의 대가리를 한번 더 치고 죽을 것이며";
	break;
	case 2:
		testing.chat1 = global.name +  " ▶  " + "나의 피가 빨피가 되어";//채팅 올라가기 
		chat = global.name +  " ▶  " + "나의 피가 빨피가 되어";
	break;
	case 3:
		testing.chat1 = global.name +  " ▶  " + "바람처럼 스치는 공격 한번에 사망할 상황이라 하더라도";//채팅 올라가기 
		chat = global.name +  " ▶  " + "바람처럼 스치는 공격 한번에 사망할 상황이라 하더라도";
	break;
	case 4:
		testing.chat1 = global.name +  " ▶  " + "나는 적군에게 나의 등을 보이지 않을 것임을";//채팅 올라가기 
		chat = global.name +  " ▶  " + "나는 적군에게 나의 등을 보이지 않을 것임을";
	break;
	case 5:
		testing.chat1 = global.name +  " ▶  " + "맹세합니다.";//채팅 올라가기 
		chat = global.name +  " ▶  " + "맹세합니다.";
	break;
	case 6:
		testing.chat1 = global.name +  " ▶  " + "세상에 태어나는 생명은 어차피 언젠가는 죽는다.";//채팅 올라가기 
		chat = global.name +  " ▶  " + "세상에 태어나는 생명은 어차피 언젠가는 죽는다.";
	break;
	case 7:
		testing.chat1 = global.name +  " ▶  " + "그래도";//채팅 올라가기 
		chat = global.name +  " ▶  " + "그래도";
	break;
	case 8:
		testing.chat1 = global.name +  " ▶  " + "우리는 살아간다.";//채팅 올라가기 
		chat = global.name +  " ▶  " + "우리는 살아간다.";
	break;
	case 9:
		global.name = "플래시도타 사망";
		testing.chat1 = global.name +  " ▶  " + "우리는 살아간다.";//채팅 올라가기 
		chat = global.name +  " ▶  " + "우리는 살아간다.";
	break
	case 10:
		global.hat = spr_hat1;
		level = 0;
	break;
}
say_time = 160;
just_time = 1000;
hp = 100 - (re * 10);
re++;