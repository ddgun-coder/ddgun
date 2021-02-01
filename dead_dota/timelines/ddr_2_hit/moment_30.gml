/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4697D22B
/// @DnDArgument : "code" "var xx;$(13_10)var yy;$(13_10)$(13_10)while(true) {$(13_10)	xx = irandom(room_width - 100);$(13_10)	yy = irandom(room_height - 100);$(13_10)	if(place_free(xx,yy)) {$(13_10)		testing.x = xx;$(13_10)		testing.y = yy;$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)sturn = 1;$(13_10)shild = false;"
var xx;
var yy;

while(true) {
	xx = irandom(room_width - 100);
	yy = irandom(room_height - 100);
	if(place_free(xx,yy)) {
		testing.x = xx;
		testing.y = yy;
		break;
	}
}
sturn = 1;
shild = false;