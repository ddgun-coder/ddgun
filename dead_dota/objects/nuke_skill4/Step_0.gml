/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54B21280
/// @DnDArgument : "code" "image_angle = cid_id.YA;$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;$(13_10)x = cid_id.x;$(13_10)y = cid_id.y;$(13_10)if instance_exists(nuke_skill41) {$(13_10)	if (nuke_skill41.cid_id == cid_id) {$(13_10)		image_index = 3;$(13_10)		image_speed = 1;$(13_10)	}$(13_10)}$(13_10)if instance_exists(nuke_skill42) {$(13_10)	if (nuke_skill42.cid_id == cid_id) {$(13_10)		image_index = 1;$(13_10)		image_speed = 1;$(13_10)	}$(13_10)}$(13_10)if ((image_index > 2 and image_index < 3) or image_index > 6.5) {$(13_10)	image_speed = 0;$(13_10)	image_index = 0;$(13_10)}$(13_10)depth = 100;"
image_angle = cid_id.YA;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
x = cid_id.x;
y = cid_id.y;
if instance_exists(nuke_skill41) {
	if (nuke_skill41.cid_id == cid_id) {
		image_index = 3;
		image_speed = 1;
	}
}
if instance_exists(nuke_skill42) {
	if (nuke_skill42.cid_id == cid_id) {
		image_index = 1;
		image_speed = 1;
	}
}
if ((image_index > 2 and image_index < 3) or image_index > 6.5) {
	image_speed = 0;
	image_index = 0;
}
depth = 100;