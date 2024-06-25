/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C26189D
/// @DnDArgument : "code" "repeat(30) {$(13_10)	var tempnum = irandom(19) + 1;$(13_10)$(13_10)	var obj = asset_get_index("testing" + string(tempnum));$(13_10)	if (obj.x > 0 and obj.y > 0) {$(13_10)		x = obj.x;$(13_10)		y = obj.y + irandom(35);$(13_10)	}$(13_10)}$(13_10)a_cooltime = 40;$(13_10)invisible = true;$(13_10)invisible_time = 120;"
repeat(30) {
	var tempnum = irandom(19) + 1;

	var obj = asset_get_index("testing" + string(tempnum));
	if (obj.x > 0 and obj.y > 0) {
		x = obj.x;
		y = obj.y + irandom(35);
	}
}
a_cooltime = 40;
invisible = true;
invisible_time = 120;