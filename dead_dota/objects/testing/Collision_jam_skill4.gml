/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5006A7CB
/// @DnDArgument : "code" "if (other.cid_id.cancle_able == 2) {$(13_10)	DMG(18, n_attack_area, 60)$(13_10)}$(13_10)else {$(13_10)	DMG(10, n_attack_area, 40)$(13_10)}"
if (other.cid_id.cancle_able == 2) {
	DMG(18, n_attack_area, 60)
}
else {
	DMG(10, n_attack_area, 40)
}