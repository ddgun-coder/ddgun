/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54B21280
/// @DnDArgument : "code" "image_angle = cid_id.YA;$(13_10)if (cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)if (cid_id.cancle_able == 2) {$(13_10)	image_xscale += 0.4;$(13_10)	image_yscale += 0.4;$(13_10)	image_alpha -= 0.1;$(13_10)	if (alarm[0] > 10) {$(13_10)		alarm[0] = 10;$(13_10)	}$(13_10)}$(13_10)x = cid_id.x;$(13_10)y = cid_id.y;$(13_10)depth = 100;"
image_angle = cid_id.YA;
if (cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (cid_id.cancle_able == 2) {
	image_xscale += 0.4;
	image_yscale += 0.4;
	image_alpha -= 0.1;
	if (alarm[0] > 10) {
		alarm[0] = 10;
	}
}
x = cid_id.x;
y = cid_id.y;
depth = 100;