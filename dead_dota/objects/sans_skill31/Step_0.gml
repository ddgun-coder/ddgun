/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0ABA40FA
/// @DnDArgument : "code" "image_angle = YA;$(13_10)if (global.my_cid_id == cid_id) {$(13_10)	testing.buff_index = spr_wing1;$(13_10)	testing.buff_time = 100;$(13_10)}$(13_10)sturn--;$(13_10)if (hp < 1) {$(13_10)	instance_destroy();$(13_10)}"
image_angle = YA;
if (global.my_cid_id == cid_id) {
	testing.buff_index = spr_wing1;
	testing.buff_time = 100;
}
sturn--;
if (hp < 1) {
	instance_destroy();
}