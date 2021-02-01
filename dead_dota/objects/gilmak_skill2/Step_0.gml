/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6087AF17
/// @DnDArgument : "code" "image_xscale = cid_id.big_val * 3;$(13_10)image_yscale = cid_id.big_val * 3;$(13_10)image_angle = cid_id.YA;$(13_10)y = cid_id.y + lengthdir_y(250 * cid_id.big_val, time);$(13_10)x = cid_id.x + lengthdir_x(250 * cid_id.big_val, time);$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)if (time % 2 == 0) {$(13_10)	solid = false;$(13_10)}$(13_10)else {$(13_10)	solid = true;$(13_10)}$(13_10)time += 70;"
image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
image_angle = cid_id.YA;
y = cid_id.y + lengthdir_y(250 * cid_id.big_val, time);
x = cid_id.x + lengthdir_x(250 * cid_id.big_val, time);
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (time % 2 == 0) {
	solid = false;
}
else {
	solid = true;
}
time += 70;