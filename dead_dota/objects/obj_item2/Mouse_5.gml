/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A686D9E
/// @DnDArgument : "code" "if (global.item[6] != spr_none) {$(13_10)	prt_val_add(0 ,1000);$(13_10)	global.item[6] = spr_none;$(13_10)}"
if (global.item[6] != spr_none) {
	prt_val_add(0 ,1000);
	global.item[6] = spr_none;
}