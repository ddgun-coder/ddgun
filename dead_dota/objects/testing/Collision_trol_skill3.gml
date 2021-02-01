/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55133E91
/// @DnDArgument : "code" "DMG_no_surn(0.03);$(13_10)if place_free(x + lengthdir_x(6, other.YA - 90), y + lengthdir_y(6, other.YA - 90)) {$(13_10)	x += lengthdir_x(4, other.YA - 90);$(13_10)	y += lengthdir_y(4, other.YA - 90);$(13_10)}"
DMG_no_surn(0.03);
if place_free(x + lengthdir_x(6, other.YA - 90), y + lengthdir_y(6, other.YA - 90)) {
	x += lengthdir_x(4, other.YA - 90);
	y += lengthdir_y(4, other.YA - 90);
}