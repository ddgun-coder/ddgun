/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31699EF4
/// @DnDArgument : "code" "mine_say_time = 30;$(13_10)var temp = irandom(1);$(13_10)switch(temp) {$(13_10)	case 0:$(13_10)		mine_say = "근접캐 약하다니까";$(13_10)	break;$(13_10)	case 1:$(13_10)		mine_say = "씨발";$(13_10)	break;$(13_10)}$(13_10)hp = 100;$(13_10)live = 1;"
mine_say_time = 30;
var temp = irandom(1);
switch(temp) {
	case 0:
		mine_say = "근접캐 약하다니까";
	break;
	case 1:
		mine_say = "씨발";
	break;
}
hp = 100;
live = 1;