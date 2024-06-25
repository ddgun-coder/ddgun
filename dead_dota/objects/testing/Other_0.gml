sturn = 100;
hp -= 30;
while(true) {
	var xxx = irandom(room_width - 100) + 50;
	var yyy = irandom(room_height - 100) + 50;
	if(place_free(xxx,yyy) and !place_meeting(xxx, yyy, only_first)) {
		testing.x = xxx;
		testing.y = yyy;
		break;
	}
}
testing.chat6 = testing.chat5;
testing.chat5 = testing.chat4;
testing.chat4 = testing.chat3;
testing.chat3 = testing.chat2;
testing.chat2 = testing.chat1;
testing.chat1 = "넌 못나간다"