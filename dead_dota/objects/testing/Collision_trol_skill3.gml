/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55133E91
/// @DnDArgument : "code" "DMG_no_surn(0.04);$(13_10)if (global.team == other.team or (other.team == 2 and other.cid == global.my_cid)) {$(13_10)	if(a_cooltime <= 0 and a_possible = true) {$(13_10)		normal_play(shep_1_act)$(13_10)	}$(13_10)}"
DMG_no_surn(0.04);
if (global.team == other.team or (other.team == 2 and other.cid == global.my_cid)) {
	if(a_cooltime <= 0 and a_possible = true) {
		normal_play(shep_1_act)
	}
}