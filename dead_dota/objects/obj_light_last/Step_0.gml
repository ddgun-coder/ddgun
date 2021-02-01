/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 450D5BDD
/// @DnDArgument : "code" "if (re) {$(13_10)	y -= 0.3;$(13_10)}$(13_10)else {$(13_10)	y += 0.3;	$(13_10)}$(13_10)time--;$(13_10)if (time < 0) {$(13_10)	time = 60;$(13_10)	if (re) {$(13_10)		re = false;$(13_10)	}$(13_10)	else {$(13_10)		re = true;	$(13_10)	}$(13_10)}"
if (re) {
	y -= 0.3;
}
else {
	y += 0.3;	
}
time--;
if (time < 0) {
	time = 60;
	if (re) {
		re = false;
	}
	else {
		re = true;	
	}
}