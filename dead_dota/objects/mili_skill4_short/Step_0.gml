/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79FCAB81
/// @DnDArgument : "code" "x = cid_id.x$(13_10)y = cid_id.y$(13_10)image_angle = cid_id.YA;$(13_10)image_xscale = cid_id.big_val * 2;$(13_10)image_yscale = cid_id.big_val * 2;$(13_10)if (cid_id == global.my_cid_id) {$(13_10)	solid = false;	$(13_10)}$(13_10)else {$(13_10)	if (time % 2 == 0) {$(13_10)	solid = false;$(13_10)	}$(13_10)	else {$(13_10)		solid = true;$(13_10)	}$(13_10)	time++;	$(13_10)}$(13_10)if (cid_id.hp < 0) {$(13_10)	instance_destroy()	$(13_10)}"
x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
if (cid_id == global.my_cid_id) {
	solid = false;	
}
else {
	if (time % 2 == 0) {
	solid = false;
	}
	else {
		solid = true;
	}
	time++;	
}
if (cid_id.hp < 0) {
	instance_destroy()	
}