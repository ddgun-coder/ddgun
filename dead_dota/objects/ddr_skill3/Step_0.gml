/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6087AF17
/// @DnDArgument : "code" "image_xscale = cid_id.big_val;$(13_10)image_yscale = (0.5 + deltay) * cid_id.big_val;$(13_10)image_angle = cid_id.YA;$(13_10)y = cid_id.y ;$(13_10)x = cid_id.x ;$(13_10)if (alarm[0] > 40) {$(13_10)	deltay += 0.01;$(13_10)}$(13_10)else {$(13_10)	deltay -= 0.01;$(13_10)}"
image_xscale = cid_id.big_val;
image_yscale = (0.5 + deltay) * cid_id.big_val;
image_angle = cid_id.YA;
y = cid_id.y ;
x = cid_id.x ;
if (alarm[0] > 40) {
	deltay += 0.01;
}
else {
	deltay -= 0.01;
}