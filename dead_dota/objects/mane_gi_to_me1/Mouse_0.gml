/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 496A4DFF
/// @DnDArgument : "code" "if(ok == true) {$(13_10)	ok = false;$(13_10)	with(testing) {$(13_10)		prt_val_add(Val.gi, 200);$(13_10)		prt_val_add(Val.mp, 20);$(13_10)	}$(13_10)}"
if(ok == true) {
	ok = false;
	with(testing) {
		prt_val_add(Val.gi, 200);
		prt_val_add(Val.mp, 20);
	}
}