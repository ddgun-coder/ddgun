/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FC8FD55
/// @DnDArgument : "code" "switch(irandom(2)) {$(13_10)	case 0:$(13_10)		var ran = irandom(1000) + 1000;$(13_10)		prt_val_add(0, ran);$(13_10)		testing.chat6 = testing.chat5;$(13_10)		testing.chat5 = testing.chat4;$(13_10)		testing.chat4 = testing.chat3;$(13_10)		testing.chat3 = testing.chat2;$(13_10)		testing.chat2 = testing.chat1;$(13_10)		testing.chat1 = "황날이다!!!+ " + string(ran) + "Gold";$(13_10)	break;$(13_10)	case 1:$(13_10)		var ran = irandom(100) + 50;$(13_10)		aexp += ran;$(13_10)		testing.chat6 = testing.chat5;$(13_10)		testing.chat5 = testing.chat4;$(13_10)		testing.chat4 = testing.chat3;$(13_10)		testing.chat3 = testing.chat2;$(13_10)		testing.chat2 = testing.chat1;$(13_10)		testing.chat1 = "황날이다!!!+ " + string(ran) + "경험치";$(13_10)	break;$(13_10)	case 2:$(13_10)		var ran = irandom(10) + 30;$(13_10)		prt_val_add(Val.mp, ran);$(13_10)		testing.chat6 = testing.chat5;$(13_10)		testing.chat5 = testing.chat4;$(13_10)		testing.chat4 = testing.chat3;$(13_10)		testing.chat3 = testing.chat2;$(13_10)		testing.chat2 = testing.chat1;$(13_10)		testing.chat1 = "황날이다!!!+ " + string(ran) + "마나";$(13_10)	break;$(13_10)	case 3:$(13_10)		var ran = irandom(10) + 10;$(13_10)		prt_val_add(Val.gi, ran);$(13_10)		testing.chat6 = testing.chat5;$(13_10)		testing.chat5 = testing.chat4;$(13_10)		testing.chat4 = testing.chat3;$(13_10)		testing.chat3 = testing.chat2;$(13_10)		testing.chat2 = testing.chat1;$(13_10)		testing.chat1 = "황날이다!!!+ " + string(ran) + "기";$(13_10)	break;$(13_10)}$(13_10)instance_destroy(other.id);"
switch(irandom(2)) {
	case 0:
		var ran = irandom(1000) + 1000;
		prt_val_add(0, ran);
		testing.chat6 = testing.chat5;
		testing.chat5 = testing.chat4;
		testing.chat4 = testing.chat3;
		testing.chat3 = testing.chat2;
		testing.chat2 = testing.chat1;
		testing.chat1 = "황날이다!!!+ " + string(ran) + "Gold";
	break;
	case 1:
		var ran = irandom(100) + 50;
		aexp += ran;
		testing.chat6 = testing.chat5;
		testing.chat5 = testing.chat4;
		testing.chat4 = testing.chat3;
		testing.chat3 = testing.chat2;
		testing.chat2 = testing.chat1;
		testing.chat1 = "황날이다!!!+ " + string(ran) + "경험치";
	break;
	case 2:
		var ran = irandom(10) + 30;
		prt_val_add(Val.mp, ran);
		testing.chat6 = testing.chat5;
		testing.chat5 = testing.chat4;
		testing.chat4 = testing.chat3;
		testing.chat3 = testing.chat2;
		testing.chat2 = testing.chat1;
		testing.chat1 = "황날이다!!!+ " + string(ran) + "마나";
	break;
	case 3:
		var ran = irandom(10) + 10;
		prt_val_add(Val.gi, ran);
		testing.chat6 = testing.chat5;
		testing.chat5 = testing.chat4;
		testing.chat4 = testing.chat3;
		testing.chat3 = testing.chat2;
		testing.chat2 = testing.chat1;
		testing.chat1 = "황날이다!!!+ " + string(ran) + "기";
	break;
}
instance_destroy(other.id);