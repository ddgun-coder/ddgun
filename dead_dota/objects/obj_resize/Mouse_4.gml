/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27B52A8B
/// @DnDArgument : "code" "var wid = get_integer("원하는 가로 픽셀:",window_get_width());$(13_10)if (wid < 0) {$(13_10)	exit	$(13_10)}$(13_10)var hei = get_integer("원하는 세로 픽셀?",window_get_height());$(13_10)if (hei < 0) {$(13_10)	exit	$(13_10)}$(13_10)window_set_size(wid, hei);"
var wid = get_integer("원하는 가로 픽셀:",window_get_width());
if (wid < 0) {
	exit	
}
var hei = get_integer("원하는 세로 픽셀?",window_get_height());
if (hei < 0) {
	exit	
}
window_set_size(wid, hei);