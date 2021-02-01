/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18D4E0A2
/// @DnDArgument : "code" "var xx;$(13_10)var yy;$(13_10)$(13_10)while(true) {$(13_10)	xx = irandom(room_width - 100) + 50;$(13_10)	yy = irandom(room_height - 100) + 50;$(13_10)	if(place_free(xx,yy)) {$(13_10)		testing.x = xx;$(13_10)		testing.y = yy;$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)server202_sound(ddr_3_sound);"
var xx;
var yy;

while(true) {
	xx = irandom(room_width - 100) + 50;
	yy = irandom(room_height - 100) + 50;
	if(place_free(xx,yy)) {
		testing.x = xx;
		testing.y = yy;
		break;
	}
}
server202_sound(ddr_3_sound);