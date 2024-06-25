/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5006A7CB
/// @DnDArgument : "code" "if (room = room_ghost) {$(13_10)	DMG(70, n_attack_area, 80)$(13_10)}$(13_10)else {$(13_10)	DMG(90, n_attack_area, 80)$(13_10)}"
if (room = room_ghost) {
	DMG(70, n_attack_area, 80)
}
else {
	DMG(90, n_attack_area, 80)
}