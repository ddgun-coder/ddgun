/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49D030CE
/// @DnDArgument : "code" "spin += 4;$(13_10)image_angle = spin;$(13_10) $(13_10)if (cooltime <= 0) {$(13_10)	img_move += 1$(13_10)	cooltime = 5$(13_10)}$(13_10)$(13_10)if (img_move = 4) {$(13_10)	img_move = 0$(13_10)}$(13_10)$(13_10)cooltime --$(13_10) $(13_10)if(image_alpha >= 0) {	$(13_10)   image_alpha -= 0.02$(13_10)   move += 0.0005$(13_10)}"
spin += 4;
image_angle = spin;
 
if (cooltime <= 0) {
	img_move += 1
	cooltime = 5
}

if (img_move = 4) {
	img_move = 0
}

cooltime --
 
if(image_alpha >= 0) {	
   image_alpha -= 0.02
   move += 0.0005
}