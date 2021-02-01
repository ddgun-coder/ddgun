/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15FDB354
/// @DnDArgument : "code" "sturn = 100;$(13_10)hp -= 50;$(13_10)while(true) {$(13_10)	var xxx = irandom(room_width - 100) + 50;$(13_10)	var yyy = irandom(room_height - 100) + 50;$(13_10)	if(place_free(xxx,yyy) and !place_meeting(xxx, yyy, only_first)) {$(13_10)		testing.x = xxx;$(13_10)		testing.y = yyy;$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)testing.chat6 = testing.chat5;$(13_10)testing.chat5 = testing.chat4;$(13_10)testing.chat4 = testing.chat3;$(13_10)testing.chat3 = testing.chat2;$(13_10)testing.chat2 = testing.chat1;$(13_10)testing.chat1 = "넌 못나간다""
sturn = 100;
hp -= 50;
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