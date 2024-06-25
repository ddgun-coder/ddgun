/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C01389B
/// @DnDArgument : "code" "skill_create(400);$(13_10)alarm[1] = 1;$(13_10)if (cid_id == global.my_cid_id) {$(13_10)	 image_alpha = 0.4;$(13_10)}$(13_10)else {$(13_10)	 image_alpha = 1;$(13_10)}"
skill_create(400);
alarm[1] = 1;
if (cid_id == global.my_cid_id) {
	 image_alpha = 0.4;
}
else {
	 image_alpha = 1;
}