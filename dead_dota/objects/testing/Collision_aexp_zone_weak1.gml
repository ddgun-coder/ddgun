/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 131AEFCD
/// @DnDArgument : "code" "if (global.team == 1) {$(13_10)	aexp += 0.2;$(13_10)	buff_index = spr_wing1;$(13_10)	buff_time = 40;$(13_10)	if (a_cooltime > 0 or a_possible = false) {$(13_10)		sturn = 10;$(13_10)		arm_type = "ouch";$(13_10)	}$(13_10)	hp += 1;$(13_10)}$(13_10)else {$(13_10)	testing.x = 988 + irandom_range(-50, 50);$(13_10)	testing.y = 2147 + irandom_range(-50, 50);$(13_10)}"
if (global.team == 1) {
	aexp += 0.2;
	buff_index = spr_wing1;
	buff_time = 40;
	if (a_cooltime > 0 or a_possible = false) {
		sturn = 10;
		arm_type = "ouch";
	}
	hp += 1;
}
else {
	testing.x = 988 + irandom_range(-50, 50);
	testing.y = 2147 + irandom_range(-50, 50);
}