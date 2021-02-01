/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26B62EF3
/// @DnDArgument : "code" "x = cid_id.x$(13_10)y = cid_id.y -800 + deltay$(13_10)image_angle = 0;$(13_10)image_xscale = 3;$(13_10)image_yscale = 3;$(13_10)if (deltay < 800) {$(13_10)	deltay += 40;$(13_10)}"
x = cid_id.x
y = cid_id.y -800 + deltay
image_angle = 0;
image_xscale = 3;
image_yscale = 3;
if (deltay < 800) {
	deltay += 40;
}